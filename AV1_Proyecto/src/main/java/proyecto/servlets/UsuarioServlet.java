package proyecto.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import proyecto.entidades.Usuario;
import proyecto.model.UsuarioMemoryData;

@WebServlet(name = "UsuarioServlet", urlPatterns = {"/UsuarioServlet"})
public class UsuarioServlet extends HttpServlet {
    
    private UsuarioMemoryData usuarioData = new UsuarioMemoryData();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Usuario> listaUsuarios = usuarioData.obtenerLista();
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaUsuarios", listaUsuarios);
        response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Usuarios/listaUsuarios.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if(accion.equals("agregar")){
            
            String codigo = request.getParameter("usuario-codigo");
            String tipo = request.getParameter("usuario-tipo");
            String nombre = request.getParameter("usuario-nombre");
            String correo = request.getParameter("usuario-correo");
            String contrasena = request.getParameter("usuario-contrasena");
            
            //usuarioData.agregar(new Usuario(codigo, tipo, nombre, correo, contrasena));
            response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Usuarios/listaUsuarios.jsp");
        }
        else if(accion.equals("ver")) {
            /*Usuario usuario = usuarioData.obtener(request.getParameter("usuario-codigo"));
            HttpSession misesion = request.getSession();
            misesion.setAttribute("usuario", usuario);
            response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Usuarios/usuarioEditar.jsp");*/
        }
        else if(accion.equals("editar")) {
            
            String codigo = request.getParameter("usuario-codigo");
            String tipo = request.getParameter("usuario-tipo");
            String nombre = request.getParameter("usuario-nombre");
            String correo = request.getParameter("usuario-correo");
            String contrasena = request.getParameter("usuario-contrasena");
            
            //usuarioData.modificar(new Usuario(codigo, tipo, nombre, correo, contrasena));
            response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Usuarios/listaUsuarios.jsp");
        }
        else if(accion.equals("eliminar")){
            //usuarioData.eliminar(request.getParameter("usuario-codigo"));
            response.sendRedirect("/AV1_Proyecto/Pagina1/VistaAdministrativo/Usuarios/listaUsuarios.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
