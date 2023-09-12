/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package proyecto.entidades.carrito;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author antho
 */
public class CarritoMemory {

    private Producto producto;
    private int cantidad;

    public CarritoMemory(Producto producto, int cantidad) {
        this.producto = producto;
        this.cantidad = cantidad;
    }

    public Producto getProducto() {
        return producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void aumentarCantidad(int cantidad) {
        this.cantidad += cantidad;
    }

    public double calcularSubtotal() {
        return producto.getPrecio() * cantidad;
    }

}
