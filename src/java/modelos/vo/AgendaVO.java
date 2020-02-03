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
public class AgendaVO extends EmpresaVO {
    private int codigoa;
    private String fecha;
    private String Descripcion;
    private String estado;
    private String tipo;
    private int FKUidentificacion;

    public AgendaVO() {
    }

    public int getCodigoa() {
        return codigoa;
    }

    public String getFecha() {
        return fecha;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public String getEstado() {
        return estado;
    }

    public String getTipo() {
        return tipo;
    }

    public int getFKUidentificacion() {
        return FKUidentificacion;
    }

    public void setCodigoa(int codigoa) {
        this.codigoa = codigoa;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setFKUidentificacion(int FKUidentificacion) {
        this.FKUidentificacion = FKUidentificacion;
    }
    
}
