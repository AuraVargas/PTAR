/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControladorUsuarioListar;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelos.dao.UsuarioDAO;
import modelos.vo.UsuarioVO;

/**
 *
 * @author Santi
 */
public class Login extends HttpServlet {
    UsuarioVO vo = new UsuarioVO();
    UsuarioDAO dao = new UsuarioDAO(vo);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {   

            String user=null,pass=null;
            user = request.getParameter("User");
            pass = request.getParameter("pass");
            //            vo.setEmail(user);
//            vo.setContrasena(pass);
//            int ca=dao.validar(user, pass);
            UsuarioVO u = dao.validar(user ,pass);
            if(u == null){
//            if (ca > 0) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            }else{
            System.out.println("<h2>Binvenido encargado"+user+"al sistema");
            System.out.println("<br><br>");
            HttpSession sesion = request.getSession(true);
            sesion.setAttribute("Id", u);
            sesion.setAttribute("Error", 0);
            request.getRequestDispatcher("views/Menú.jsp").forward(request, response);
               }
         
                
            }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
