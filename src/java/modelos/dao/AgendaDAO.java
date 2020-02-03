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
import modelos.vo.AgendaVO;

/**
 *
 * @author HP
 */
public class AgendaDAO implements Crud{
    Connection cn = Conectar();
    private AgendaVO vo;
    private PreparedStatement ps;
    private ResultSet rs;
    private int r=0;


    public AgendaDAO(AgendaVO vo) {

        this.cn = Conexion.Conectar();
        this.vo = vo;
    }
    //Fijate en este AURA!!
    @Override
        public int validar (String Agenda, String Contrasena){
        return 0;
        }
        public int validar2 (int coda){
        int r=0;
        try {
            PreparedStatement ps = null;
            ResultSet rs= null;
            ps = cn.prepareStatement("exec consultarAgenda ?");
            ps.setLong(1, vo.getCodigoa());
            rs=ps.executeQuery();
            if(rs.next()==true){
                r=1;
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
            String consulta = "exec consultarAgenda ?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setLong(1, vo.getCodigoa());
            ResultSet resultSet = ps.executeQuery();

            AgendaVO temp = new AgendaVO();
            while (resultSet.next()) {
                temp.setCodigoa(resultSet.getInt("codigoe"));
                temp.setEstado(resultSet.getString("estado"));
                temp.setFecha(resultSet.getString("fecha"));
                temp.setDescripcion(resultSet.getString("descripcion"));
                temp.setTipo(resultSet.getString("tipoevento"));

            }
            if (temp.getEstado()!= null) {
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
                String sentencia = "exec eliminarAgenda ? ";
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getCodigoa());
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
                String sentencia = "exec registrarAgenda "
                        + "?,?,?,?,?,?";
                PreparedStatement ps = this.cn.prepareStatement(sentencia, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, vo.getCodigoa());
                ps.setString(2, vo.getFecha());
                ps.setString(3, vo.getDescripcion());
                ps.setString(4, vo.getEstado());
                ps.setString(5, vo.getTipo());
                ps.setInt(6, vo.getFKUidentificacion());
                ps.execute();

                ps.getGeneratedKeys();
                return true;
           

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return false;
    }
    @Override
    public boolean actualizar() {
        try {
            if (this.consultar() != null) {
                String sentencia = "exec actualizarAgenda "
                        + "?,?,?,?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setString(1, vo.getFecha());
                ps.setString(2, vo.getDescripcion());
                ps.setString(3, vo.getEstado());
                ps.setString(4, vo.getTipo());
                ps.setInt(5, vo.getCodigoa());
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
            String consulta = "SELECT * FROM agenda";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ResultSet resultSet = ps.executeQuery();

            ArrayList<AgendaVO> list = new ArrayList<AgendaVO>();

            while (resultSet.next()) {
                AgendaVO temp = new AgendaVO();
                temp.setCodigoa(resultSet.getInt("codigoe"));
                temp.setFecha(resultSet.getString("Fecha"));
                temp.setDescripcion(resultSet.getString("Descripcion"));
                temp.setTipo(resultSet.getString("tipoevento"));
                temp.setEstado(resultSet.getString("estado"));
                list.add(temp);
            }
            return (ArrayList<Object>) (Object) list;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public static void main(String[] args) throws SQLException {
        AgendaVO vo = new AgendaVO();
        
        AgendaDAO dao = new AgendaDAO(vo);
        vo.setCodigoa(1909);
        vo.setFecha("2019/10/29");
        vo.setDescripcion("pos fue cancelado we");
        vo.setEstado("desactivo");
        vo.setTipo("prueba 2");
        vo.setFKUidentificacion(12);
        dao.registrar();
//ArrayList<AgendaVO> pru =(ArrayList) dao.listar();
//for(AgendaVO obj : pru){
//    System.out.println(obj.getDescripcion());
//}
//vo.setCodigoa(5);
//            AgendaVO pru = (AgendaVO)dao.consultar();
//            vo.setCodigo(1);
//            vo.setNombreCat("esox3");
//            dao.actualizar();
//            dao.eliminar();
//            
//            
    }
}
