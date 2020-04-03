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
import modelos.vo.EmpresaVO;
import modelos.vo.UsuarioVO;

/**
 *
 * @author HP
 */
public class EmpresaDAO implements Crud{
            Connection cn = Conectar();
    private EmpresaVO vo;
    private PreparedStatement ps;
    private ResultSet rs;
    private int r=0;


    public EmpresaDAO(EmpresaVO vo) {

        this.cn = Conexion.Conectar();
        this.vo = vo;
    }
    //Fijate en este AURA!!
    @Override
        public UsuarioVO validar (String Empresa, String Contrasena){
        UsuarioVO u = null;
        return u;
        }
        public int validar2 (int nit){
        int r=0;
        try {
            PreparedStatement ps = null;
            ResultSet rs= null;
            ps = cn.prepareStatement("exec consultarEmpresa ?");
            ps.setLong(1, vo.getNit());
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
            String consulta = "exec consultarEmpresa ?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setLong(1, vo.getNit());
            ResultSet resultSet = ps.executeQuery();

            EmpresaVO temp = new EmpresaVO();
            while (resultSet.next()) {
                temp.setNit(resultSet.getInt("nit"));
                temp.setNombreE(resultSet.getString("nombre"));

            }
            if (temp.getNombreE()!= null) {
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
                String sentencia = "exec eliminarEmpresa ? ";
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getNit());
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
                String sentencia = "exec registrarEmpresa "
                        + "?,?,?";
                PreparedStatement ps = this.cn.prepareStatement(sentencia, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, vo.getNit());
                ps.setString(3, vo.getNombreE());
                ps.setInt(2, vo.getRepresentante());
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
                String sentencia = "exec actualizarEmpresa "
                        + "?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getNit());
                ps.setString(2, vo.getNombreE());
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
            String consulta = "SELECT * FROM Empresas";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ResultSet resultSet = ps.executeQuery();

            ArrayList<EmpresaVO> list = new ArrayList<EmpresaVO>();

            while (resultSet.next()) {
                EmpresaVO temp = new EmpresaVO();
                temp.setNit(resultSet.getInt("nit"));
                temp.setNombreE(resultSet.getString("nombre"));
                list.add(temp);
            }
            return (ArrayList<Object>) (Object) list;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public static void main(String[] args) throws SQLException {
        EmpresaVO vo = new EmpresaVO();
        
        EmpresaDAO dao = new EmpresaDAO(vo);
        vo.setNit(99999);
        vo.setNombreE("nnnnnnnn");
        vo.setRepresentante(9876);
        if (dao.registrar()) {
            System.out.println("registrado exitosamente");
        } else {
            System.out.println("error en el registro");
        }
            EmpresaVO pru = (EmpresaVO)dao.consultar();
            System.out.println(pru.getNombreE());

//            vo.setNombreE("ppppppp");
//            dao.actualizar();
//            dao.eliminar();
//            
            
    }
}
