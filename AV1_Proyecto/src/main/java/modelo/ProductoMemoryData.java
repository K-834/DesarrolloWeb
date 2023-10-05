package modelo;

import java.util.ArrayList;
import java.util.List;
import entidades.Producto;

/**
 *
 * @author aferz
 */
public class ProductoMemoryData {
    
    private static List<Producto> lista = new ArrayList<Producto>();
    
    public ProductoMemoryData() {
        lista.add(new Producto("097705", "White Diamonds", "Elizabeth Taylor", "Dama 100ml", 279));
        lista.add(new Producto("789789", "WEST Side", "Bond 9", "Dama 100ml", 150));
        lista.add(new Producto("123456", "WED Vibes Peaches", "Air&Water", "Unisex 240ml", 500));
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
