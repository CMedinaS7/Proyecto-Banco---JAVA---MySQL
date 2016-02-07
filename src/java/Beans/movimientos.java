/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author Carlos J Medina
 */


public class movimientos {

    private String fecha;
    private String descripcion;
    private double monto;

    //Constructor de la clase sin parametros
    public movimientos() {
    }
    //Constructor de la clase con parametros
    public movimientos(String fecha,String descripcion,double monto) {
        this.fecha=fecha;
        this.descripcion=descripcion;
        this.monto = monto;
    }
    /**
     * @return the monto
     */
    public double getMonto() {
        return monto;
    }

    /**
     * @param monto the monto to set
     */
    public void setMonto(double monto) {
        this.monto = monto;
    }

    /**
     * @return the fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
