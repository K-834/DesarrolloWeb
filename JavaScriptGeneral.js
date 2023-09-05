const  ContenidoHeader =[
    {
        data1: "#",
        dato2: "#"
    }
];

function GeneradorHeaderTotal(data1, dato2) {
    return `
    <header class="position-Fixed-logo margin-global-web bg-white">
    <nav class="navbar navbar-expand-lg navbar-light bg-white ">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img class="logo" src="../Imagenes/Header/logo3.png"
                    alt="Logo">VA-IA</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="navbar-nav me-auto mb-2 mb-lg-0">
                </div>
                <ul class="navbar-nav me-0">

                    <!---------------------Empresa----------------------->
                    <!--
                        Quienes somos
                        Galeria
                        Testimonios
                        -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Empresa
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="${data1}">Quienes Somos</a></li>
                            <li><a class="dropdown-item" href="${data1}">Nosotros</a></li>
                            <li><a class="dropdown-item" href="#">Testimonios</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Galeria</a></li>
                        </ul>
                    </li>
                    <!---------------------Consejos----------------------->
                    <!--
                        Productos
                        OFertas
                        -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Productos
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <!-- <li><a class="dropdown-item" href="#">Ofertas</a></li>
                            <li><a class="dropdown-item" href="#">Adolescentes</a></li>
                            <li><a class="dropdown-item" href="#">Adultos</a></li> -->
                        </ul>
                    </li>
                    <!---------------------Servicios----------------------->
                    <!--
                        FaQ
                        Blog
                        Talleres/Evento
                        Tipos de servicio (Servicios Detallados)
                        -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Servicios
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Talleres/Eventos</a></li>
                            <li><a class="dropdown-item" href="#">Blog</a></li>
                            <li><a class="dropdown-item" href="#">Tipos de Servicios</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">FaQ</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</header>
    `;
}

const contenedorHeader = document.getElementById("generador-header");

ContenidoHeader.forEach(() => {
    const bannerHTML = GeneradorHeaderTotal();
    contenedorHeader.innerHTML += bannerHTML;
});
