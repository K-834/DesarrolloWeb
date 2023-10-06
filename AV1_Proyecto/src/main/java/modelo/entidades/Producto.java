<<<<<<<< HEAD:AV1_Proyecto/src/main/java/modelo/entidades/Producto.java
package modelo.entidades;
========
package entidades;
>>>>>>>> main:AV1_Proyecto/src/main/java/entidades/Producto.java

/**
 *
 * @author aferz
 */
public class Producto {
    
    private String codigo;
    private String nombre;
    private String marca;
    private String modelo;
    private double precio;

    public Producto() {
        
    }

    public Producto(String codigo, String nombre, String marca, String modelo, double precio) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.marca = marca;
        this.modelo = modelo;
        this.precio = precio;
    }
    
    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
}
