/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.entidades.carrito;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.config.db;

/**
 *
 * @author antho
 */
public class DaoProducto {

    Connection con;
    db cn = new db();
    PreparedStatement ps;
    ResultSet rs;

    public List listar() {
        List<Producto> product = new ArrayList();
        String sql = "select * from producto";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
            Producto p = new Producto();
            p.setId(rs.getInt(1));
            p.setId(rs.getInt(1));
            p.setId(rs.getInt(1));
            p.setId(rs.getInt(1));
            p.setId(rs.getInt(1));
            }

        } catch (Exception e) {
        }
        return product;
    }

}
