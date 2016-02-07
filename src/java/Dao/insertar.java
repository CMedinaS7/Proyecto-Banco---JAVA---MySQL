/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;
import Beans.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 *
 * 
 */
public class insertar {
   
  public boolean RealizarOperacion(double monto,String tipo,String servicio,String cuenta,String cliente,String ctabancaria){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call sp_realizar_operacion(?,?,?,?,?,?)}");
        cstmt.setDouble(1, monto);
        cstmt.setString(2, tipo);
        cstmt.setString(3, servicio);
        cstmt.setString(4, cuenta);
        cstmt.setString(5, cliente);
        cstmt.setString(6, ctabancaria);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar Operacion Bancaria ---" + ex);}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion ---" + ex1);}
    }
    return resultado;
    }

  
  public boolean GenerarClave(String num_tarjeta,String clave){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call sp_generar_clave(?,?)}");
        cstmt.setString(1, num_tarjeta);
        cstmt.setString(2, clave);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Generar Clave ---" + ex);}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion ---" + ex1);}
    }
    return resultado;
    }


}