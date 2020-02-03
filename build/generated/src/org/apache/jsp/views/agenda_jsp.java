package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import java.util.ArrayList;
import modelos.dao.AgendaDAO;
import modelos.vo.AgendaVO;

public final class agenda_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Listar Agenda</title>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"assets/img/acueducto.png\" type=\"image/x-icon\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link href=\"assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"assets/fonts/fontawesome-free-5.11.2-web/css/all.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link href=\"assets/vendor/animate/animate.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\t\n");
      out.write("        <link href=\"assets/vendor/css-hamburgers/hamburgers.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/vendor/select2/select2.min.css\">\n");
      out.write("        <link href=\"assets/vendor/select2/select2.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link href=\"assets/css/util.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"assets/css/main.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"assets/css/Style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"Validaciones.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body class=\"editar\">\n");
      out.write("        <header class=\"menu\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img class=\"logo\" src=\"assets/img/acueducto.png\" alt=\"\"/>  <i class=\"fa fa-user\"></i>  Usuario </a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span><img class=\"logo\" src=\"assets/img/acueducto.png\" alt=\"\"/> </span>\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                    <ul id=\"items\" class=\"navbar-nav mr-auto\">\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link\" href=\"Menú.jsp\"> <i class=\"fa fa-home\"></i> Inicio <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                <i class=\"fas fa-users\"></i> Usuarios\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"RegistrarUsuario.jsp\">Registrar Usuario</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">Editar Usuario</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                <i class=\"far fa-address-book\"></i> Eventos\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"views/RegistrarAgenda.jsp\"> Registrar Evento</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"ControladorAgenda?accion=listar\"> Lista de Evento</a>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                <i class=\"far fa-eye\"></i> Visitas\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"SolicitudVisita.jsp\"> Registrar Visita</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"ControladorVisita?accion=listar\"> Listar Visitas</a>\n");
      out.write("                                <!--                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                                                <a class=\"dropdown-item\" href=\"actualizarVisita.jsp\"> Editar Visita</a>-->\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                <i class=\"far fa-sticky-note\"></i> Reportes\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"ControladorCategorias?accion=listar\">Categorias</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link\" href=\"#\"> <i class=\"fas fa-power-off\"></i> Cerrar Sesión <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <h1>Listar agenda</h1><hr>\n");
      out.write("            <a href=\"views/RegistrarAgenda.jsp\">Registrar</a><br>\n");
      out.write("\n");
      out.write("            <nav class=\"navbar navbar-light bg-\">\n");
      out.write("                <form class=\"form-inline\" >\n");
      out.write("                    <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Buscar\" aria-label=\"Search\">\n");
      out.write("                    <button class=\"btn btn-success my-2 my-sm-0\" type=\"submit\"href=\"ListaVisita.jsp\">Consultar</button>\n");
      out.write("                </form><br><br><br>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("            <form class=\"form-inline\" action =\"ControladorAgenda\">\n");
      out.write("                <center>\n");
      out.write("                    <table class=\" table-bordered table-dark\" >\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Codigo del evento</th>\n");
      out.write("                            <th>Fecha</th>\n");
      out.write("                            <th>Descripcion</th>\n");
      out.write("                            <th>Estado</th>\n");
      out.write("                            <th>Tipo de evento</th>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                            AgendaVO vo = new AgendaVO();
                            AgendaDAO dao = new AgendaDAO(vo);
                            ArrayList<AgendaVO> list = (ArrayList) dao.listar();

                            for (AgendaVO obj : list) {
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td rowspan=\"2\">");
      out.print(obj.getCodigoa());
      out.write("</td>\n");
      out.write("                            <td rowspan=\"2\">");
      out.print(obj.getFecha());
      out.write("</td>\n");
      out.write("                            <td rowspan=\"2\">");
      out.print(obj.getDescripcion());
      out.write("</td>\n");
      out.write("                            <td rowspan=\"2\">");
      out.print(obj.getEstado());
      out.write("</td>\n");
      out.write("                            <td rowspan=\"2\">");
      out.print(obj.getTipo());
      out.write("</td>\n");
      out.write("                            <td> <a class=\"btn tbn-primary btn-1g\" href=\"ControladorAgenda?accion=editar&codigo=");
      out.print(obj.getCodigoa());
      out.write("\">Editar</a> </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td> <a href=\"#ventana1\" class=\"btn tbn-primary btn-1g\" data-toggle=\"modal\"onclick=\"set(");
      out.print(obj.getCodigoa());
      out.write(");\">Eliminar</a>\n");
      out.write("                                <div class=\"modal fade\" id=\"ventana1\" >\n");
      out.write("                                    <div class=\"modal-dialog\">\n");
      out.write("                                        <div class=\"modal-content\">\n");
      out.write("                                            <div class=\"modal-header\">\n");
      out.write("                                                <h5 class=\"modal-title\" id=\"exampleModalLabel\">Eliminar Evento</h5>\n");
      out.write("                                                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                    <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                                </button>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"modal-body\">\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <h5>¿Esta seguro de eliminar este evento de la agenda?</h5><br>\n");
      out.write("                                                    <input type=\"hidden\"id=\"txtcodigo\"name=\"txtcodigo\">\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"modal-footer\" >\n");
      out.write("                                                <Button class=\"btn btn-success\" type=\"submit\" name=\"accion\" value=\"eliminar\" >Eliminar</Button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </center>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--===============================================================================================-->\t\n");
      out.write("        <script src=\"assets/vendor/jquery/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <script src=\"assets/vendor/bootstrap/js/popper.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/vendor/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <script src=\"assets/vendor/select2/select2.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <script src=\"assets/vendor/tilt/tilt.jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("                                function set(codigoa) {\n");
      out.write("                                    document.getElementById('txtcodigo').value = codigoa;\n");
      out.write("                                }\n");
      out.write("                                ;\n");
      out.write("        </script>\n");
      out.write("        <script >\n");
      out.write("            $('.js-tilt').tilt({\n");
      out.write("                scale: 1.1\n");
      out.write("            })\n");
      out.write("        </script>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/main.js\" type=\"text/javascript\"></script>\n");
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
