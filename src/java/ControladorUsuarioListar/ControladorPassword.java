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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String correo= null;
        correo = request.getParameter("email");
        vo.setEmail(correo);
        int f = dao.validar2(correo);
        if(f > 0){
                try {
                    CorreoVO.sendMail(correo);
                    vo.setContrasena(request.getParameter("txtpass"));
                    dao.olvidePassword();
                } catch (Exception ex) {
                    Logger.getLogger(ControladorPassword.class.getName()).log(Level.SEVERE, null, ex);
                }
//                m.enviarEmail("Recuperacion de contraseña PTAR", vo.getContrasena(), vo.getEmail());
//                System.out.println("Se ha enviado");
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
