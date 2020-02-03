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
import modelos.vo.CategoriasVO;

/**
 *
 * @author HP
 */
public class CategoriasDAO implements Crud {
    Connection cn = Conectar();
    private CategoriasVO vo;
    private PreparedStatement ps;
    private ResultSet rs;
    private int r=0;


    public CategoriasDAO(CategoriasVO vo) {

        this.cn = Conexion.Conectar();
        this.vo = vo;
    }
    //Fijate en este AURA!!
    @Override
        public int validar (String Categorias, String Contrasena){
        return 0;
        }

    @Override
    public Object consultar() {
        try {
            String consulta = "exec consultarcategoria ?";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ps.setLong(1, vo.getCodigo());
            ResultSet resultSet = ps.executeQuery();

            CategoriasVO temp = new CategoriasVO();
            while (resultSet.next()) {
                temp.setCodigo((int)resultSet.getInt("codigoc"));
                temp.setNombreCat(resultSet.getString("nombrecategoria"));

            }
            if (temp.getNombreCat() != null) {
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
                String sentencia = "exec eliminarcategoria ? ";
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setInt(1, vo.getCodigo());
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
                String sentencia = "execute registrarcategoria "
                        + "?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setString(1, vo.getNombreCat());
                ps.execute();
                ps.getGeneratedKeys();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public boolean actualizar() {
        try {
            if (this.consultar() != null) {
                String sentencia = "exec actualizarcategoria "
                        + "?,?";
                System.out.println(sentencia);
                PreparedStatement ps = this.cn.prepareStatement(sentencia);
                ps.setString(2, vo.getNombreCat());
                ps.setInt(1, vo.getCodigo());
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
            String consulta = "SELECT * FROM Categorias order by nombrecategoria";
            PreparedStatement ps = this.cn.prepareStatement(consulta);
            ResultSet resultSet = ps.executeQuery();

            ArrayList<CategoriasVO> list = new ArrayList<CategoriasVO>();

            while (resultSet.next()) {
                CategoriasVO temp = new CategoriasVO();
                temp.setCodigo(resultSet.getInt("codigoc"));
                temp.setNombreCat(resultSet.getString("nombreCategoria"));
                list.add(temp);
            }
            return (ArrayList<Object>) (Object) list;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public static void main(String[] args) throws SQLException {
        CategoriasVO vo = new CategoriasVO();
        
        CategoriasDAO dao = new CategoriasDAO(vo);
        vo.setNombreCat("siiiii");

//        if (dao.registrar()) {
//            System.out.println("registrado exitosamente");
//        } else {
//            System.out.println("error en el registro");
//        }
//vo.setCodigo(0);
//            CategoriasVO pru = (CategoriasVO)dao.consultar();
//            System.out.println(pru.getNombreCat());
//            vo.setCodigo(1);
//            vo.setNombreCat("esox3");
//            dao.actualizar();
//            dao.eliminar();
            
            
    }
}
