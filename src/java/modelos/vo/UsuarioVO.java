/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos.vo;

/**
 *
 * @author Santi
 */
public class UsuarioVO {
    //Atributos
    private int ID;
    private String Contrasena;
    private int Telefono;
    private String Nombre;
    private String Apellido;
    private String Email;
    private String Rol;
    private String Estado;

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public void setRol(String Rol) {
        this.Rol = Rol;
    }

    public String getRol() {
        return Rol;
    }
    //Constructor
    public UsuarioVO(int ID) {
        this.ID = ID;
    }
    public UsuarioVO(int ID,String Email,String Contrasena){
    this.ID = ID;
    this.Email = Email;
    this.Contrasena = Contrasena;
    }

    public UsuarioVO() {
         //new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    //Get y Set
    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }

    public int getTelefono() {
        return Telefono;
    }

    public void setTelefono(int Telefono) {
        this.Telefono = Telefono;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    public String getApellido(){
       return Apellido;
    }
    public void setApellido(String Apellido){
        this.Apellido = Apellido;
    }

    public String getEmail() {
        return Email;
    }


    public void setEmail(String Email) {
        this.Email = Email;
    }

    @Override
    public String toString() {
        return "UsuarioVO{" + "ID=" + ID + ", Contrasena=" + Contrasena + ", Telefono=" + Telefono + ", Nombre=" + Nombre + ",Apellido ="+ Apellido +", Email=" + Email + '}';
    }
    

}