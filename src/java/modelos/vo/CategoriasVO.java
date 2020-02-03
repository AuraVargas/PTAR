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
public class CategoriasVO {
    private int codigo;
    private String NombreCat;

    public CategoriasVO() {
    }

    public int getCodigo() {
        return codigo;
    }

    public String getNombreCat() {
        return NombreCat;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setNombreCat(String NombreCat) {
        this.NombreCat = NombreCat;
    }
    
}
