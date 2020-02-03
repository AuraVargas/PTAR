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
public class RepresentanteVO{
    private int IDrepresentante;
    private String correo;
    private String nombre;
    private int Telefono;

    public RepresentanteVO() {
    }

    public int getIDrepresentante() {
        return IDrepresentante;
    }

    public String getCorreo() {
        return correo;
    }

    public String getNombre() {
        return nombre;
    }

    public int getTelefono() {
        return Telefono;
    }

    public void setIDrepresentante(int IDrepresentante) {
        this.IDrepresentante = IDrepresentante;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setTelefono(int Telefono) {
        this.Telefono = Telefono;
    }
    
}
