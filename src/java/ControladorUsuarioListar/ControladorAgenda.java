/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControladorUsuarioListar;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.dao.AgendaDAO;
import modelos.dao.UsuarioDAO;
import modelos.vo.AgendaVO;
import modelos.vo.CorreoVO;
import modelos.vo.UsuarioVO;

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
        PrintWriter out;
        out = response.getWriter();
       
        String acceso ="";
        String action=request.getParameter("accion");
        response.setContentType("text/html");
        
        
    if(action.equalsIgnoreCase("listar")){
        acceso=listar;
    }else if(action.equalsIgnoreCase("add")){
        request.setAttribute("fecha", request.getParameter("fecha"));
        request.setAttribute("desde", request.getParameter("desde"));
        acceso=add;
    }else if(action.equalsIgnoreCase("actcolor")){
        vo.setColor(Integer.parseInt(request.getParameter("color")));
        vo.setFecha(request.getParameter("fecha"));
        dao.actualizarcolor();
        acceso="views/Menú.jsp";
    }else if(action.equalsIgnoreCase("Registrar")){
        
        int jaja =(int)(Math.random() * 10000) + 1;
        int ca=dao.validar2(jaja);
                while (ca > 0) {
                jaja =(int)(Math.random() * 10000) + 1;
                }
                vo.setCodigoa(jaja);
                vo.setDescripcion(request.getParameter("txtDescripcion"));
                vo.setEstado("Activo");
                vo.setFecha(request.getParameter("txtfecha"));
                vo.setFKUidentificacion(Integer.parseInt(request.getParameter("txtIdUs")));
                vo.setTitulo(request.getParameter("txtTitulo"));
                vo.setHoraInicio(request.getParameter("txtincio"));
                vo.setHoraFin(request.getParameter("txtfin"));
                
                ArrayList<AgendaVO> color =(ArrayList) dao.consultaragendaFecha();
                
                if(color.isEmpty()){
                    vo.setColor(1);
                }else{
                    for (AgendaVO obj2 : color) {
                    vo.setColor(obj2.getColor());
                    break;
                    }
                }
                
                
                ArrayList<AgendaVO> pru =(ArrayList) dao.consultaragendahora();
                if(pru.isEmpty()){
                dao.registrar();
                UsuarioVO vo2 = new UsuarioVO();
        UsuarioDAO dao2 = new UsuarioDAO(vo2);

        ArrayList<UsuarioVO> lista =(ArrayList) dao2.listarFuncionario();
for(UsuarioVO obj2 : lista){
        try {
            String mensaje="Se ha registrado un nuevo evento: "+vo.getTitulo()+" en el sistema, para el día "+vo.getFecha()+" de "+vo.getHoraInicio()+" a "+vo.getHoraFin()+", con la siguiente descripción: "+vo.getDescripcion()+".";
            CorreoVO.sendMail(obj2.getEmail(),mensaje,"Nuevo evento");
        } catch (Exception ex) {
            Logger.getLogger(ControladorPassword.class.getName()).log(Level.SEVERE, null, ex);
        }
}
                String direccion=request.getParameter("desde");
//                if(direccion.equals("1")){
//                    acceso="views/Menú.jsp";
//                }else{
                acceso=listar;
//                }
                }else{
                    request.setAttribute("Error", 1);
                    acceso="views/Error.jsp";
                }
    }else if(action.equalsIgnoreCase("editar")){
        request.setAttribute("desde", request.getParameter("desde"));
        request.setAttribute("codigoa", request.getParameter("codigo"));
        acceso=edit;
    }else if(action.equalsIgnoreCase("Actualizar")){
        id = Integer.parseInt(request.getParameter("txtcodigo"));
        String direccion = request.getParameter("desde");
        vo.setCodigoa(id);
                vo.setDescripcion(request.getParameter("txtDescripcion"));
                vo.setEstado(request.getParameter("txtestado"));
                vo.setFecha(request.getParameter("txtfecha"));
                vo.setTitulo(request.getParameter("txtTitulo"));
                vo.setHoraInicio(request.getParameter("txtincio"));
                vo.setHoraFin(request.getParameter("txtfin"));
                ArrayList<AgendaVO> pru =(ArrayList) dao.consultaragendahora();
                if(pru.isEmpty()){
                dao.actualizar();
                
                acceso=listar;
                
                }else{
                    request.setAttribute("Error", 1);
                    acceso="views/Error.jsp";
                }
    }else if(action.equalsIgnoreCase("Aceptar")){
        id = Integer.parseInt(request.getParameter("txtcodigo"));
        vo.setCodigoa(id);
                vo.setEstado("Activo");
                vo.setHoraInicio(request.getParameter("txtincio"));
                vo.setHoraFin(request.getParameter("txtfin"));
                ArrayList<AgendaVO> pru =(ArrayList) dao.consultaragendahora();
                if(pru.isEmpty()){
                dao.aceptarSolicitud();
                
                acceso="views/listarVisitas.jsp";
                
                }else{
                    request.setAttribute("Error", 1);
                    acceso="views/Error.jsp";
                }
    }else if(action.equalsIgnoreCase("eliminar")){
        id = Integer.parseInt(request.getParameter("txtcodigo"));
        vo.setCodigoa(id);
        dao.eliminar();
        acceso=listar;
        
    }else if(action.equalsIgnoreCase("elim")){
        id = Integer.parseInt(request.getParameter("txtcodigo"));
        vo.setCodigoa(id);
        dao.eliminar();
        acceso="views/Menú.jsp";
        
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
