/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package proyecto.entidades.home;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author antho
 */
public class ContenedoresMemory {

   private static List<Contenedores> lista = new ArrayList<Contenedores>();


    public ContenedoresMemory() {
        lista.add(new Contenedores("Productos", "https://static.vecteezy.com/system/resources/previews/003/237/381/non_2x/line-icon-for-product-vector.jpg", "../../../UsuarioServlet"));
        lista.add(new Contenedores("Pedidos", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaEtlQRBwEKuwxCqHMnxyeWqQjQNjTPE_Sr9Aw6PWfYl7Fok5nWaXRFkw_g7shbWsSflg&usqp=CAU", "../../../ProductoServlet"));
        lista.add(new Contenedores("Comentario", "https://img.freepik.com/vector-premium/icono-comentario_9385-5.jpg?w=2000", "/AV1_Proyecto/Pagina1/VistaAdministrativo/Pedidos/GestionPedidos.jsp"));
 
    }

    public List<Contenedores> obtenerLista() {
        return ContenedoresMemory.lista;
    }

}
