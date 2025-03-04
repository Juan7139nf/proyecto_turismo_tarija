import { BrowserRouter, Route, Routes } from "react-router-dom";
import App from "./src/App.jsx";
import Navbar from "./components/navbar.jsx";
import Footer from "./components/footer.jsx";
import Tours from "./components/Tours.jsx";
import Login from "./src/pages/login.jsx";
import UserProfile from "./src/pages/userProfile.jsx";
import Register from "./src/pages/register.jsx";
import EditProfile from "./src/pages/editProfile.jsx";


const Rutas = () => {
    return(
        <BrowserRouter>
            <Navbar/>
            <Routes>
                <Route path="/" element={<App/>} />
                <Route path="/tours" element={<Tours/>} />
                <Route path="/tours/:idtour" element={<Tours/>} />

                <Route path="/login" element={<Login/>} />
                <Route path="/perfil" element={<UserProfile/>} />
                <Route path="/perfil/editar" element={<EditProfile/>} />
                <Route path="/register" element={<Register/>} />
            </Routes>
            <Footer/>
        </BrowserRouter>
    )
}

export default Rutas;