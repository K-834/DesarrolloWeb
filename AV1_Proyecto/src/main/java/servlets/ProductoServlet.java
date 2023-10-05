package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import entidades.Producto;
import modelo.ProductoMemoryData;

@WebServlet(name = "ProductoServlet", urlPatterns = {"/ProductoServlet"})
public class ProductoServlet extends HttpServlet {
    
    private ProductoMemoryData productoData = new ProductoMemoryData();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Producto> listaProductos = productoData.obtenerLista();
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaProductos", listaProductos);
        response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Productos/listaProductos.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if(accion.equals("agregar")){
            
            String codigo = request.getParameter("producto-codigo");
            String nombre = request.getParameter("producto-nombre");
            String marca = request.getParameter("producto-marca");
            String modelo = request.getParameter("producto-modelo");
            double precio = Double.parseDouble(request.getParameter("producto-precio"));
            
            productoData.agregar(new Producto(codigo, nombre, marca, modelo, precio));
            response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Productos/listaProductos.jsp");
        }
        else if(accion.equals("ver")) {
            Producto producto = productoData.obtener(request.getParameter("producto-codigo"));
            HttpSession misesion = request.getSession();
            misesion.setAttribute("producto", producto);
            response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Productos/productoEditar.jsp");
        }
        else if(accion.equals("editar")) {
            
            String codigo = request.getParameter("producto-codigo");
            String nombre = request.getParameter("producto-nombre");
            String marca = request.getParameter("producto-marca");
            String modelo = request.getParameter("producto-modelo");
            double precio = Double.parseDouble(request.getParameter("producto-precio"));
            
            productoData.modificar(new Producto(codigo, nombre, marca, modelo, precio));
            response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Productos/listaProductos.jsp");
        }
        else if(accion.equals("eliminar")){
            productoData.eliminar(request.getParameter("producto-codigo"));
            response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Productos/listaProductos.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
