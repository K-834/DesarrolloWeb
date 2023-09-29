/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.entidades.carrito;

/**
 *
 * @author antho
 */
public class CarritoMemory {

    private Producto producto;
    private int cantidadComprada = 1;

    public CarritoMemory(Producto producto, int cantidad) {
        this.producto = producto;
        this.cantidadComprada = cantidadComprada;
    }

    public Producto getProducto() {
        return producto;
    }   

    public void aumentarCantidad(int cantidad) {
        this.cantidadComprada += cantidad;
    }

    public double calcularSubtotal() {
        return producto.getPrecio() * cantidadComprada;
    }

    public int getCantidadComprada() {
        return cantidadComprada;
    }

    public void setCantidadComprada(int cantidadComprada) {
        this.cantidadComprada = cantidadComprada;
    }

}
