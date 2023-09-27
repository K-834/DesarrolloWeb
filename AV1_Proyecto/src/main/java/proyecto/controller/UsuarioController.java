package proyecto.controller;

import proyecto.entidades.Usuario;
import proyecto.model.UsuarioModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UsuarioController", value = "/UsuarioController")
public class UsuarioController extends HttpServlet {

    UsuarioModel model = new UsuarioModel();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Usuario> listaUsuarios = model.obtenerUsuarios();
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaUsuarios", listaUsuarios);
        request.getRequestDispatcher("Pagina1/VistaAdministrativo/Usuarios/listaUsuarios.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String accion = (String) request.getParameter("accion");

        int id = (request.getParameter("usuario-id") != null) ? Integer.parseInt(request.getParameter("usuario-id")) : 0;
        String tipo = request.getParameter("usuario-tipo");
        String nombre = request.getParameter("usuario-nombre");
        String correo = request.getParameter("usuario-correo");
        String password = request.getParameter("usuario-contrasena");

        switch(accion){
            case "agregar":
                model.agregarUsuario(tipo, nombre, correo, password);
                doGet(request,response);
                break;
            case "ver":
                Usuario usuario = model.obtenerUsuario(id);
                HttpSession misesion = request.getSession();
                misesion.setAttribute("usuario", usuario);
                request.getRequestDispatcher("Pagina1/VistaAdministrativo/Usuarios/usuarioEditar.jsp").forward(request,response);
                break;
            case "editar":
                model.editarUsuario(id,nombre, correo, password);
                doGet(request, response);
                break;
            case "eliminar":
                model.eliminarUsuario(id);
                doGet(request, response);
                break;
        }
    }
}