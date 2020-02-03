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
import modelos.dao.CategoriasDAO;
import modelos.dao.ReporteDAO;
import modelos.vo.CategoriasVO;
import modelos.vo.ReporteVO;

/**
 *
 * @author HP
 */
public class ControladorCategorias extends HttpServlet {
    ReporteVO rvo= new ReporteVO();
                ReporteDAO rdao=new ReporteDAO(rvo);
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String listar="views/Categorias.jsp";
    CategoriasVO vo=new CategoriasVO();
    CategoriasDAO dao =new CategoriasDAO(vo);
    String cons="views/Reportes.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso ="";
        String action=request.getParameter("accion");
    if(action.equalsIgnoreCase("listar")){
        acceso=listar;
    }else if(action.equalsIgnoreCase("Crear")){
        vo.setNombreCat(request.getParameter("txtcat"));
        dao.registrar();
        acceso=listar;
    }if(action.equalsIgnoreCase("consultar")){
        String codigo = request.getParameter("codigo");
        
        request.setAttribute("codigoa", codigo);
        acceso=cons;
    }else if(action.equalsIgnoreCase("eliminar")){
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        vo.setCodigo(codigo);
        dao.eliminar();
        acceso=listar;
    }else if(action.equalsIgnoreCase("editar")){
        int codigo = Integer.parseInt(request.getParameter("txtcod"));
        vo.setCodigo(codigo);
        vo.setNombreCat(request.getParameter("txtnom"));
        dao.actualizar();
        acceso=listar;
    }else if(action.equalsIgnoreCase("Registar reporte")){
            rvo.setNombreR(request.getParameter("txttitu"));
            rvo.setFecha(request.getParameter("txtfecha"));
            rvo.setFKRcategoria(Integer.parseInt(request.getParameter("txtcod2")));
            rvo.setFKRusuario(12);
            rdao.registrar();
            request.setAttribute("codigoa",request.getParameter("txtcod2"));
        acceso=cons;
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
