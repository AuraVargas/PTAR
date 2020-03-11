/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos.dao;

import java.util.ArrayList;
import modelos.vo.UsuarioVO;

/**
 *
 * @author Santi
 */
public interface Crud {
    
    public UsuarioVO validar(String Usuario, String Contrasena);
    public Object consultar();
    public boolean eliminar();
    public boolean  registrar();
    public boolean actualizar();
    public ArrayList<Object> listar();
}
