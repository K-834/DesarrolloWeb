/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.entidades.carrito;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author antho
 */
public class Carrito {
    private List<CarritoMemory> carrito = new ArrayList<>();

//    public void agregarProducto(Producto producto, int cantidad) {
//        for (CarritoMemory linea : carrito) {
//            if (linea.getProducto().getId().equals(producto.getId())) {
//                linea.aumentarCantidad(cantidad);
//                return;
//            }
//        }
//
//        CarritoMemory nuevaLinea = new CarritoMemory(producto, cantidad);
//        carrito.add(nuevaLinea);
//    }
//
//    public void eliminarProducto(String productId) {
//        carrito.removeIf(linea -> linea.getProducto().getId().equals(productId));
//    }

    public List<CarritoMemory> obtenerLineasCarrito() {
        return carrito;
    }

    public double calcularTotal() {
        double total = 0.0;
        for (CarritoMemory linea : carrito) {
            total += linea.calcularSubtotal();
        }
        return total;
    }
}
