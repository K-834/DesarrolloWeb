package proyecto.model;

import java.util.ArrayList;
import java.util.List;
import proyecto.entidades.Producto;

/**
 *
 * @author aferz
 */
public class ProductoMemoryData {
    
    private static List<Producto> lista = new ArrayList<Producto>();
    
    public ProductoMemoryData() {
        lista.add(new Producto("097705", "Camara Web Lifecam", "MICROSOFT", "Cinema H5D-00013", 279));
        lista.add(new Producto("789789", "Camara IA", "OPENAI", "GPT", 150));
        lista.add(new Producto("123456", "Microfono Dinamico", "AKG", "m414", 500));
    }
    
    public List<Producto> obtenerLista() {
        return ProductoMemoryData.lista;
    }
    
    public Producto obtener(String codigo) {
        for(Producto p : lista){
            if(p.getCodigo().equals(codigo)){
                return p;
            }
        }
        return null;
    }
    
    public void agregar(Producto producto){
        lista.add(producto);
    }
    
    public void modificar(Producto producto) {
        for(int i = 0; i < ProductoMemoryData.lista.size(); i++){
            Producto p = ProductoMemoryData.lista.get(i);
            if(p.getCodigo().equals(producto.getCodigo())){
                ProductoMemoryData.lista.set(i, producto);
            }
        }
    }
    
    public boolean eliminar(String codigo) {
        for(Producto p : ProductoMemoryData.lista) {
            if(p.getCodigo().equals(codigo)) {
                return ProductoMemoryData.lista.remove(p);
            }
        }
        return false;
    }
}
