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
import modelos.vo.RepresentanteVO;
import modelos.vo.UsuarioVO;

/**
 *
 * @author HP
 */
public class RepresentanteDAO implements Crud{
        Connection cn = Conectar();
    private RepresentanteVO vo;
    private PreparedStatement ps;
    private ResultSet rs;
    private int r=0;


    public RepresentanteDAO(RepresentanteVO vo) {

        this.cn = Conexion.Conectar();
        this.vo = vo;
    }
    //Fijate en este AURA!!
    @Override
        public UsuarioVO validar (String Representante, String Contrasena){
            UsuarioVO u = null;
        return u;
        }
        
    @Override
    public Object consultar() {
        try {
            String consulta = "exec consultarRepresentante ?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setLong(1, vo.getIDrepresentante());
            ResultSet resultSet = ps.executeQuery();

            RepresentanteVO temp = new RepresentanteVO();
            while (resultSet.next()) {
                temp.setIDrepresentante(resultSet.getInt("IDrepresentante"));
                temp.setNombre(resultSet.getString("nombre"));

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
                String sentencia = "exec eliminarRepresentante ? ";
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getIDrepresentante());
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
                String sentencia = "exec registrarRepresentante "
                        + "?,?,?,?";
                PreparedStatement ps = this.cn.prepareStatement(sentencia, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, vo.getIDrepresentante());
                ps.setString(2, vo.getCorreo());
                ps.setString(3, vo.getNombre());
                ps.setInt(4, vo.getTelefono());
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
                String sentencia = "exec actualizarRepresentante "
                        + "?,?,?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setString(2, vo.getCorreo());
                ps.setString(3, vo.getNombre());
                ps.setInt(4, vo.getTelefono());
                ps.setInt(1, vo.getIDrepresentante());
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
            String consulta = "SELECT * FROM Representantes";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ResultSet resultSet = ps.executeQuery();

            ArrayList<RepresentanteVO> list = new ArrayList<RepresentanteVO>();

            while (resultSet.next()) {
                RepresentanteVO temp = new RepresentanteVO();
                temp.setIDrepresentante(resultSet.getInt("idrepresentante"));
                temp.setNombre(resultSet.getString("nombre"));
                list.add(temp);
            }
            return (ArrayList<Object>) (Object) list;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public static void main(String[] args) throws SQLException {
        RepresentanteVO vo = new RepresentanteVO();
        
        RepresentanteDAO dao = new RepresentanteDAO(vo);
        
        vo.setCorreo("aa@dd.com");
        vo.setNombre("juan");
        vo.setTelefono(1345223);
        vo.setIDrepresentante(9876);
        if (dao.registrar()) {
            System.out.println("registrado exitosamente");
        } else {
            System.out.println("error en el registro");
        }
            RepresentanteVO pru = (RepresentanteVO)dao.consultar();
            System.out.println(pru.getNombre());

//            vo.setNombre("Juancito");
//            dao.actualizar();
//            dao.eliminar();
//            
            
    }
}
