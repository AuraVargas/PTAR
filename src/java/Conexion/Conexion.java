/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.sql.Statement;

public class Conexion {
    
    static Connection contacto = null;
    
    public static Connection Conectar(){
        
        String url = "jdbc:sqlserver://localhost:1433;databaseName=PTAR";
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        }catch (ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, "No se pudo establecer la conexion... revisar Driver" + e.getMessage(), "Error de Conexion",JOptionPane.ERROR_MESSAGE);
        }
        try{
            contacto = DriverManager.getConnection(url,"UsuarioSQL","123");
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Error" + e.getMessage(), "Error de Conexion",JOptionPane.ERROR_MESSAGE);
            
        }
        return contacto;
    }
    public static void main(String[] args) throws SQLException {
        Conexion.Conectar();
        Statement st =contacto.createStatement();
        ResultSet rs = st.executeQuery("select * from usuarios");
        
        while(rs.next()){
            int id = rs.getInt(1);
            String nombre = rs.getString(2);
            System.out.println(id+" "+nombre);
        }
    }
//        
//    public static ResultSet Consulta(String consulta){
//        Connection con = getConexion();
//        Statement declara;
//        try{
//            declara = con.createStatement();
//            ResultSet respuesta = declara.executeQuery(consulta);
//            return respuesta;
//        }catch(SQLException e){    
//            JOptionPane.showMessageDialog(null, "Error" + e.getMessage(), "Error de Conexion",JOptionPane.ERROR_MESSAGE);
//        }
//        return null;
//    }
//    public static Connection obtenerConexion(){
//        if(contacto == null){
//            Conexion conexion = new Conexion();
//        }
//        return contacto;
//    }
    
}
