<%-- 
    Document   : header
    Created on : 6 oct. 2023, 00:54:31
    Author     : antho
--%>

 <header>
        <div class="header-left">
            <div class="logo-contenedor">
                <a href="/AV1_Proyecto/ViewCliente/index.jsp" id="logo-header"><img src="assets/img/Marisol_Logo.png" alt="logo Marisol"></a>
            </div>
            <a href="../CatalogoServlet?accion=home">Productos<i class="bi bi-caret-down-fill"></i></a>
            <a href="">Ofertas</a>
            <a class="nav-link disabled" href="/AV1_Proyecto/VistaAdministrativo/Home/Home.jsp" style="color: black; font-weight: bold;">ADMINISTRACIÓN</a>
                
        </div>
        <div class="header-right">
            <div class="buscador">
                <a href=""><i class="bi bi-search"></i></a>
                <input type="text" name="buscador-txt" placeholder="Buscar productos...">
            </div>
            <a href="CatalogoServlet?accion=Carrito" class="carrito" id="carrito-header"><i class="bi bi-cart2"></i>(${contador})</a>
            
            <button id="toggleCartBtn1" data-bs-toggle="modal" data-bs-target="#modal_cart" class="user"><i class="bi bi-person-circle"></i></button>
        </div>
    </header>