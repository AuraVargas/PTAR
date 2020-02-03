/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControladorUsuarioListar;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.dao.AgendaDAO;
import modelos.dao.EmpresaDAO;
import modelos.dao.RepresentanteDAO;
import modelos.dao.VisitasDAO;
import modelos.vo.AgendaVO;
import modelos.vo.EmpresaVO;
import modelos.vo.RepresentanteVO;
import modelos.vo.VisitasVO;

/**
 *
 * @author HP
 */
public class ControladorVisita extends HttpServlet {
    RepresentanteVO Rvo = new RepresentanteVO();
    RepresentanteDAO Rdao = new RepresentanteDAO(Rvo);
    
    EmpresaVO Evo = new EmpresaVO();
    EmpresaDAO Edao = new EmpresaDAO(Evo);
    
    VisitasVO Vvo = new VisitasVO();
    VisitasDAO Vdao = new VisitasDAO(Vvo);
    
    AgendaVO avo = new AgendaVO();
    AgendaDAO adao = new AgendaDAO(avo);
    
    int numeroP;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String listar="views/listarVisitas.jsp";
    String add="SolicitudVisita.jsp";
    String edit="views/actualizarVisita.jsp";
    int cod;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action=request.getParameter("accion");
        String acceso ="";
        if(action.equalsIgnoreCase("listar")){
        acceso=listar;
        }else if(action.equalsIgnoreCase("add")){
        acceso=add;
        }else if(action.equalsIgnoreCase("Registrar")){
                
                String IDrepresentante,Telefono, correo, nombre;
            IDrepresentante = request.getParameter("txtidrepresentante");
            Telefono = request.getParameter("txttelefono");
            correo = request.getParameter("txtcorreo");
            nombre = request.getParameter("txtnombrerepresentante");
            numeroP =Integer.parseInt(request.getParameter("txtNumeroPersonas"));
            
            int re=adao.validar2(Integer.parseInt(IDrepresentante));
            if (re > 0) {
                
                }else{
                Rvo.setIDrepresentante(Integer.parseInt(IDrepresentante));
                Rvo.setNombre(nombre);
                Rvo.setTelefono(Integer.parseInt(Telefono));
                Rvo.setCorreo(correo);
            }
                
               int em=adao.validar2(Integer.parseInt(request.getParameter("txtnit")));
            if (em > 0) {
                
                }else{
                Evo.setNit(Integer.parseInt(request.getParameter("txtnit")));
                Evo.setRepresentante(Integer.parseInt(IDrepresentante));
                Evo.setDescripcion(request.getParameter("txtDescripcion"));
            }
            
                int jaja =(int)(Math.random() * 10000) + 1;
                int ca=adao.validar2(jaja);
                while (ca > 0) {
                jaja =(int)(Math.random() * 10000) + 1;
                }
                avo.setCodigoa(jaja);
                avo.setDescripcion("visita a la planta con la institucion: "+Evo.getDescripcion());
                avo.setEstado("activo");
                avo.setFecha(request.getParameter("txtfecha"));
                avo.setFKUidentificacion(12);
                avo.setTipo("Visita");
                
                Vvo.setCodigoa(avo.getCodigoa());
                Vvo.setEmpresa(Evo.getNit());
                Vvo.setEncargadoID(Rvo.getIDrepresentante());
                Vvo.setNumeroPersonas(numeroP);
                
                Rdao.registrar();
                Edao.registrar();
                adao.registrar();
                Vdao.registrar();
                acceso=listar;
                
        }else if(action.equalsIgnoreCase("editar")){
                request.setAttribute("codigov", request.getParameter("codigo"));
                acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            Vvo.setCodigov(Integer.parseInt(request.getParameter("txtcodigov")));
            VisitasVO visita =(VisitasVO) Vdao.consultar();
                Rvo.setIDrepresentante(visita.getEncargadoID());
                Rvo.setNombre(request.getParameter("txtnombrerepresentante"));
                Rvo.setTelefono(Integer.parseInt(request.getParameter("txttelefono")));
                Rvo.setCorreo(request.getParameter("txtcorreo"));
            
                Evo.setNit(Integer.parseInt(request.getParameter("txtnit")));
                Evo.setRepresentante(Rvo.getIDrepresentante());
                Evo.setDescripcion(request.getParameter("txtDescripcion"));
                
                
                avo.setCodigoa(Integer.parseInt(request.getParameter("txtcodigoA")));
                AgendaVO consulta = (AgendaVO) adao.consultar();
                avo.setDescripcion(consulta.getDescripcion());
                avo.setEstado(consulta.getEstado());
                avo.setFecha(request.getParameter("txtfecha"));
                avo.setTipo("Visita");
                
                Vvo.setCodigoa(avo.getCodigoa());
                Vvo.setEmpresa(Evo.getNit());
                Vvo.setEncargadoID(Rvo.getIDrepresentante());
                Vvo.setNumeroPersonas(Integer.parseInt(request.getParameter("txtNumeroPersonas")));
                
                Rdao.actualizar();
                Edao.actualizar();
                adao.actualizar();
                Vdao.actualizar();
                acceso=listar;
        }else if(action.equalsIgnoreCase("eliminar")){
        Vvo.setCodigov(Integer.parseInt(request.getParameter("ccc")));
        Vdao.eliminar();
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
