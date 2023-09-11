<%-- 
    Document   : header
    Created on : 11 set. 2023, 00:40:15
    Author     : antho
--%>

<header class="header">
    <div class="logo">
        <img src="IMG/usuario.png" alt="logo de la marca">
    </div>
    <nav>
        <ul class="nav-links">
            <li><a href="indexx.php">Acceder</a></li>
            <li><a href="index.php">Productos</a></li>
            <li><a href="categorias.php">Categoria</a></li>
            <li><a href="formulariomejorado.php">Contacto</a></li>
            <li><a href="paypal.php">Nosotros</a></li>

        </ul>
    </nav>
    <a href="checkout.php" class="btn"><button>Carrito <p id="num_cart" class="badge bg-secondary">
            </p> </button></a>

    <a onclick="openNav()" class="menu" href="#"><button>Menu</button></a>

    <div class="overlay" id="mobile-menu">
        <a onclick="closeNav()" href="" class="close">&times;</a>
        <div class="overlay-content">
            <a href="indexx.php">Acceder</a>
            <a href="index.php">Productos</a>
            <a href="categorias.php">Catergoria</a>
            <a href="formulariomejorado.php">Contacto</a>
            <a href="nosotros.php">Nosotros</a>
            <a href="carrito.php">Carrito</a>
        </div>
    </div>
</header>
