package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelos.dao.UsuarioDAO;
import modelos.vo.UsuarioVO;
import java.util.ArrayList;
import modelos.dao.AgendaDAO;
import modelos.vo.AgendaVO;

public final class Menú_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Menú Principal</title>\r\n");
      out.write("        <!--===============================================================================================-->\t\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"assets/img/acueducto.png\" type=\"image/x-icon\"/>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link href=\"assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"assets/fonts/fontawesome-free-5.11.2-web/css/all.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link href=\"assets/vendor/animate/animate.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <!--===============================================================================================-->\t\r\n");
      out.write("        <link href=\"assets/vendor/css-hamburgers/hamburgers.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/vendor/select2/select2.min.css\">\r\n");
      out.write("        <link href=\"assets/select2/select2.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <link href=\"assets/css/util.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"assets/css/main.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"assets/css/Style.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");

        UsuarioVO u = (UsuarioVO)session.getAttribute("Id");
        UsuarioVO vo = new UsuarioVO();
        UsuarioDAO d = new UsuarioDAO(vo);
        
      out.write("\r\n");
      out.write("        <header class=\"menu\">\r\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img class=\"logo\" src=\"assets/img/acueducto.png\" alt=\"\"/>  <i class=\"fa fa-user\"></i>");
out.println(" " + u.getNombre() +" "+ u.getApellido()+"\n \t");
      out.write("\r\n");
      out.write("                    ");
out.println("Cargo: " + u.getRol());
      out.write(" </a>\r\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                    <span><img class=\"logo\" src=\"assets/img/acueducto.png\" alt=\"\"/> </span>\r\n");
      out.write("                </button>\r\n");
      out.write("                \r\n");
      out.write("\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("                    <ul id=\"items\" class=\"navbar-nav mr-auto\">\r\n");
      out.write("                        <li class=\"nav-item active\">\r\n");
      out.write("                            <a class=\"nav-link\" href=\"ControladorUsuario?accion=menu\"> <i class=\"fa fa-home\"></i> Inicio <span class=\"sr-only\">(current)</span></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"nav-item active\">\r\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                                <i class=\"fas fa-users\"></i> Usuarios\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"views/RegistrarUsuario.jsp\">Registrar Usuario</a>\r\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"ControladorUsuario?accion=listar\">Lista de Usuarios</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item active\">\r\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                                <i class=\"far fa-address-book\"></i> Eventos\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"ControladorAgenda?accion=add\"> Registrar Evento</a>\r\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"ControladorAgenda?accion=listar\"> Lista de Evento</a>\r\n");
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"nav-item active\">\r\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                                <i class=\"far fa-eye\"></i> Visitas\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"SolicitudVisita.jsp\"> Registrar Visita</a>\r\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"ControladorVisita?accion=listar\"> Listar Visitas</a>\r\n");
      out.write("                                <!--                                <div class=\"dropdown-divider\"></div>\r\n");
      out.write("                                                                <a class=\"dropdown-item\" href=\"actualizarVisita.jsp\"> Editar Visita</a>-->\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item active\">\r\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                                <i class=\"far fa-sticky-note\"></i> Reportes\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                                <a class=\"dropdown-item\" href=\"ControladorCategorias?accion=listar\">Categorias</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item active\">\r\n");
      out.write("                            <a class=\"nav-link\" href=\"#\"> <i class=\"fas fa-power-off\"></i> Cerrar Sesión <span class=\"sr-only\">(current)</span></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("        </header>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\" style=\"padding-top: 100px\">\r\n");
      out.write("                <div class=\"col-8\">\r\n");
      out.write("                    <div class=\"calendar\">\r\n");
      out.write("    <div class=\"calendar__info\">\r\n");
      out.write("        <div class=\"calendar__prev\" id=\"prev-month\">&#9664;</div>\r\n");
      out.write("        <div class=\"calendar__month\" id=\"month\">Enero</div>\r\n");
      out.write("        <div class=\"calendar__year\" id=\"year\">2020</div>\r\n");
      out.write("        <div class=\"calendar__next\" id=\"next-month\">&#9654;</div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"calendar__week\">\r\n");
      out.write("        <div class=\"calendar__day calendar__item\">Lunes</div>\r\n");
      out.write("        <div class=\"calendar__day calendar__item\">Martes</div>\r\n");
      out.write("        <div class=\"calendar__day calendar__item\">Miercoles</div>\r\n");
      out.write("        <div class=\"calendar__day calendar__item\">Jueves</div>\r\n");
      out.write("        <div class=\"calendar__day calendar__item\">viernes</div>\r\n");
      out.write("        <div class=\"calendar__day calendar__item\">Sabado</div>\r\n");
      out.write("        <div class=\"calendar__day calendar__item\">Domingo</div>\r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"calendar__dates\" id=\"dates\" ></div>\r\n");
      out.write("</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"col-4\">\r\n");
      out.write("                    <hr>\r\n");
      out.write("                    <button href=\"ControladorVisita?accion=listar\" type=\"button\" class=\"btn btn-outline-success h-25 w-100\">Gestionar visitas  <i class=\"fas fa-male\"></i></button>\r\n");
      out.write("                    <button href=\"ControladorAgenda?accion=listar\" type=\"button\" class=\"btn btn-outline-success h-25 w-100\">Gestionar informes <i class=\"fas fa-chart-line\"></i></button>\r\n");
      out.write("                    <button href=\"ControladorCategorias?accion=listar\" type=\"button\" class=\"btn btn-outline-success h-25 w-100\">Gestionar usuarios <i class=\"fas fa-user\"></i></button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("            <div class=\"modal fade\" id=\"ventana1\">\r\n");
      out.write("            <div class=\"modal-dialog\">\r\n");
      out.write("                <div class=\"modal-content\">\r\n");
      out.write("      <div class=\"modal-header\">\r\n");
      out.write("        <h5 id=\"uno\" class=\"modal-title\" id=\"exampleModalLabel\"></h5>\r\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("        </button>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-body\" style=\"background-color: #a3d5d1\">\r\n");
      out.write("        <div class=\"form-group\" id=\"modal-events\">\r\n");
      out.write("            \r\n");
      out.write("            <a id='sii' class=\"abajo-derecha\"href=\"\">Registrar un evento</a>\r\n");
      out.write("  </div>\r\n");
      out.write("          \r\n");
      out.write("      \r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("            </div>\r\n");
      out.write("</div>\r\n");
      out.write("        <div class=\"modal fade\" id=\"ventana2\">\r\n");
      out.write("            <div class=\"modal-dialog\">\r\n");
      out.write("                <div class=\"modal-content\">\r\n");
      out.write("      <div class=\"modal-header\">\r\n");
      out.write("          <div aria-hidden=\"true\" href=\"#ventana1\" style=\"cursor: default\" type=\"button\" data-toggle=\"modal\" onclick=\"$('#ventana2').modal('hide');\">&#9664;</div>\r\n");
      out.write("        <h5 id=\"Titulo\" class=\"modal-title\"></h5>\r\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">\r\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("        </button>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-body\" style=\"background-color: #a3d5d1\">\r\n");
      out.write("        <div class=\"form-group\">\r\n");
      out.write("    <label id=\"descripcion\">Informacion de los eventos</label><br>\r\n");
      out.write("    <label id=\"fecha\">Informacion de los eventos</label><br>\r\n");
      out.write("    <label id=\"estado\">Informacion de los eventos</label><br>\r\n");
      out.write("    <a style=\"color:red;position:absolute;bottom:10px;right:90px;cursor: pointer;\"onclick=\"elim()\">Eliminar</a>\r\n");
      out.write("    <a id=\"editar\" class=\"btn btn-success abajo-derecha\"href=\"\">Editar</a>\r\n");
      out.write("  </div>\r\n");
      out.write("          \r\n");
      out.write("          \r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("            </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!--===============================================================================================-->\t\r\n");
      out.write("        <script src=\"assets/vendor/jquery/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"assets/vendor/bootstrap/js/popper.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"assets/vendor/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"assets/vendor/select2/select2.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"assets/vendor/tilt/tilt.jquery.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script >\r\n");
      out.write("            $('.js-tilt').tilt({\r\n");
      out.write("                scale: 1.1\r\n");
      out.write("            })\r\n");
      out.write("        </script>\r\n");
      out.write("        \r\n");
      out.write("        <script src=\"assets/js/Calendario.js\"></script>\r\n");
      out.write("        \r\n");
      out.write("             ");

                 AgendaVO vo = new AgendaVO();
                            AgendaDAO dao = new AgendaDAO(vo);
                            ArrayList<AgendaVO> list = (ArrayList) dao.listar();

                        
      out.write("\r\n");
      out.write("                        <script type=\"text/javascript\">\r\n");
      out.write("            var ac =  new Array();\r\n");
      out.write("            var eventos = new Array();\r\n");
      out.write("            ");

                for (AgendaVO obj2 : list) {
            
      out.write("\r\n");
      out.write("            \tac.push('");
      out.print(obj2.getFecha());
      out.write("');\r\n");
      out.write("                eventos.push(['");
      out.print(obj2.getFecha());
      out.write("','");
      out.print(obj2.getTipo());
      out.write("','");
      out.print(obj2.getDescripcion());
      out.write("','");
      out.print(obj2.getEstado());
      out.write("','");
      out.print(obj2.getCodigoa());
      out.write("']);\r\n");
      out.write("                ");

                }
                
      out.write("\r\n");
      out.write("            cal(ac,eventos);\r\n");
      out.write("        </script>\r\n");
      out.write("        <script src=\"assets/js/acciones.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("\r\n");
      out.write("        <script src=\"assets/js/main.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
