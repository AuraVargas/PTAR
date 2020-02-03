/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos.dao;

import Conexion.Conexion;
import static Conexion.Conexion.Conectar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelos.vo.UsuarioVO;

/**
 *
 * @author Santi
 */
public class UsuarioDAO implements Crud {

    Connection cn = Conectar();
    private UsuarioVO vo;
    private PreparedStatement ps;
    private ResultSet rs;
    private int r = 0;

    public UsuarioDAO(UsuarioVO vo) {

        this.cn = Conexion.Conectar();
        this.vo = vo;
    }

    //Fijate en este AURA!!
    @Override
     public int validar(String Usuario, String Contrasena) {
        int r = 0;
        try {
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = cn.prepareStatement("exec Inicio ?,?");
            ps.setString(1, Usuario);
            ps.setString(2, Contrasena);
            rs = ps.executeQuery();
            if (rs.next() == true) {
                r = 1;
                cn.close();
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return r;
    }

    @Override
    public Object consultar() {
       try {
            String consulta = "exec consultarUsu ?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setLong(1, vo.getID());
            ResultSet resultSet = ps.executeQuery();
            UsuarioVO temp = new UsuarioVO();
            while (resultSet.next()) {
                temp.setID((int) Long.parseLong(resultSet.getString("ID")));
                temp.setUsuario(resultSet.getString("Usuario"));
                temp.setNombre(resultSet.getString("nombre"));
                temp.setContrasena(resultSet.getString("Contrasena"));
                temp.setEmail(resultSet.getString("Email"));
                temp.setTelefono((int) resultSet.getLong("telefono"));
                temp.setRol(resultSet.getString("Rol"));
            }
            if (temp.getNombre()!= null) {
                return temp;
            } else {
                return null;
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return null;
    }

    @Override
    public boolean eliminar() {
        try {
            if (this.consultar() != null) {
                String sentencia = "exec borrarUsu ? ";
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setLong(1, vo.getID());
                ps.execute();

                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public boolean registrar() {
        try {

            if (this.consultar() == null) {
                String sentencia = "exec crearUsu " + "?,?,?,?,?,?,?";
                PreparedStatement ps = this.cn.prepareStatement(sentencia, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, vo.getID());
                ps.setString(2, vo.getUsuario());
                ps.setString(3, vo.getContrasena());
                ps.setInt(4, vo.getTelefono());
                ps.setString(5, vo.getNombre());
                ps.setString(6, vo.getEmail());
                ps.setString(7, vo.getRol());
                ps.execute();

                ps.getGeneratedKeys();
                return true;
            } else {
                return false;
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public boolean actualizar() {
        try {
            if (this.consultar() != null) {
                String sentencia = "exec actulizarUsu "
                        + "?,?,?,?,?,?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getID());
                ps.setString(2, vo.getUsuario());
                ps.setString(3, vo.getContrasena());
                ps.setInt(4, vo.getTelefono());
                ps.setString(5, vo.getNombre());
                ps.setString(6, vo.getEmail());
                ps.setString(7, vo.getRol());
                ps.execute();

                return true;
            } else {
                return false;
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public ArrayList<Object> listar() {
        try {
            String consulta = "SELECT * FROM Usuarios";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ResultSet resultSet = ps.executeQuery();

            ArrayList<UsuarioVO> list = new ArrayList<UsuarioVO>();

            while (resultSet.next()) {
                UsuarioVO temp = new UsuarioVO();
                temp.setID((int) Long.parseLong(resultSet.getString("ID")));
                temp.setUsuario(resultSet.getString("Usuario"));
                temp.setNombre(resultSet.getString("nombre"));
                temp.setContrasena(resultSet.getString("Contrasena"));
                temp.setEmail(resultSet.getString("Email"));
                temp.setTelefono((int) resultSet.getLong("telefono"));
                temp.setRol(resultSet.getString("Rol"));
                list.add(temp);
            }
            return (ArrayList<Object>) (Object) list;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }


    public static void main(String[] args) throws SQLException {

        UsuarioVO vo = new UsuarioVO();
        vo.setID(23456);
        UsuarioDAO dao = new UsuarioDAO(vo);

        ArrayList<UsuarioVO> pru =(ArrayList) dao.listar();
for(UsuarioVO obj : pru){
//    System.out.println(obj.getNombre());
//        vo.setUsuario("Juan25");
//        vo.setContrasena("12334");
//        vo.setNombre("Pepito");
//        vo.setTelefono(300300300);
//        vo.setEmail("dm@dm.co");
//        vo.setRol("funcionario");
//        if (dao.actualizar()) {
//            System.out.println("actualizacion exitosa");
//        } else {
//            System.out.println("error en la actualizacion");
//        }
//        vo.setID(123456);
//        UsuarioVO temp = (UsuarioVO)dao.consultar();
//        dao.consultar();
//        
        System.out.println(obj.getUsuario());
        System.out.println(obj.getContrasena());
}
    }
    public Object autenticar() {
        try {
            String consulta = "SELECT * FROM Usuarios WHERE ID=?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setLong(1, vo.getID());
            ps.setString(2, vo.getContrasena());
            ResultSet resultSet = ps.executeQuery();

            UsuarioVO temp = new UsuarioVO();
            while (resultSet.next()) {
                temp.setUsuario(resultSet.getString("Usuario"));
                temp.setTelefono((int) resultSet.getLong("telefono"));
                temp.setNombre(resultSet.getString("nombre"));
                temp.setEmail(resultSet.getString("Email"));

            }
            if (temp.getNombre() != null) {
                return temp;
            } else {
                return null;
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return null;
    }

}
