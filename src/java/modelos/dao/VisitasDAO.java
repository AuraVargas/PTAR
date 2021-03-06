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
import modelos.vo.UsuarioVO;
import modelos.vo.VisitasVO;

/**
 *
 * @author HP
 */
public class VisitasDAO implements Crud {
   Connection cn = Conectar();
    private VisitasVO vo;
    private PreparedStatement ps;
    private ResultSet rs;
    private int r=0;

    public VisitasDAO(VisitasVO vo) {

        this.cn = Conexion.Conectar();
        this.vo = vo;
    }
    //Fijate en este AURA!!
    @Override
        public UsuarioVO validar (String Visitas, String Contrasena){
            UsuarioVO u = null;
        return u;
        }
        
    @Override
    public Object consultar() {
        try {
            String consulta = "exec consultaEspvisita ?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setInt(1, vo.getCodigov());
            ResultSet resultSet = ps.executeQuery();

            VisitasVO temp = new VisitasVO();
            while (resultSet.next()) {
                temp.setCodigov(resultSet.getInt("codigoV"));
                temp.setNumeroPersonas(resultSet.getInt("NumeroPersonas"));
                temp.setCodigoa(resultSet.getInt("codia"));
                temp.setNit(resultSet.getInt("Nit"));
                temp.setNombreE(resultSet.getString("nombreEmp"));
                temp.setEncargadoID(resultSet.getInt("idrepresentante"));
                temp.setNombre(resultSet.getString("nombre"));
                temp.setCorreo(resultSet.getString("correo"));
                temp.setTelefono(resultSet.getInt("telefono"));
                temp.setFecha(resultSet.getString("fecha"));
                temp.setHoraInicio(resultSet.getString("horaInicio"));
                temp.setHoraFin(resultSet.getString("horaFin"));
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
    
    public ArrayList<Object> consultar2() {
        try {
            String consulta = "exec consultarvisitas ?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setString(1, "%"+vo.getNombreE()+"%");
            ResultSet resultSet = ps.executeQuery();

            ArrayList<VisitasVO> list = new ArrayList<VisitasVO>();

            while (resultSet.next()) {
                VisitasVO temp = new VisitasVO();
                temp.setCodigov(resultSet.getInt("codigoV"));
                temp.setNumeroPersonas(resultSet.getInt("NumeroPersonas"));
                temp.setCodigoa(resultSet.getInt("codia"));
                temp.setNit(resultSet.getInt("Nit"));
                temp.setNombreE(resultSet.getString("nombreEmp"));
                temp.setEncargadoID(resultSet.getInt("idrepresentante"));
                temp.setNombre(resultSet.getString("nombre"));
                temp.setCorreo(resultSet.getString("correo"));
                temp.setTelefono(resultSet.getInt("telefono"));
                temp.setFecha(resultSet.getString("fecha"));
                list.add(temp);
            }
            return (ArrayList<Object>) (Object) list;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }
    
    @Override
    public boolean eliminar() {
        try {
            if (this.consultar() != null) {
                String sentencia = "exec eliminaragenda ? ";
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getCodigov());
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
                String sentencia = "exec registrarVisitas "
                        + "?,?,?,?";
                PreparedStatement ps = this.cn.prepareStatement(sentencia, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, vo.getNumeroPersonas());
                ps.setInt(2, vo.getEncargadoID());
                ps.setInt(3, vo.getCodigoa());
                ps.setInt(4, vo.getEmpresa());
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
                String sentencia = "exec actualizarVisitas "
                        + "?,?,?,?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getNumeroPersonas());
                ps.setInt(2, vo.getEncargadoID());
                ps.setInt(3, vo.getCodigoa());
                ps.setInt(4, vo.getEmpresa());
                ps.setInt(5, vo.getCodigov());
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
            String consulta = "SELECT * FROM visitasCom";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ResultSet resultSet = ps.executeQuery();

            ArrayList<VisitasVO> list = new ArrayList<VisitasVO>();

            while (resultSet.next()) {
                VisitasVO temp = new VisitasVO();
                temp.setCodigov(resultSet.getInt("codigoV"));
                temp.setNumeroPersonas(resultSet.getInt("NumeroPersonas"));
                temp.setCodigoa(resultSet.getInt("codia"));
                temp.setNit(resultSet.getInt("Nit"));
                temp.setDescripcion(resultSet.getString("descripcion"));
                temp.setNombreE(resultSet.getString("nombreEmp"));
                temp.setEncargadoID(resultSet.getInt("idrepresentante"));
                temp.setNombre(resultSet.getString("nombre"));
                temp.setCorreo(resultSet.getString("correo"));
                temp.setFecha(resultSet.getString("fecha"));
                temp.setTitulo(resultSet.getString("titulo"));
                temp.setEstado(resultSet.getString("estado"));
                temp.setTelefono(resultSet.getInt("telefono"));
                
                list.add(temp);
            }
            return (ArrayList<Object>) (Object) list;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }
    public static void main(String[] args) throws SQLException {
        VisitasVO vo = new VisitasVO();
        
        VisitasDAO dao = new VisitasDAO(vo);
        
        vo.setNumeroPersonas(10);
        vo.setEncargadoID(3456);
        vo.setCodigoa(7627);
        vo.setEmpresa(45678);
        dao.registrar();
//vo.setDescripcion("g");
//ArrayList<VisitasVO> pru =(ArrayList) dao.consultar2();
//for(VisitasVO obj : pru){

//vo.setCodigov(4);
//VisitasVO obj =(VisitasVO) dao.consultar();
//            
//            System.out.println(obj.getCodigov());
//            vo.setCodigo(1);
//            vo.setNombreCat("esox3");
//            dao.actualizar();
//            dao.eliminar();
//            

//    }
}
}