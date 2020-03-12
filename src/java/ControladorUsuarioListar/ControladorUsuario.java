/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControladorUsuarioListar;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelos.dao.UsuarioDAO;
import modelos.vo.CorreoVO;
import modelos.vo.UsuarioVO;

/**
 *
 * @author HP
 */
public class ControladorUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String listar="views/Usuario.jsp";
    String add="views/RegistrarUsuario.jsp";
    String passwordUP ="views/EditarPassword.jsp";
    String edit="views/EditarUsuario.jsp";
    String menu="views/Menú.jsp";
    UsuarioVO vo = new UsuarioVO();
    UsuarioDAO dao = new UsuarioDAO(vo);
    int id;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso ="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("menu")){
        acceso=menu;
        }
        if(action.equalsIgnoreCase("listar")){
        acceso=listar;
        }else if(action.equalsIgnoreCase("add")){
        acceso=add;
        }else if(action.equalsIgnoreCase("Registrar")){
//        int ca=dao.validar(listar, action);
//               while (ca > 0) {
//                }
        vo.setID(Integer.parseInt(request.getParameter("ID")));
        vo.setNombre(request.getParameter("nombre"));
        vo.setApellido(request.getParameter("apellido"));
        vo.setTelefono(Integer.parseInt(request.getParameter("telefono")));
        vo.setEmail(request.getParameter("email"));
        vo.setContrasena(request.getParameter("ID"));
        dao.registrar();
        
        String correo= null;
        correo = request.getParameter("email");
        vo.setEmail(correo);
        try {
            dao.olvidePassword();
            CorreoVO.sendMail(correo);
        } catch (Exception ex) {
            Logger.getLogger(ControladorPassword.class.getName()).log(Level.SEVERE, null, ex);
        }
        acceso=listar;
       
                
    }else if(action.equalsIgnoreCase("editar")){
        String ID= request.getParameter("ID");
        request.setAttribute("IDv", ID);
        acceso=edit;
        
    }else if(action.equalsIgnoreCase("Actualizar")){
        id = Integer.parseInt(request.getParameter("txtID"));
        vo.setID(id);
                vo.setContrasena(request.getParameter("txtpass"));
                vo.setTelefono(Integer.parseInt(request.getParameter("txttelefono")));
                vo.setNombre(request.getParameter("txtnombre"));
                vo.setApellido(request.getParameter("txtapellido"));
                vo.setEmail(request.getParameter("txtemail"));
                vo.setRol(request.getParameter("txtrol"));
                dao.actualizar();
                acceso=listar;
                
    }else if(action.equalsIgnoreCase("editarpassword")){
        String ID= request.getParameter("Id");
        request.setAttribute("Id", ID);
        acceso=passwordUP;
        
    }else if(action.equalsIgnoreCase("actualizarpassword")){
        id = Integer.parseInt(request.getParameter("txtID"));
        vo.setID(id);
                vo.setContrasena(request.getParameter("txtpassword"));
                dao.contrasena();
                acceso="Login.jsp";
                
    }else if(action.equalsIgnoreCase("actualizarpassword2")){
        id = Integer.parseInt(request.getParameter("txtID"));
        vo.setID(id);
                vo.setContrasena(request.getParameter("txtpassword"));
                dao.contrasena();
                acceso=menu;
                
    }else if(action.equalsIgnoreCase("eliminar")){
        id = Integer.parseInt(request.getParameter("ccc"));
        vo.setID(id);
        dao.eliminar();
        acceso=listar;
        
    }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
        }  

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
