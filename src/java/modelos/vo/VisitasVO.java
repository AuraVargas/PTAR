/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos.vo;

/**
 *
 * @author HP
 */
public class VisitasVO extends AgendaVO{
    private int codigov;
    private int numeroPersonas;
    private int encargadoID;
    private int empresa;

    public void setEmpresa(int empresa) {
        this.empresa = empresa;
    }

    public int getEmpresa() {
        return empresa;
    }
    
    public VisitasVO() {
    }

    public int getCodigov() {
        return codigov;
    }

    public int getNumeroPersonas() {
        return numeroPersonas;
    }

    public int getEncargadoID() {
        return encargadoID;
    }

    public void setCodigov(int codigov) {
        this.codigov = codigov;
    }

    public void setNumeroPersonas(int numeroPersonas) {
        this.numeroPersonas = numeroPersonas;
    }

    public void setEncargadoID(int encargadoID) {
        this.encargadoID = encargadoID;
    }
}
