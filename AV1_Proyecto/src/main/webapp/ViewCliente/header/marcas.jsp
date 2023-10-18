<%-- 
    Document   : marcas
    Created on : 17 oct. 2023, 11:56:12
    Author     : antho
--%>
<nav class="categorias">
    <c:forEach items="${marcaProd}" var="m">
        <a href="CatalogoServlet?marca=${m.getMarca()}" style="font-size: 25px; color: white; text-decoration: #ffffff">${m.getMarca()}</a>
    </c:forEach>   

</nav>