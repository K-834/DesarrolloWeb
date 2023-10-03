<%@ page import="proyecto.entidades.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Usuario usuario = (Usuario)request.getSession().getAttribute("usuario");
%>
<%--ELIMINAR ESTE ARCHIVO DESPUÉS DE VALIDAR LAS CONSTRASEÑAS Y LA ENCRIPTACIÓN--%>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <p>Bienvenido <%=usuario.getNombre()%>!</p>
        <p>Tu contraseña es: <%=usuario.getPassword()%></p>
    </body>
</html>
