import { useState, useEffect } from 'react';
import $ from 'jquery';

const Reserva = () => {
    const [tarjetas, setTarjetas] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    const [seleccionadas, setSeleccionadas] = useState([]);
    const token = localStorage.getItem('token');
    const [alertaComentario, setAlertaComentario] = useState(false);
    const [puntuacion, setPuntuacion] = useState(0);
    const [comentario, setComentario] = useState('');
    const [tour, setTour] = useState([]);
    const [message, setMessage] = useState('');

    const cerrarAlerta = () => {
        setAlertaComentario(false);
        setMessage('');
    }

    const abrirAlerta = (item) => {
        setAlertaComentario(true);
        setTour(item);
        console.log(item);
    }
    // Manejo de las estrellas
    const handlePuntuacionClick = (value) => {
        setPuntuacion(value);
        $(".star").each(function () {
            $(this).text($(this).data("value") <= value ? "★" : "☆");
        });
    };

    const enviarComentario = async () => {
        if (puntuacion === 0) {
            setMessage("Por favor, selecciona una puntuación.");
            return;
        }

        try {
            const response = await $.ajax({
                url: `${import.meta.env.VITE_API_URL}/calificaciones`,
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${token}`,
                },
                data: JSON.stringify({
                    id_tour_actividad: tour.id_tour_actividad,
                    puntuacion: puntuacion,
                    comentario: comentario,
                }),
            });

            if (response) {
                setMessage("¡Comentario enviado exitosamente!");
                setTimeout(() => {
                    cerrarAlerta(); // Cierra el modal después de 2 segundos
                }, 2000);
            }
        } catch (error) {
            setMessage("Hubo un problema al enviar el comentario");
            console.error('Error al enviar comentario:', error);
        }
    };

    useEffect(() => {
        verReservas();
    }, []);

    const verReservas = () => {
        setLoading(true);
        $.ajax({
            url: `${import.meta.env.VITE_API_URL}/reservas`,
            method: 'GET',
            contentType: "application/json",
            dataType: 'json',
            headers: {
                Authorization: `Bearer ${token}`
            },
            success: (response) => {
                console.log(response);
                setTarjetas(response);
                setLoading(false);
            },
            error: (jqXHR, textStatus, errorThrown) => {
                setError(`Error: ${textStatus} - ${errorThrown}`);
                setLoading(false);
            }
        });
    }

    const cancelarReserva = (id) => {
        setLoading(true);
        $.ajax({
            url: `${import.meta.env.VITE_API_URL}/reservas/${id}/cancelar`,
            method: 'POST',
            contentType: "application/json",
            dataType: 'json',
            headers: {
                Authorization: `Bearer ${token}`
            },
            success: (response) => {
                console.log(response);
                setLoading(false);
                verReservas();
            },
            error: (jqXHR, textStatus, errorThrown) => {
                setError(`Error: ${textStatus} - ${errorThrown}`);
                setLoading(false);
            }
        });
    }

    const reactivarReserva = (id) => {
        $.ajax({
            url: `${import.meta.env.VITE_API_URL}/reservas/${id}/reactivar`,
            method: 'POST',
            contentType: "application/json",
            dataType: 'json',
            headers: {
                Authorization: `Bearer ${token}`
            },
            success: (response) => {
                console.log(response);
                verReservas();
            },
            error: (jqXHR, textStatus, errorThrown) => {
                setError(`Error: ${textStatus} - ${errorThrown}`);
                setLoading(false);
            }
        });
    }

    const toggleSeleccion = (id) => {
        setSeleccionadas((prevSeleccionadas) =>
            prevSeleccionadas.includes(id)
                ? prevSeleccionadas.filter((reservaId) => reservaId !== id)
                : [...prevSeleccionadas, id]
        );
    };

    // Función para calcular el precio total de las reservas seleccionadas
    const calcularTotal = () => {
        return seleccionadas.reduce((total, id) => {
            const reserva = tarjetas.find((r) => r.id === id);
            return reserva ? total + parseFloat(reserva.tour_actividad.precio_total) : total;
        }, 0);
    };

    if (loading) return (
        <div className="flex justify-center items-center h-screen">
            <div className="animate-spin rounded-full h-32 w-32 border-t-2 border-b-2 border-red-700"></div>
        </div>
    );

    if (error) return (
        <div className="flex flex-col items-center justify-center h-screen">
            <div className="text-red-600 text-xl mb-4">
                <svg xmlns="http://www.w3.org/2000/svg" className="h-16 w-16 mb-2 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                </svg>
                <p className="text-center">{error}</p>
            </div>
            <button
                onClick={() => window.location.reload()}
                className="bg-red-700 text-white px-6 py-2 rounded-full hover:bg-red-800 transition-all duration-300 shadow-lg"
            >
                Intentar de Nuevo
            </button>
        </div>
    );

    return (
        <>
            {alertaComentario && (
                <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60 backdrop-blur-sm p-4">
                    <div className="bg-white p-6 rounded-lg shadow-lg w-96">
                        <h2 className="text-2xl font-bold mb-4">¡Gracias por tu reserva!</h2>
                        <p className="mb-6 text-gray-600">Por favor, califica tu experiencia con el tour y deja tu comentario.</p>

                        <p className="mb-6 text-gray-600">{tour.display}</p>
                        {message && (
                            <div className={`p-3 mb-4 rounded ${message === '¡Comentario enviado exitosamente!' ? 'bg-green-500' : 'bg-red-500'} text-white`}>
                                {message}
                            </div>
                        )}
                        {/* Puntuación con estrellas */}
                        <div className="mb-4">
                            <label className="block text-gray-700">Puntuación</label>
                            <div className="flex" id="starRating">
                                {[1, 2, 3, 4, 5].map((starValue) => (
                                    <span
                                        key={starValue}
                                        className="star text-5xl cursor-pointer text-yellow-500"
                                        data-value={starValue}
                                        onClick={() => handlePuntuacionClick(starValue)}
                                    >
                                        ☆
                                    </span>
                                ))}
                            </div>
                        </div>

                        {/* Comentario */}
                        <div className="mb-4">
                            <label htmlFor="comentario" className="block text-gray-700">Comentario</label>
                            <textarea
                                id="comentario"
                                className="w-full p-2 border border-gray-300 rounded-lg"
                                rows="4"
                                value={comentario}
                                onChange={(e) => setComentario(e.target.value)}
                            />
                        </div>

                        {/* Botones */}
                        <div className="flex justify-end space-x-4">
                            <button
                                onClick={cerrarAlerta}
                                className="px-4 py-2 bg-red-700 text-white rounded-lg hover:bg-red-400"
                            >
                                Cancelar
                            </button>
                            <button
                                onClick={enviarComentario}
                                className="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700"
                            >
                                Enviar Comentario
                            </button>
                        </div>
                    </div>
                </div>
            )}
            <div className="container mx-auto p-4">
                <h1 className="text-3xl font-bold mb-6 text-center">Todas las Reservas</h1>
                <div className="grid grid-cols-1 gap-4">
                    {tarjetas.map((reserva) => (
                        <div
                            key={reserva.id}
                            className={`p-6 border ${seleccionadas.includes(reserva.id) ? 'border-red-600 bg-red-50' : 'border-gray-300'} rounded-lg shadow-md flex gap-4`}
                        >
                            {/* Imagen del tour */}
                            <div className="w-1/3">
                                <img
                                    src={`/laravel/public/storage/${reserva.tour_actividad.tour.portada}`}
                                    alt="Imagen del tour"
                                    className="w-full h-auto object-cover rounded-lg"
                                />
                            </div>

                            {/* Información del tour */}
                            <div className="flex-1">
                                <h2 className="text-xl font-semibold mb-2">{reserva.display}</h2>
                                <p className="text-gray-600 mb-2">Estado: <span className="font-medium">{reserva.estado}</span></p>
                                <p className="text-gray-600 mb-2">Precio: {reserva.tour_actividad.precio_total} Bs</p>
                                <p className="text-gray-600 mb-2">Lugar: {reserva.tour_actividad.lugar}</p>
                                <p className="text-gray-600 mb-2">Duración: {reserva.tour_actividad.actividad.duracion} minutos</p>

                                {/* Botones de acción */}
                                <div className="mt-4">
                                    {reserva.estado === "Pendiente" && (
                                        <>
                                            <button
                                                onClick={() => toggleSeleccion(reserva.id)}
                                                className={`px-6 py-2 rounded-full font-bold transition-colors ${seleccionadas.includes(reserva.id) ? 'bg-red-600 text-white' : 'bg-gray-300 text-gray-800 hover:bg-gray-400'} mr-2`}
                                            >
                                                {seleccionadas.includes(reserva.id) ? 'Deseleccionar' : 'Seleccionar'}
                                            </button>

                                            <button
                                                onClick={() => cancelarReserva(reserva.id)} // Corregido aquí
                                                className="px-6 py-2 rounded-full font-bold transition-colors bg-red-600 text-white"
                                            >
                                                Cancelar
                                            </button>
                                        </>
                                    )}
                                    {reserva.estado === "Cancelado" && (
                                        <button
                                            onClick={() => reactivarReserva(reserva.id)} // Corregido aquí
                                            className="px-6 py-2 rounded-full font-bold transition-colors bg-green-600 text-white"
                                        >
                                            Reactivar
                                        </button>
                                    )}
                                    {reserva.estado === "Confirmada" && (
                                        <button
                                            onClick={() => abrirAlerta(reserva)} // Corregido aquí
                                            className="px-6 py-2 rounded-full font-bold transition-colors bg-yellow-500 text-white"
                                        >
                                            Comentar
                                        </button>
                                    )}
                                </div>
                            </div>
                        </div>
                    ))}
                </div>

                {seleccionadas.length > 0 && (
                    <div className="mt-6 text-center">
                        <p className="text-xl font-semibold mb-4">Total: {calcularTotal()} bs</p>
                        <button
                            onClick={() => {
                                localStorage.setItem("id_reservas", JSON.stringify(seleccionadas));
                                window.location.href = '/pago';
                            }}
                            className="bg-green-600 text-white px-8 py-3 rounded-full hover:bg-green-700 transition-all duration-300"
                        >
                            Pagar Reservas Seleccionadas
                        </button>
                    </div>
                )}
            </div>
        </>
    );
};

export default Reserva;
