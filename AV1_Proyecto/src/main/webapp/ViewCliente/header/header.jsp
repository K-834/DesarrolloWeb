<%-- 
    Document   : header
    Created on : 6 oct. 2023, 00:54:31
    Author     : antho
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <div class="header-left">
        <div class="logo-contenedor">
            <a href="/AV1_Proyecto/ViewCliente/index.jsp" id="logo-header"><img src="assets/img/Marisol_Logo.png" alt="logo Marisol"></a>
        </div>
        <a href="../CatalogoServlet?accion=productos">Productos<i class="bi bi-caret-down-fill"></i></a>
        <a href="">Ofertas</a>
        <c:if test="${tipoUsuario == 'ADMIN'}">
            <a class="nav-link disabled" href="/AV1_Proyecto/VistaAdministrativo/Home/Home.jsp" style="color: black; font-weight: bold;">ADMINISTRACIÓN</a>
        </c:if>
    </div>

    <div class="header-right">
        <div class="buscador">
            <a href=""><i class="bi bi-search"></i></a>
            <input type="text" name="buscador-txt" placeholder="Buscar productos...">
        </div>

        <c:choose>
            <c:when test="${empty usuario}">
                <a href="CatalogoServlet?accion=Carrito" class="carrito" id="carrito-header">
                    <c:if test="${contador > 0}">
                        <i class="bi bi-cart2"></i>(${contador})
                    </c:if>
                </a>
                <a id="toggleCartBtn1" href="/AV1_Proyecto/ViewCliente/Login/Login.jsp" class="user"><i class="bi bi-person-circle"></i></a>
                </c:when>    
                <c:otherwise>
                <a>Bienvenido ${usuario}</a>
                <a href="CatalogoServlet?accion=Carrito" class="carrito" id="carrito-header">
                    <c:if test="${contador > 0}">
                        <i class="bi bi-cart2"></i>(${contador})
                    </c:if>
                </a>
                <a id="toggleCartBtn1" href="/AV1_Proyecto/CatalogoServlet?perfil=${usuarioID}" class="user"><i class="bi bi-person-circle"></i></a>
                </c:otherwise>
            </c:choose>

    </div>
</header>
