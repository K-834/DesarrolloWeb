/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dao;


import entidades.Carrito;
import entidades.Compra;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.config.db;

/**
 *
 * @author antho
 */
public class DaoCompra {

    db cn = new db();
    int r = 0;

    public int GenerarCompra(Compra compra) {
        String sql = "INSERT INTO `compras`( `idCliente`, `idPago`, `FechaCompras`, `Monto`, `Estado`) VALUES (?,?,?,?,?)";
        int idCompras;

        try (Connection con = cn.Conexion(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, compra.getCliente().getId());
            ps.setInt(2, compra.getIdpago());
            ps.setString(3, compra.getFecha());
            ps.setDouble(4, compra.getMonto());
            ps.setString(5, compra.getEstado());
            r = ps.executeUpdate();
            System.out.println("error aqui 2");

            sql = "Select @@IDENTITY AS idCompras";
            try (ResultSet rs = ps.executeQuery(sql)) {
                rs.next();
                idCompras = rs.getInt("idCompras");
                System.out.println("llegue aqui 3");
                for (Carrito detalle : compra.getDetalleCompra()) {
                    sql = "INSERT INTO `detalle_compras`(`idProducto`, `idCompras`, `Cantidad`, `PrecioCompra`) VALUES (?,?,?,?)";
                    ps.setInt(1, detalle.getIdProducto());
                    ps.setInt(2, idCompras);
                    ps.setInt(3, detalle.getCantidad());
                    ps.setDouble(4, detalle.getPrecioCompra());
                    r = ps.executeUpdate();
                }
            }
        } catch (Exception e) {
            System.out.println("error ENVIO" + e);
        }

        return r;
    }
}
