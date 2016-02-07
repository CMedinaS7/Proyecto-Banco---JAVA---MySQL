/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author Carlos J Medina
 */


public class cuenta {

    
    private double monto;

    //Constructor de la clase sin parametros
    public cuenta() {
    }
    //Constructor de la clase con parametros
    public cuenta(double monto) {
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
}
