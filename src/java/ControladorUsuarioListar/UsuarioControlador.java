///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package ControladorUsuarioListar;
//
//import com.google.gson.Gson;
//import java.io.IOException;
//import java.io.PrintWriter;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import modelos.dao.UsuarioDAO;
//import modelos.vo.UsuarioVO;
//
///**
// *
// * @author Santi
// */
//@WebServlet(name = "UsuarioControlador", urlPatterns = {"/usuario/listar", "/usuario/consultar", "/usuario/actualizar", "/usuario/eliminar", "/usuario/registrar", "/usuario/validar"})
//public class UsuarioControlador extends HttpServlet {
//
//    UsuarioDAO dao = new UsuarioDAO();
//    UsuarioVO vo = new UsuarioVO();
//    int r;
//    
//
//  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//            response.setContentType("text/html;charset=UTF-8");
//            String accion = request.getParameter("accion");
//
//            PrintWriter out = response.getWriter();
//            /* TODO output your page here. You may use following sampl code. */
//
////            out.println("<h1>" + request.getServletPath() + "</h1>");
//            System.out.println("");
//
//            UsuarioDAO usuDAO;
//            UsuarioVO usuVO;
//            Gson json = new Gson();
//            String mensaje = null;
//
//            String ruta = request.getServletPath();
//            switch (accion) {
//                case "/usuario/validar":
//                    usuVO = new UsuarioVO();
//                    usuVO.setID((int) Long.parseLong(request.getParameter("ID")));
//                    usuDAO = new UsuarioDAO(usuVO);
//                    Object obj = usuDAO.consultar();
//                    if (obj != null) {
//                        mensaje = json.toJson(obj);
//                    } else {
//                        mensaje = json.toJson("usuario no existe");
//                    }
//                    break;
//                case "/usuario/autenticar":
//
//
//
//                    break;
//
//                case "/usuario/registrar":
//                    usuVO = new UsuarioVO();
//                    usuDAO = new UsuarioDAO(usuVO);
//
//                    usuVO.setID((int) Long.parseLong(request.getParameter("ID")));
//                    usuVO.setUsuario(String.valueOf(request.getParameter("Usuario")));
//                    usuVO.setNombre(String.valueOf(request.getParameter("nombre")));
//                    usuVO.setTelefono((int) Long.parseLong(request.getParameter("telefono")));
//                    usuVO.setEmail(String.valueOf(request.getParameter("Email")));
//                    usuVO.setContrasena(String.valueOf(request.getParameter("Contrasena")));
//
//                    if (usuDAO.registrar()) {
//                        mensaje = json.toJson("usuario registrado");
//                    } else {
//                        mensaje = json.toJson("falla al registrar");
//                    }
//                    break;
//                case "/usuario/listar":
//                    usuDAO = new UsuarioDAO();
//                    mensaje = json.toJson(usuDAO.listar());
//                    break;
//                case "/usuario/actualizar":
//                    usuVO = new UsuarioVO();
//                    usuDAO = new UsuarioDAO(usuVO);
//
//                    usuVO.setID((int) Long.parseLong(request.getParameter("ID")));
//                    usuVO.setUsuario(String.valueOf(request.getParameter("Usuario")));
//                    usuVO.setContrasena(String.valueOf(request.getParameter("Contrasena")));
//                    usuVO.setTelefono((int) Long.parseLong(request.getParameter("Telefono")));
//                    usuVO.setNombre(String.valueOf(request.getParameter("nombre")));
//                    usuVO.setEmail(String.valueOf(request.getParameter("Email")));
//
//                    if (usuDAO.actualizar()) {
//                        mensaje = json.toJson("usuario editado");
//                    } else {
//                        mensaje = json.toJson("falla al editar");
//                    }
//                   
//                    break;
//                case "/usuario/eliminar":
//                    usuVO = new UsuarioVO();
//                    usuVO.setID((int) Long.parseLong(request.getParameter("ID")));
//                    usuDAO = new UsuarioDAO(usuVO);
//                    if (usuDAO.eliminar()) {
//                        mensaje = json.toJson("Usuario eliminado exitosamente");
//                    } else {
//                        mensaje = json.toJson("Usuario no existe");
//                    }
//                    break;
//            }
//
//            response.setContentType("Application/json");
//            out.print(mensaje);
//            out.flush();
//
//           
//        
//  }
//
//// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
