/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package proyecto.entidades.carrito;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author antho
 */
@WebServlet(name = "CarritoServlet", urlPatterns = {"/CarritoServlet"})
public class CarritoServlet extends HttpServlet {
        private CatalogoProductos memoryProd = new CatalogoProductos();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       List<Producto> contenido = memoryProd.obtenerTodosLosProductos();
        //request.getSession().setAttribute("lista.Clientes", listaClientes);
        request.setAttribute("contenido.catalogo", contenido);
        request.getRequestDispatcher("Pagina1/VistaCliente/Home/index.jsp")
                .forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("productId");
        int cantidad = Integer.parseInt(request.getParameter("quantity"));

        CatalogoProductos catalogo = new CatalogoProductos();
        Producto producto = catalogo.obtenerProductoPorId(productId);

        if (producto != null) {
            Carrito carrito = (Carrito) request.getSession().getAttribute("carrito");

            if (carrito == null) {
                carrito = new Carrito();
                request.getSession().setAttribute("carrito", carrito);
            }

            carrito.agregarProducto(producto, cantidad);

            //pagina de confirmación solo quiero ver si pinta info
            response.sendRedirect("/AV1_Proyecto/Pagina1/VistaCliente/.jsp");
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
