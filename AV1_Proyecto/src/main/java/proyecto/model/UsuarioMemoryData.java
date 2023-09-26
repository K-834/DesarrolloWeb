package proyecto.model;

import java.util.ArrayList;
import java.util.List;
import proyecto.entidades.Usuario;

public class UsuarioMemoryData {
    
    private static List<Usuario> lista = new ArrayList<Usuario>();
    
    public UsuarioMemoryData() {
//        lista.add(new Usuario("usu_001", "ADMIN", "Baltazar", "baltazar@gmail.com", "baltazar"));
//        lista.add(new Usuario("usu_002", "CLIENTE", "Melchor", "melchor@gmail.com", "melchor"));
//        lista.add(new Usuario("usu_003", "CLIENTE", "Gaspar", "gaspar@gmail.com", "gaspar"));
    }
    
    public List<Usuario> obtenerLista() {
        return UsuarioMemoryData.lista;
    }
    /*
    public Usuario obtener(String codigo) {
        for(Usuario u : lista){
            if(u.getId().equals(codigo)){
                return u;
            }
        }
        return null;
    }
    
    public void agregar(Usuario usuario){
        lista.add(usuario);
    }
    
    public void modificar(Usuario usuario) {
        for(int i = 0; i < UsuarioMemoryData.lista.size(); i++){
            Usuario u = UsuarioMemoryData.lista.get(i);
            if(u.getCodigo().equals(usuario.getCodigo())){
                UsuarioMemoryData.lista.set(i, usuario);
            }
        }
    }
    
    public boolean eliminar(String codigo) {
        for(Usuario u : UsuarioMemoryData.lista) {
            if(u.getCodigo().equals(codigo)) {
                return UsuarioMemoryData.lista.remove(u);
            }
        }
        return false;
    }*/
}
