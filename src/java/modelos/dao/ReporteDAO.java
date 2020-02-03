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
import modelos.vo.ReporteVO;
import java.text.ParseException;
import sun.util.calendar.JulianCalendar;

/**
 *
 * @author HP
 */
public class ReporteDAO implements Crud {
        Connection cn = Conectar();
    private ReporteVO vo;
    private PreparedStatement ps;
    private ResultSet rs;
    private int r=0;


    public ReporteDAO(ReporteVO vo) {

        this.cn = Conexion.Conectar();
        this.vo = vo;
    }
    //Fijate en este AURA!!
    @Override
        public int validar (String Reporte, String Contrasena){
        return 0;
        }
        public int validar2 (int idr){
        int r=0;
        try {
            PreparedStatement ps = null;
            ResultSet rs= null;
            ps = cn.prepareStatement("exec consultarreporte ?");
            ps.setLong(1, vo.getCodigoReporte());
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
            String consulta = "exec consultarreporte ?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setLong(1, vo.getCodigoReporte());
            ResultSet resultSet = ps.executeQuery();

            ReporteVO temp = new ReporteVO();
            while (resultSet.next()) {
                temp.setCodigoReporte(resultSet.getInt("codigor"));
                temp.setNombreR(resultSet.getString("nombre"));
                temp.setFecha(resultSet.getString("fecha"));
                temp.setFKRcategoria(resultSet.getInt("idcategorias"));

            }
            if (temp.getNombreR()!= null) {
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
                String sentencia = "exec eliminarreporte ? ";
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getCodigoReporte());
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
                String sentencia = "exec registrarReporte "
                        + "?,?,?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setString(1, vo.getNombreR());
                ps.setString(2, vo.getFecha());
                ps.setInt(3, vo.getFKRcategoria());
                ps.setInt(4, vo.getFKRusuario());
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
                String sentencia = "exec actualizarReporte "
                        + "?,?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setString(1, vo.getNombreR());
                ps.setString(2, vo.getFecha());
                ps.setInt(3, vo.getCodigoReporte());
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
            String consulta = "select * from Reportes where idcategorias = ?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setInt(1, vo.getFKRcategoria());
            ResultSet resultSet = ps.executeQuery();

            ArrayList<ReporteVO> list = new ArrayList<ReporteVO>();

            while (resultSet.next()) {
                ReporteVO temp = new ReporteVO();
                temp.setCodigoReporte(resultSet.getInt("codigor"));
                temp.setNombreR(resultSet.getString("nombre"));
                temp.setFecha(resultSet.getString("fecha"));
                temp.setFKRcategoria(resultSet.getInt("idcategorias"));
                list.add(temp);
            }
            return (ArrayList<Object>) (Object) list;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public static void main(String[] args) throws SQLException {
        ReporteVO vo = new ReporteVO();
        
        ReporteDAO dao = new ReporteDAO(vo);
//        vo.setNombreR("reporte 4");
//        vo.setFecha("2019/10/29");
//        vo.setFKRcategoria(2);
//        vo.setFKRusuario(12);
//        if (dao.registrar()) {
//            System.out.println("registrado exitosamente");
//        } else {
//            System.out.println("error en el registro");
//        }
vo.setCodigoReporte(19);
            ReporteVO pru = (ReporteVO)dao.consultar();
            System.out.println(pru.getCodigoReporte());
//            vo.setCodigo(1);
//            vo.setNombreCat("esox3");
//            dao.actualizar();
//            dao.eliminar();
//            
            
    }
}
