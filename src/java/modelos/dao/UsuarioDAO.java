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

    @Override
     public UsuarioVO validar(String Usuario, String Contrasena) {
        UsuarioVO u = null;
        try {
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = cn.prepareStatement("exec Inicio ?,?");
            ps.setString(1, Usuario);
            ps.setString(2, Contrasena);
            rs = ps.executeQuery();
            if (rs.next()) {
                u = new UsuarioVO();
                u.setID(rs.getInt(1));
                u.setContrasena(rs.getString(2));
                u.setTelefono(rs.getInt(3));
                u.setNombre(rs.getString(4));
                u.setApellido(rs.getString(5));
                u.setEmail(rs.getString(6));
                u.setRol(rs.getString(7));
            }
            
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return u;
     }
     
     public int validar2 (String Correo){
        int r=0;
        try {
            PreparedStatement ps = null;
            ResultSet rs= null;
            ps = cn.prepareStatement("exec adviseWith ?");
            ps.setString(1, Correo);
            rs=ps.executeQuery();
            if(rs.next()==true){
                r=1;
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
                temp.setNombre(resultSet.getString("nombre"));
                temp.setApellido(resultSet.getString("APellido"));
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
    public Object consultarContra() {
        try {
            String consultarContra = "exec adviseWith ?";
            PreparedStatement ps1 = this.cn.prepareStatement(consultarContra);
            ps1.setString(1, vo.getEmail());
            ResultSet resultSet = ps1.executeQuery();

            UsuarioVO temp = new UsuarioVO();
            while (resultSet.next()) {
                temp.setContrasena(resultSet.getString("Contrasena"));
                temp.setEmail(resultSet.getString("Email"));
            }
            if (temp.getEmail() != null) {
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
        return false;
    }

    @Override
    public boolean registrar() {
        try {

            if (this.consultar() == null) {
                String sentencia = "exec crearUsu " + "?,?,?,?,?,?,?";
                PreparedStatement ps = this.cn.prepareStatement(sentencia, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, vo.getID());
                ps.setString(2, vo.getContrasena());
                ps.setInt(3, vo.getTelefono());
                ps.setString(4, vo.getNombre());
                ps.setString(5, vo.getApellido());
                ps.setString(6, vo.getEmail());
                ps.setString(7, "Ayudante");
                ps.setString(8, "Activo");
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
                        + "?,?,?,?,?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getID());
                ps.setInt(2, vo.getTelefono());
                ps.setString(3, vo.getNombre());
                ps.setString(4, vo.getApellido());
                ps.setString(5, vo.getEmail());
                ps.setString(6, vo.getEstado());
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
    public boolean olvidePassword() {
        try {
            if (this.consultarContra() != null) {
                String sentencia = "exec recoverPassword "
                        +"?";
                System.out.println(sentencia);
                PreparedStatement ps1 = this.cn.prepareStatement(sentencia);
                ps1.setString(1, vo.getEmail());
                ps1.execute();

                return true;
            } else {
                return false;
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return false;
    }
    public boolean contrasena(){
        try {
            if (this.consultar() != null) {
                String sentencia = "exec upPassword "
                        + "?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getID());
                ps.setString(2, vo.getContrasena());
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
                temp.setNombre(resultSet.getString("nombre"));
                temp.setApellido(resultSet.getString("apellido"));
                temp.setContrasena(resultSet.getString("Contrasena"));
                temp.setEmail(resultSet.getString("Email"));
                temp.setTelefono((int) resultSet.getLong("telefono"));
                temp.setRol(resultSet.getString("Rol"));
                temp.setEstado(resultSet.getString("Estado"));
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

        ArrayList<UsuarioVO> pru =(ArrayList) dao.listarFuncionario();
for(UsuarioVO obj : pru){
    System.out.println(obj.getEmail());
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
                temp.setTelefono((int) resultSet.getLong("telefono"));
                temp.setNombre(resultSet.getString("nombre"));
                temp.setApellido(resultSet.getString("apellido"));
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
    }public ArrayList<Object> listarFuncionario() {
        try {
            String consulta = "SELECT * FROM Usuarios where rol = 'Funcionario'";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ResultSet resultSet = ps.executeQuery();

            ArrayList<UsuarioVO> list = new ArrayList<UsuarioVO>();

            while (resultSet.next()) {
                UsuarioVO temp = new UsuarioVO();
                temp.setEmail(resultSet.getString("Email"));
                list.add(temp);
            }
            return (ArrayList<Object>) (Object) list;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

}
