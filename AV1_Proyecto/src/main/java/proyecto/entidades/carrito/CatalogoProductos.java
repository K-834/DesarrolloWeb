/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package proyecto.entidades.carrito;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author antho
 */
public class CatalogoProductos {

    private Map<String, Producto> productos = new HashMap<>();

    public CatalogoProductos() {
        // Inicializa la lista de productos aquí
        inicializarProductos();
    }

    // Método para inicializar la lista de productos
    private void inicializarProductos() {
        productos.put("1", new Producto("1", "Producto 1", "Descripción 1", 10.0, 10));
        productos.put("2", new Producto("2", "Producto 2", "Descripción 2", 15.0, 10));
        productos.put("3", new Producto("3", "Producto 3", "Descripción 3", 20.0, 10));
    }

    public Producto obtenerProductoPorId(String productId) {
        return productos.get(productId);
    }

    public List<Producto> obtenerTodosLosProductos() {
        return new ArrayList<>(productos.values());
    }
    
}


