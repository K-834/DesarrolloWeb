/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.config.db;
import modelo.entidades.Carrito;
import modelo.entidades.Compra;

/**
 *
 * @author antho
 */
public class DaoCompra {

    db cn = new db();
    int r = 0;

   public int GenerarCompra(Compra compra) {
    String insertCompraSQL = "INSERT INTO compras (idCliente, FechaCompras, Monto, Estado) VALUES (?, ?, ?, ?)";
    String insertDetalleSQL = "INSERT INTO detalle_compras (idProducto, idCompras, Cantidad, PrecioCompra) VALUES (?, ?, ?, ?)";

    try (Connection con = cn.Conexion();
         PreparedStatement insertCompraPS = con.prepareStatement(insertCompraSQL);
         PreparedStatement insertDetallePS = con.prepareStatement(insertDetalleSQL, Statement.RETURN_GENERATED_KEYS)) {
        // Inserción en la tabla de compras
        insertCompraPS.setInt(1, compra.getCliente());
        insertCompraPS.setString(2, compra.getFecha());
        insertCompraPS.setDouble(3, compra.getMonto());
        insertCompraPS.setString(4, compra.getEstado());
        int rowsAffected = insertCompraPS.executeUpdate();

        if (rowsAffected == 0) {
            // La inserción en la tabla de compras no tuvo éxito
            return 0;
        }

        // Obtener el ID generado de compra
        try (ResultSet generatedKeys = insertCompraPS.getGeneratedKeys()) {
            if (generatedKeys.next()) {
                int idCompras = generatedKeys.getInt(1);
                
                // Inserción en la tabla de detalle_compras para cada producto en el carrito
                for (Carrito detalle : compra.getDetalleCompra()) {
                    insertDetallePS.setInt(1, detalle.getIdProducto());
                    insertDetallePS.setInt(2, idCompras);
                    insertDetallePS.setInt(3, detalle.getCantidad());
                    insertDetallePS.setDouble(4, detalle.getPrecioCompra());
                    insertDetallePS.addBatch();
                }
                
                // Ejecutar todas las inserciones en detalle_compras
                int[] detalleInsertCounts = insertDetallePS.executeBatch();
                
                // Verificar que todas las inserciones en detalle_compras tuvieron éxito
                for (int count : detalleInsertCounts) {
                    if (count == Statement.EXECUTE_FAILED) {
                        // Al menos una inserción falló
                        return 0;
                    }
                }
                
                // Si llegamos aquí, todo se insertó con éxito
                return 1;
            } else {
                // No se pudo obtener el ID generado
                return 0;
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
        return 0;
    }
}


    public List<Compra> MostrarCompras(int id) {
        List<Compra> compra = new ArrayList<>();
        String sql = "SELECT idCompras,FechaCompras,Monto,Estado FROM compras WHERE idCliente = ?";

        try (Connection con = cn.Conexion(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Compra p = new Compra();
                    p.setId(rs.getInt(1));
                    p.setFecha(rs.getString(2));
                    p.setMonto(rs.getDouble(3));
                    p.setEstado(rs.getString(4));
                    compra.add(p);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return compra;
    }

}
