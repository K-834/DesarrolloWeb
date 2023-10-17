package controlador;

import config.Encryptor;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import modelo.dao.UsuarioModel;
import modelo.entidades.Usuario;

@WebServlet(name = "UsuarioController", value = "/UsuarioController")
public class UsuarioController extends HttpServlet {

    UsuarioModel model = new UsuarioModel();
    Encryptor encryptor = new Encryptor();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Usuario> listaUsuarios = model.obtenerUsuarios();
        HttpSession misesion = request.getSession();;
        misesion.setAttribute("listaUsuarios", listaUsuarios);
        request.getRequestDispatcher("VistaAdministrativo/Usuarios/listaUsuarios.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String accion = (String) request.getParameter("accion");

        int id = (request.getParameter("usuario-id") != null) ? Integer.parseInt(request.getParameter("usuario-id")) : 0;
        String tipo = request.getParameter("usuario-tipo");
        String nombre = request.getParameter("usuario-nombre");
        String correo = request.getParameter("usuario-correo");
        String password = request.getParameter("usuario-contrasena");

        HttpSession misesion = request.getSession();

        switch (accion) {
            case "agregar":
                try {
                    String encryptPassRegistro = encryptor.encryptString(password);

                    if (model.agregarUsuario(tipo, nombre, correo, encryptPassRegistro)) {
                        List<Usuario> listaUsuarios = model.obtenerUsuarios();
                        misesion.setAttribute("listaUsuarios", listaUsuarios);
                        request.getRequestDispatcher("VistaAdministrativo/Usuarios/listaUsuarios.jsp").forward(request, response);
                    } else {
                        request.getRequestDispatcher("VistaAdministrativo/Usuarios/usuarioAgregar.jsp").forward(request, response);
                    }
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                }
                break;
            case "ver":
                Usuario usuarioVer = model.obtenerUsuario(id);
                misesion.setAttribute("usuario", usuarioVer);
                request.getRequestDispatcher("VistaAdministrativo/Usuarios/usuarioEditar.jsp").forward(request, response);
                break;
            case "editar":
                model.editarUsuario(id, nombre, correo, password);
                doGet(request, response);
                break;
            case "eliminar":
                model.eliminarUsuario(id);
                doGet(request, response);
                break;
            case "eliminarItem":
                model.eliminarItem(id);
                response.sendRedirect(request.getContextPath() + "/CatalogoServlet?perfil=" + request.getParameter("usuario-id-perfil-value"));
                break;
            case "login":
                try {
                String encryptPassLogin = encryptor.encryptString(password);

                if (encryptPassLogin.equals(model.obtenerHashedPass(correo))) {
                    Usuario usuarioLogin = model.login(correo, encryptPassLogin);
                    misesion.setAttribute("usuario", usuarioLogin.getNombre());
                    misesion.setAttribute("usuarioID", usuarioLogin.getId());
                    misesion.setAttribute("usuarioCorreo", usuarioLogin.getCorreo());
                    misesion.setAttribute("tipoUsuario", usuarioLogin.getTipo());
                    misesion.setAttribute("usuarioAutenticado", true);
                    response.sendRedirect(request.getContextPath() + "/CatalogoServlet?accion=productos");
                    // request.getRequestDispatcher("ViewCliente/carrito.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("ViewCliente/index.jsp").forward(request, response);
                }
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }

            break;
            case "registro":
                try {
                    String encryptPassRegistro = encryptor.encryptString(password);

                    if (model.agregarUsuario("CLIENTE", nombre, correo, encryptPassRegistro)) {
                        Usuario usuarioRegistro = model.login(correo, encryptPassRegistro);
                        misesion.setAttribute("usuario", usuarioRegistro);
                        request.getRequestDispatcher("ViewCliente/carrito.jsp").forward(request, response);
                    } else {
                        request.getRequestDispatcher("ViewCliente/index.jsp").forward(request, response);
                    }
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                }
            break;
        }
    }
}
