/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos.vo;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;


public class EmpresaVO extends RepresentanteVO {
    private int Nit;
    private int representante;
    private String descripcion;

    public EmpresaVO() {
    }

    public int getNit() {
        return Nit;
    }

    public int getRepresentante() {
        return representante;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setNit(int Nit) {
        this.Nit = Nit;
    }

    public void setRepresentante(int representante) {
        this.representante = representante;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public static void main(String[] args) {
        Calendar c1 = Calendar.getInstance();
        Calendar c2 = new GregorianCalendar();
        String dia = Integer.toString(c1.get(Calendar.DATE));
        String mes = Integer.toString(c2.get(Calendar.MONTH));
        if (mes.length()==1){
            mes="0"+mes;
        }
        if (dia.length()==1){
            dia="0"+dia;
        }
        System.out.println(c1.getWeekYear()+"/"+mes+"/"+dia);
    }
}
