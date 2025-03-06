import React, { useState } from 'react';
import TarjetaPreview from './TarjetaPreview';
import TarjetaForm from './TarjetaForm';
import $ from 'jquery';

const TarjetaCredito = ({ onDatosChange, initialData = {} }) => {
    const [datosTarjeta, setDatosTarjeta] = useState({
        numeroTarjeta: initialData.numeroTarjeta || "",
        nombrePropietario: initialData.nombrePropietario || "",
        tipoTarjeta: initialData.tipoTarjeta || "visa",
        cvv: initialData.cvv || ""
    });
    const [message, setMessage] = useState([]);

    const [alertaTarjeta, setAlertaTarjeta] = useState(false);

    const completado = () => {
        setAlertaTarjeta(false)
    }

    const handleSubmit = (e) => {
        e.preventDefault();
        $.ajax({
            url: `${import.meta.env.VITE_API_URL}/card/tarjetas`,
            method: 'POST',
            headers: {
                'Authorization': `Bearer ${localStorage.getItem('token')}`,
                'Content-Type': 'application/json'
            },
            data: JSON.stringify({
                numero_tarjeta: datosTarjeta.numeroTarjeta,
                nombre_titular: datosTarjeta.nombrePropietario,
                tipo_tarjeta: datosTarjeta.tipoTarjeta,
                ccv: datosTarjeta.cvv
            }),
            success: (response) => {
                setMessage('Tarjeta guardada correctamente');
                setAlertaTarjeta(true);
                if (onDatosChange) {
                    onDatosChange(response);
                }
            },
            error: (error) => {
                alert('Error al guardar la tarjeta');
                console.error(error);
            }
        });
    };

    return (
        <>
            {alertaTarjeta && <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60 backdrop-blur-sm p-4">
                <div className="bg-white p-6 rounded-lg shadow-lg w-96">
                    <h2 className="text-2xl font-bold mb-4">Se guardo la tarjeta con exito</h2>
                    <p className="mb-6 text-gray-600">{message}</p>
                    <div className="flex justify-end space-x-4">
                        <button
                            onClick={completado}
                            className="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700">
                            Aceptar
                        </button>
                    </div>
                </div>
            </div>}
            <div className="space-y-10">
                <TarjetaPreview datosTarjeta={datosTarjeta} />
                <TarjetaForm
                    datosTarjeta={datosTarjeta}
                    setDatosTarjeta={setDatosTarjeta}
                    onSubmit={handleSubmit}
                />
            </div>
        </>
    );
};

export default TarjetaCredito;
