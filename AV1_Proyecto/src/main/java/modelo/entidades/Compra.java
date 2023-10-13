/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.entidades;

import java.util.List;

/**
 *
 * @author antho
 */
public class Compra {
    private int id;
    private int cliente;
    private String fecha;
    private Double monto;
    private String estado;
    private List<Carrito> detalleCompra;

    public Compra() {
    }

    public Compra( int cliente, String fecha, Double monto, String estado, List<Carrito> detalleCompra) {
        this.cliente = cliente;
        this.fecha = fecha;
        this.monto = monto;
        this.estado = estado;
        this.detalleCompra = detalleCompra;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
   

    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public List<Carrito> getDetalleCompra() {
        return detalleCompra;
    }

    public void setDetalleCompra(List<Carrito> detalleCompra) {
        this.detalleCompra = detalleCompra;
    }
    
    
    
}