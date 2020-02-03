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
import modelos.dao.ReporteDAO;
import modelos.vo.ReporteVO;

/**
 *
 * @author HP
 */
public class ControladorReporte extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String edit="views/EditarReporte.jsp";
    String listar="views/Reportes.jsp";
     ReporteVO vo=new ReporteVO();
    ReporteDAO dao =new ReporteDAO(vo);
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso ="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("editar")){
            request.setAttribute("codigor", request.getParameter("codigo"));
        acceso=edit;
        }else if(action.equalsIgnoreCase("listar")){
        String codigo = request.getParameter("txtcat");
        request.setAttribute("codigoa", codigo);
        acceso=listar;
        }else if(action.equalsIgnoreCase("Actualizar")){
            vo.setCodigoReporte(Integer.parseInt(request.getParameter("txtcod")));
            vo.setNombreR(request.getParameter("txttitu"));
            vo.setFecha(request.getParameter("txtfecha"));
            dao.actualizar();
            request.setAttribute("codigoa", request.getParameter("txtcat"));
        acceso=listar;
        }else if(action.equalsIgnoreCase("eliminar")){
            
            int codigo = Integer.parseInt(request.getParameter("codigo"));
        vo.setCodigoReporte(codigo);
        ReporteVO reporte=new ReporteVO();
        reporte=(ReporteVO) dao.consultar();
        request.setAttribute("codigoa",String.valueOf(reporte.getFKRcategoria()));
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
