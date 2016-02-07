/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.insertar;
import Dao.busquedas;
import Beans.usuario;
/**
 *
 * @author user
 */
public class ValidarOperacion extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      
        insertar grabar=new insertar();
        busquedas buscar=new busquedas();
        usuario user;
        boolean resultado=false;
        double monto=Double.parseDouble(request.getParameter("txtmonto"));
        String tipo=request.getParameter("tipo_servicio");
        String clave1=request.getParameter("clave_tarjeta1");
        String clave2=request.getParameter("clave_tarjeta2");
        String cliente=request.getParameter("cliente");
        String ctabancaria=request.getParameter("ctabancaria");
        String servicio="";
        String cuenta="";
        
        System.out.println(request.getParameter("txtmonto"));
        System.out.println(monto);
        
        if (tipo !=null){
        servicio=tipo;
        cuenta="570-19653197-0-60";
        tipo="-";
        }
        
        user=buscar.consultar_claves(clave1, clave2);
        
        if (user!= null){
        resultado=grabar.RealizarOperacion(monto, tipo, servicio, cuenta, cliente, ctabancaria);
        if (resultado){
            response.sendRedirect("pago_servicio.jsp?ok=ok");
        }else{
            response.sendRedirect("pago_servicio.jsp?e=0");
        }
        }else{
        response.sendRedirect("pago_servicio.jsp?e=1");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
