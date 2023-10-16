/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import config.Fecha;
import modelo.dao.DaoProducto;
import java.io.IOException;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.DaoCompra;
import modelo.entidades.Carrito;
import modelo.entidades.ClienteProd;
import modelo.entidades.Compra;
import modelo.entidades.Pago;
import modelo.entidades.ProductosCatalogo;

/**
 *
 * @author antho
 */
@WebServlet(name = "CatalogoServlet", urlPatterns = {"/CatalogoServlet"})
public class CatalogoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    DaoProducto daoProd = new DaoProducto();

    ProductosCatalogo p = new ProductosCatalogo();
    List<ProductosCatalogo> productos = new ArrayList<>();
    // List<ProductosCatalogo> productosPerf = new ArrayList<>();
    List<Carrito> listaCarrito = new ArrayList<>();
    int item;
    double totalPagar = 0.0;

    int cantidad = 1;
    int idp;
    Carrito car;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String perfilVeri1 = request.getParameter("perfil");
        if (perfilVeri1 != null) {
            try {
                DaoCompra daoComp = new DaoCompra();
                List<Compra> compras = new ArrayList<>();;
                int perfil = Integer.parseInt(request.getParameter("perfil"));
                //     productosPerf = daoProd.listarPefil(perfil);
                compras = daoComp.MostrarCompras(perfil);

                request.setAttribute("compras", compras);
                //       request.setAttribute("productosPerfil", productosPerf);

                request.getRequestDispatcher("/ViewCliente/perfil.jsp").forward(request, response);
            } catch (NumberFormatException e) {
                System.out.println(e);
            }
        }
        String accion = request.getParameter("accion");
        switch (accion) {
            case "Comprar":
                totalPagar = 0.0;
                if (request.getParameter("id") != null) {
                    idp = Integer.parseInt(request.getParameter("id"));
                    p = daoProd.listarId(idp);
                    item = item + 1;
                    car = new Carrito();
                    car.setItem(item);
                    car.setIdProducto(p.getId());
                    car.setNombres(p.getNombres());
                    car.setDescripcion(p.getDescripcion());
                    car.setPrecioCompra(p.getPrecio());
                    car.setCantidad(cantidad);
                    car.setSubTotal(cantidad * p.getPrecio());
                    listaCarrito.add(car);
                }

                for (int i = 0; i < listaCarrito.size(); i++) {
                    totalPagar = totalPagar + listaCarrito.get(i).getSubTotal();
                }
                request.setAttribute("VerCompras", listaCarrito);
                request.setAttribute("contador", listaCarrito.size());
                request.setAttribute("totalPagar", totalPagar);
                request.getRequestDispatcher("/ViewCliente/pedido.jsp").forward(request, response);

                break;
            case "AgregarCarrito":
                int pos = 0;
                cantidad = 1;
                idp = Integer.parseInt(request.getParameter("id"));
                p = daoProd.listarId(idp);
                if (listaCarrito.size() > 0) {
                    for (int i = 0; i < listaCarrito.size(); i++) {
                        if (idp == listaCarrito.get(i).getIdProducto()) {
                            pos = i;
                        }
                    }
                    if (idp == listaCarrito.get(pos).getIdProducto()) {
                        cantidad = listaCarrito.get(pos).getCantidad() + cantidad;
                        double subtotal = listaCarrito.get(pos).getPrecioCompra() * cantidad;
                        listaCarrito.get(pos).setCantidad(cantidad);
                        listaCarrito.get(pos).setSubTotal(subtotal);

                    } else {
                        item = item + 1;
                        car = new Carrito();
                        car.setItem(item);
                        car.setIdProducto(p.getId());
                        car.setNombres(p.getNombres());
                        car.setDescripcion(p.getDescripcion());
                        car.setPrecioCompra(p.getPrecio());
                        car.setCantidad(cantidad);
                        car.setSubTotal(cantidad * p.getPrecio());
                        listaCarrito.add(car);
                    }

                } else {
                    item = item + 1;
                    car = new Carrito();
                    car.setItem(item);
                    car.setIdProducto(p.getId());
                    car.setNombres(p.getNombres());
                    car.setDescripcion(p.getDescripcion());
                    car.setPrecioCompra(p.getPrecio());
                    car.setCantidad(cantidad);
                    car.setSubTotal(cantidad * p.getPrecio());
                    listaCarrito.add(car);

                }

                request.setAttribute("contador", listaCarrito.size());
                request.getRequestDispatcher("CatalogoServlet?accion=productos").forward(request, response);
                break;
            case "Carrito":
                totalPagar = 0.0;
                request.setAttribute("VerCompras", listaCarrito);
                for (int i = 0; i < listaCarrito.size(); i++) {
                    totalPagar = totalPagar + listaCarrito.get(i).getSubTotal();
                }
                request.setAttribute("totalPagar", totalPagar);
                request.getRequestDispatcher("/ViewCliente/carrito.jsp").forward(request, response);
                break;
            case "Borrar":
                int idProducto = Integer.parseInt(request.getParameter("idp"));

                for (int i = 0; i < listaCarrito.size(); i++) {
                    if (listaCarrito.get(i).getIdProducto() == idProducto) {
                        listaCarrito.remove(i);
                    }
                }
                break;
            case "ActualizarCantidad":
                int idprod = Integer.parseInt(request.getParameter("idp"));
                int cant = Integer.parseInt(request.getParameter("Cantidad"));
                for (int i = 0; i < listaCarrito.size(); i++) {
                    if (listaCarrito.get(i).getIdProducto() == idprod) {
                        listaCarrito.get(i).setCantidad(cant);
                        double st = listaCarrito.get(i).getPrecioCompra() * cant;
                        listaCarrito.get(i).setSubTotal(st);
                    }
                }
                break;
            case "GenerarCompra":
                String perfilVeri = request.getParameter("perfilID");
                request.setAttribute("VerCompras", listaCarrito);
                if (perfilVeri != null) {
                    try {
                        int perfil = Integer.parseInt(perfilVeri);
                        DaoCompra daoC = new DaoCompra();
                        Compra compra = new Compra();
                        compra.setCliente(perfil);
                        compra.setFecha(Fecha.FechaBD());
                        compra.setMonto(totalPagar);
                        compra.setEstado("CANCELADO");
                        compra.setDetalleCompra(listaCarrito);
                        daoC.GenerarCompra(compra);
                        listaCarrito.clear();
                        request.getRequestDispatcher("CatalogoServlet?accion=Carrito").forward(request, response);

                    } catch (NumberFormatException e) {
                        request.getRequestDispatcher("/ViewCliente/error.jsp").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("/ViewCliente/error.jsp").forward(request, response);

                }
                break;

            case "productos":

                productos = daoProd.listar();
                request.setAttribute("productos", productos);
                request.getRequestDispatcher("/ViewCliente/productos.jsp").forward(request, response);

            default:
                request.getRequestDispatcher("/ViewCliente/error.jsp").forward(request, response);

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
        processRequest(request, response);
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
