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

import Dao.busquedas;
import Beans.usuario;
import javax.servlet.http.HttpSession;
/**
 *
 * @author user
 */
public class ValidarUsuario extends HttpServlet {

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
        
        //Declaramos variables para capturar los valores del formulario
        String tarjeta=null;
        String clave=null;
        
        //Instanciamos las clases
        usuario user;
        busquedas buscando=new busquedas();
        
        //Capturamos los valores del formulario
        if (request.getParameter("num_tarjeta")!=null) {
            tarjeta=request.getParameter("num_tarjeta");
        }
        if (request.getParameter("clave_tarjeta")!=null) {
            clave=request.getParameter("clave_tarjeta");
        }
        
        //Ejecutamos el metodo logeo_cuenta y lo guardamos en una variable de tipo usuario llamad user
        user=buscando.logeo_cuenta(tarjeta, clave);
        
        //Verificamos que el usuario existe
        if (user!=null) {
        
            //Creamos sesiones para el usuario
            HttpSession sesion=request.getSession();
            sesion.setAttribute("cliente", user.getCliente());
            sesion.setAttribute("tarjeta", user.getTarjeta());
            sesion.setAttribute("cuenta",user.getCuenta());
            sesion.setAttribute("idcliente",user.getIdcliente());
            sesion.setAttribute("idcuentabancaria",user.getIdcuentabancaria());
            sesion.setAttribute("idtarjeta", user.getIdtarjeta());
            //Redireccionamos a la pagina principal cuenta_saldo.jsp
            response.sendRedirect("cuenta_saldo.jsp");
        //Si el usuario no existe o se han ingresado mal los datos
        }else{
            //Redireccionamos a la pagina ingresar_cuenta.jsp con una variable e la cual capturaremos para mostrarle un mensaje
            response.sendRedirect("ingresar_cuenta.jsp?e=1");

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
