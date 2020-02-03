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
public class ReporteVO {
    private int CodigoReporte;
    private String nombreR;
    private String fecha;
    private int FKRcategoria;
    private int FKRusuario;

    public ReporteVO() {
    }

    public int getCodigoReporte() {
        return CodigoReporte;
    }

    public String getNombreR() {
        return nombreR;
    }

    public String getFecha() {
        return fecha;
    }

    public int getFKRcategoria() {
        return FKRcategoria;
    }

    public int getFKRusuario() {
        return FKRusuario;
    }

    public void setCodigoReporte(int CodigoReporte) {
        this.CodigoReporte = CodigoReporte;
    }

    public void setNombreR(String nombreR) {
        this.nombreR = nombreR;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setFKRcategoria(int FKRcategoria) {
        this.FKRcategoria = FKRcategoria;
    }

    public void setFKRusuario(int FKRusuario) {
        this.FKRusuario = FKRusuario;
    }
    
}
