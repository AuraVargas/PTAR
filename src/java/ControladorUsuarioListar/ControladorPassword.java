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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.dao.UsuarioDAO;
import modelos.vo.CorreoVO;
import modelos.vo.UsuarioVO;

/**
 *
 * @author Santi
 */
public class ControladorPassword extends HttpServlet {

    UsuarioVO vo = new UsuarioVO();
    UsuarioDAO dao = new UsuarioDAO(vo);
    UsuarioVO temp = (UsuarioVO)dao.consultarContra();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);        
        String correo= null;
        correo = request.getParameter("email");
        vo.setEmail(correo);
        int f = dao.validar2(correo);
        if(f > 0){
                try {
                    dao.olvidePassword();
                    String mensaje="Tu contraseña ha sido cambiada por el número de tu documento de identidad, por favor ingresa al sistema y cambia tu contraseña por una más segura.";
                    CorreoVO.sendMail(correo,mensaje,"Recuperar contraseña");
                } catch (Exception ex) {
                    Logger.getLogger(ControladorPassword.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.getRequestDispatcher("Login.jsp").forward(request, response);   
                
        }else{
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    } 

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
