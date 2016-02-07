/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;
/**
 *
 *
 */
public class modificar{

    Connection cn;
   
       public boolean modificarClave(String cliente,String clave){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call sp_cambiar_clave(?,?)}");
        cstmt.setString(1, cliente);
        cstmt.setString(2, clave);
            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento sp_modificar_clave ----" + ex);}
        finally{
        return resultado;
        }
}
}


    