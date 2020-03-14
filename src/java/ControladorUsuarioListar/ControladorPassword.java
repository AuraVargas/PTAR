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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorPassword</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorPassword at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);        String correo= null;
        correo = request.getParameter("email");
        vo.setEmail(correo);
        int f = dao.validar2(correo);
        if(f > 0){
                try {
                    dao.olvidePassword();
                    String mensaje="Su contraseña ha sido cambiado por el numero de su documento de identidad, por favor ingrese al sistema y cambie su contraseña por una más segura.";
                    CorreoVO.sendMail(correo,mensaje,"Recuperar contraseña");
                    vo.setContrasena(request.getParameter("txtpass"));
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
