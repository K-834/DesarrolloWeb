import proyecto.config.Encryptor;

package controller;

import config.Encryptor;
import entidades.Usuario;
import modelo.UsuarioModel;

>>>>>>>> main:AV1_Proyecto/src/main/java/controller/UsuarioController.java
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import modelo.entidades.Usuario;
import modelo.model.UsuarioModel;

@WebServlet(name = "UsuarioController", value = "/UsuarioController")
public class UsuarioController extends HttpServlet {

    UsuarioModel model = new UsuarioModel();
    Encryptor encryptor = new Encryptor();

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

        HttpSession misesion = request.getSession();

        switch(accion){
            case "agregar":
                model.agregarUsuario(tipo, nombre, correo, password);
                doGet(request,response);
                break;
            case "ver":
                Usuario usuarioVer = model.obtenerUsuario(id);
                misesion.setAttribute("usuario", usuarioVer);
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
            case "login":
                try {
                    String encryptPassLogin = encryptor.encryptString(password);

                    if(encryptPassLogin.equals(model.obtenerHashedPass(correo))) {
                        Usuario usuarioLogin = model.login(correo, encryptPassLogin);
                        misesion.setAttribute("usuario", usuarioLogin);
                        request.getRequestDispatcher("VistaCliente/Home/pruebaLogin.jsp").forward(request,response);
                    }
                    else {
                        request.getRequestDispatcher("VistaCliente/Login/Login.jsp").forward(request,response);
                    }
                }
                catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                }

                break;
            case "registro":
                try {
                    String encryptPassRegistro = encryptor.encryptString(password);

                    if(model.agregarUsuario("CLIENTE", nombre, correo, encryptPassRegistro)) {
                        Usuario usuarioRegistro = model.login(correo, encryptPassRegistro);
                        misesion.setAttribute("usuario", usuarioRegistro);
                        request.getRequestDispatcher("VistaCliente/Home/pruebaLogin.jsp").forward(request,response);
                    }
                    else {
                        request.getRequestDispatcher("VistaCliente/Registro/Registro.jsp").forward(request,response);
                    }
                }
                catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                }


                break;
        }
    }
}