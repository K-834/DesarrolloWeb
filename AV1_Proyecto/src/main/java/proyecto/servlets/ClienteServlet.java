/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package proyecto.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author antho
 */
@WebServlet(name = "ClienteServlet", urlPatterns = {"/ClienteServlet"})
public class ClienteServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        /* TODO output your page here. You may use following sample code. */
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet ClienteServlet</title>");
        out.println("</head>");
        out.println("<body>");

        HttpSession session = request.getSession();
        ArrayList<Map<String, String>> carrito = (ArrayList<Map<String, String>>) session.getAttribute("carrito");
        if (carrito != null) {
            for (Map<String, String> item : carrito) {
                out.println("Producto: " + item.get("name") + "<br>");
                out.println("ID: " + item.get("id") + "<br>");
                out.println("Precio: " + item.get("price") + "<br>");
                out.println("Cantidad: " + item.get("amount") + "<br>");
                out.println("<br>");
            }
        }

        out.println("<h1>Servlet ClienteServlet at " + request.getContextPath() + "</h1>");
        out.println("</body>");
        out.println("</html>");
    }
}





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
        processRequest(request, response);
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

        HttpSession session = request.getSession(true);

        ArrayList<Map<String, String>> carrito;

        if (session.getAttribute("carrito") != null) {
            carrito = (ArrayList<Map<String, String>>) session.getAttribute("carrito");
        } else {
            carrito = new ArrayList<>();
        }

        if (request.getParameter("name") != null && request.getParameter("id") != null
                && request.getParameter("price") != null && request.getParameter("amount") != null) {

            String name = request.getParameter("name");
            String id = request.getParameter("id");
            String price = request.getParameter("price");
            String amount = request.getParameter("amount");

            HashMap<String, String> item = new HashMap<>();
            item.put("name", name);
            item.put("id", id);
            item.put("price", price);
            item.put("amount", amount);

            carrito.add(item);
        }

        session.setAttribute("carrito", carrito);

        response.sendRedirect(request.getHeader("referer"));
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
