<%-- 
    Document   : productoEditar
    Created on : Sep 11, 2023, 5:16:44 PM
    Author     : aferz
--%>

<%@page import="proyecto.entidades.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Producto producto = (Producto)request.getSession().getAttribute("producto");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Producto</title>
        <!-- CSS BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <main>
            <div class="container">
                <h1 class="mb-3 titulo">Editar Producto</h1>
                <form action="../../ProductoServlet" method="POST">
                    <input type="hidden" name="accion" id="accion" value="editar" />
                    <div class="mb-3">
                        <label for="producto-codigo" class="form-label">Codigo</label>
                        <input type="text" class="form-control" id="producto-codigo" name="producto-codigo" value="<%=producto.getCodigo()%>" readonly required>
                    </div>
                    <div class="mb-3">
                        <label for="producto-nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="producto-nombre" name="producto-nombre" value="<%=producto.getNombre()%>" required>
                    </div>
                    <div class="mb-3">
                        <label for="producto-marca" class="form-label">Marca</label>
                        <input type="text" class="form-control" id="producto-marca" name="producto-marca" value="<%=producto.getMarca()%>" required>
                    </div>
                    <div class="mb-3">
                        <label for="producto-modelo" class="form-label">Modelo</label>
                        <input type="text" class="form-control" id="producto-modelo" name="producto-modelo" value="<%=producto.getModelo()%>" required>
                    </div>
                    <div class="mb-3">
                        <label for="producto-precio" class="form-label">Precio</label>
                        <input type="text" pattern="[0-9]+(\.)?[0-9]*" class="form-control" id="producto-precio" name="producto-precio" value="<%=producto.getPrecio()%>" required>
                    </div>
                    <button type="submit" class="btn btn-success">Actualizar Datos</button>
                    <a href="listaProductos.jsp" class="btn btn-secondary">Regresar</a>
                </form>
            </div>
        </main>
        <!-- JS BOOTSTRAP -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    </body>
</html>
