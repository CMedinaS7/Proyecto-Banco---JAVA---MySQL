/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.Vector;
import Beans.*;
/**
 *
 * 
 */
public class cargar {
   
   public static synchronized  cuenta ObtenerSaldo(String num_cuenta){
    boolean resultado=false;
    Connection cn=null;
    PreparedStatement  ps=null;
    cuenta ct=new cuenta();
    try{

        cn=conexion.getAccesoBD();
        //Statement st=cn.createStatement();
        String mostrar="select monto from cuenta_bancaria where numero_cuenta='" + num_cuenta + "';";
        ps=cn.prepareStatement(mostrar);
        ResultSet rs=ps.executeQuery();
        while(rs.next())
          {
             ct=new cuenta(rs.getDouble(1));
          }
        
        
    }catch(
            SQLException ex){System.out.println("Error al mostrar monto --- " + ex);
    }
    finally{
        try{
            cn.close();
        }
        catch(SQLException ex1){System.out.println("No existio Conexion --- " + ex1);
        }
        }
      return ct;
    }
   
    public static synchronized  ArrayList<movimientos> ObtenerMovimientos(String num_cuenta){
    boolean resultado=false;
    Connection cn=null;
    PreparedStatement  ps=null;
    ArrayList<movimientos> mv=new ArrayList<movimientos>();
    try{

        cn=conexion.getAccesoBD();
        //Statement st=cn.createStatement();
        String mostrar="select ob.fecha,ob.servicio,ob.monto from cuenta_bancaria cb,operacion_bancaria ob where cb.IdCuentaBancaria=ob.IdCuentaBancaria and cb.Numero_Cuenta='" + num_cuenta + "';";
        ps=cn.prepareStatement(mostrar);
        ResultSet rs=ps.executeQuery();
        while(rs.next())
          {
             movimientos m=new movimientos(rs.getString(1),rs.getString(2),rs.getDouble(3));
             mv.add(m);
          }
        
        
    }catch(
            SQLException ex){System.out.println("Error al mostrar movimientos --- " + ex);
    }
    finally{
        try{
            cn.close();
        }
        catch(SQLException ex1){System.out.println("No existio Conexion --- " + ex1);
        }
        }
      return mv;
    }
  
}
