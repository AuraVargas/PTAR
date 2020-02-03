/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControladorUsuarioListar;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.dao.AgendaDAO;
import modelos.vo.AgendaVO;

/**
 *
 * @author HP
 */
public class ControladorAgenda extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String listar="views/agenda.jsp";
    String add="views/RegistrarAgenda.jsp";
    String edit="views/EditarAgenda.jsp";
    AgendaVO vo=new AgendaVO();
    AgendaDAO dao =new AgendaDAO(vo);
    int id;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso ="";
        String action=request.getParameter("accion");
    if(action.equalsIgnoreCase("listar")){
        acceso=listar;
    }else if(action.equalsIgnoreCase("add")){
        acceso=add;
    }else if(action.equalsIgnoreCase("Registrar")){
        int jaja =(int)(Math.random() * 10000) + 1;
        int ca=dao.validar2(jaja);
                while (ca > 0) {
                jaja =(int)(Math.random() * 10000) + 1;
                }
                vo.setCodigoa(jaja);
                vo.setDescripcion(request.getParameter("txtDescripcion"));
                vo.setEstado("activo");
                vo.setFecha(request.getParameter("txtfecha"));
                vo.setFKUidentificacion(12);
                vo.setTipo(request.getParameter("txttipo"));
                dao.registrar();
                acceso=listar;
    }else if(action.equalsIgnoreCase("editar")){
        request.setAttribute("codigoa", request.getParameter("codigo"));
        acceso=edit;
    }else if(action.equalsIgnoreCase("Actualizar")){
        id = Integer.parseInt(request.getParameter("txtcodigo"));
        vo.setCodigoa(id);
                vo.setDescripcion(request.getParameter("txtDescripcion"));
                vo.setEstado("activo");
                vo.setFecha(request.getParameter("txtfecha"));
                vo.setTipo(request.getParameter("txttipo"));
                dao.actualizar();
                acceso=listar;
    }else if(action.equalsIgnoreCase("eliminar")){
        id = Integer.parseInt(request.getParameter("txtcodigo"));
        vo.setCodigoa(id);
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
