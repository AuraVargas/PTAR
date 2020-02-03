package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import modelos.dao.VisitasDAO;
import modelos.vo.VisitasVO;

public final class ListaVisita_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>PTAR/Visitas</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <input class=\"form-control\" name=\"ruta\" value=\"PTAR/Visitas\"style = \"opacity: 0;\">\n");
      out.write("        <h1>Visitas</h1>\n");
      out.write("      ");
boolean eso= false;
      out.write(" \n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write(" <input class=\"form-control\" name =\"txtbusqueda\"placeholder=\"\">\n");
      out.write("  <div class=\"input-group-append\">\n");
      out.write("      <button value=\"Buscar\"href=\"ListaVisita.jsp\">Buscar</button>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Codigo de la visita</th>\n");
      out.write("                    <th>Codigo como evento en la agenda</th>\n");
      out.write("                    <th>NIT de la institución</th>\n");
      out.write("                    <th>Descripcion de la institucion</th>\n");
      out.write("                    <th>Numero de personas que asisten</th>\n");
      out.write("                    <th>Identifiacion del representante</th>\n");
      out.write("                    <th>Nombre del representante</th>\n");
      out.write("                    <th>Correo electronico</th>\n");
      out.write("                    <th>Numero de telefono</th>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("            ");

                
                ArrayList<VisitasVO> pru = new ArrayList<VisitasVO>();
                VisitasVO vo= new VisitasVO();
                VisitasDAO dao=new VisitasDAO(vo);
                pru =(ArrayList) dao.listar();
                        
                String buscar=request.getParameter("txtbusqueda");
                if(buscar!=null){
                    vo.setDescripcion(buscar);
                pru =(ArrayList) dao.consultar2();
                }else{
                System.out.println("error");
                }
for(VisitasVO obj : pru){
            
      out.write("\n");
      out.write("            \n");
      out.write("                <tr>\n");
      out.write("                    <td><a name = \"codigo\"href=\"ConsultaVisita.jsp\">");
      out.print(obj.getCodigov());
      out.write("</a></td>\n");
      out.write("                    <td>");
      out.print(obj.getCodigoa());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(obj.getNit());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(obj.getDescripcion());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(obj.getNumeroPersonas());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(obj.getEncargadoID());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(obj.getNombre());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(obj.getCorreo());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(obj.getTelefono());
      out.write("</td>\n");
      out.write("                    <td><a name = \"codigo\"href=\"ControladorVisitas?accion=editar&id=");
      out.print(obj.getCodigoa());
      out.write("\">Actualizar</a></td>\n");
      out.write("                    <td><a name = \"codigo\"href=\"ConsultaVisita.jsp\">Eliminar</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
