package Dao;

import java.sql.*;
import java.util.Vector;
import Beans.*;
import java.util.ArrayList;

public class busquedas {
    Connection con;
    CallableStatement cstmt;
    ResultSet rs;

    //Metodo utilizado para iniciar la sesion del cliente
        public usuario logeo_cuenta(String usuario, String clave) {
        try {
            usuario cli = new usuario();
            conexion cn = new conexion();
            con = cn.getAccesoBD();
            cstmt = con.prepareCall("{call sp_validar_usuario(?,?)}");
            cstmt.setString(1, usuario);
            cstmt.setString(2, clave);
            rs = cstmt.executeQuery();
            rs.next();
            cli.setCliente(rs.getString(1));
            cli.setTarjeta(rs.getString(2));
            cli.setCuenta(rs.getString(3));
            cli.setIdcliente(rs.getString(4));
            cli.setIdcuentabancaria(rs.getString(5));
            cli.setIdtarjeta(rs.getString(6));
            return cli;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado sp_validar_usuario --- " + ex);
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }
    }

    public usuario consultar_claves(String clave1, String clave2) {
        try {
            usuario cli = new usuario();
            conexion cn = new conexion();
            con = cn.getAccesoBD();
            cstmt = con.prepareCall("{call sp_validar_claves(?,?)}");
            cstmt.setString(1, clave1);
            cstmt.setString(2, clave2);
            rs = cstmt.executeQuery();
            rs.next();
            cli.setIdcuentabancaria(rs.getString(1));
            return cli;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado sp_validar_claves --- " + ex);
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }
    
        public usuario obtener_idtarjeta(String num_tarjeta) {
        try {
            usuario cli = new usuario();
            conexion cn = new conexion();
            con = cn.getAccesoBD();
            cstmt = con.prepareCall("{call sp_obtener_tarjeta(?,?)}");
            cstmt.setString(1, num_tarjeta);
            rs = cstmt.executeQuery();
            rs.next();
            cli.setTarjeta(rs.getString(1));
            return cli;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado sp_obtener_tarjeta --- " + ex);
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

  public Vector llenarVectorCargo() {
        Vector aux=new Vector();
        try {
            conexion cn = new conexion();
            con = cn.getAccesoBD();
            cstmt = con.prepareCall("{call sp_mostrarcargo}");
            ResultSet rs;
            rs = cstmt.executeQuery();
            while(rs.next()){
                String[] datos=new String[2];
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
                aux.add(datos);
            }
            cstmt.close();
            con.close();
            return aux;
        } catch (SQLException ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

    }