package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Categorias_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Categorías</title>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../assets/img/acueducto.png\" type=\"image/x-icon\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link href=\"../assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link href=\"../assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../assets/fonts/fontawesome-free-5.11.2-web/css/all.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link href=\"../assets/vendor/animate/animate.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\t\n");
      out.write("        <link href=\"../assets/vendor/css-hamburgers/hamburgers.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../vendor/select2/select2.min.css\">\n");
      out.write("        <link href=\"../assets/vendor/select2/select2.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <link href=\"../assets/css/util.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../assets/css/main.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../assets/css/Style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"../Validaciones.js\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"editar\">\n");
      out.write("     <header class=\"menu\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img class=\"logo\" src=\"../assets/img/acueducto.png\" alt=\"\"/>  <i class=\"fa fa-user\"></i>  Usuario </a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span><img class=\"logo\" src=\"../assets/img/acueducto.png\" alt=\"\"/> </span>\n");
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
      out.write("                                <i class=\"far fa-address-book\"></i> Agenda\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"ConsultarAgenda.jsp\"> Consultar Agenda</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"RegistrarAgenda.jsp\"> Registrar Agenda</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"agenda.jsp\"> Listar Agenda</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"EditarAgenda.jsp\">Editar Agenda</a>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                <i class=\"far fa-eye\"></i> Visitas\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"../ConsultaVisita.jsp\"> Consultar Visita</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"../SolicitudVisita.jsp\"> Registrar Visita</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"listarVisitas.jsp\"> Listar Visitas</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"actualizarVisita.jsp\"> Editar Visita</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                <i class=\"far fa-clone\"></i> Categorías\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">Consultar Categorías</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">Registrar Categoría</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">Listar Categorìa</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">Editar Categorìa</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                <i class=\"far fa-sticky-note\"></i> Reportes\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">Consultar Reportes</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">Registrar Reportes</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">Listar Reportes</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\">Editar Reportes</a>\n");
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
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <div class=\"row h-100 justify-content-center align-items-center\">\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-10 mb-4 h-100\">\n");
      out.write("\n");
      out.write("                    <div class=\"card shadow mb-4\">\n");
      out.write("                        <div class=\"card-header py-3\">\n");
      out.write("                            <h3 class=\"m-0 font-weight-bold \">\n");
      out.write("                              <i class=\"far fa-clone\"></i> Categorías</h3>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-6 mb-4\">\n");
      out.write("                                    <a href=\"Reportes.jsp\" class=\"card bg-secondary text-white shadow\">\n");
      out.write("                                        <div class=\"card-body\">\n");
      out.write("                                            <i class=\"fas fa-file-import\"></i> Categoría 1\n");
      out.write("                                            <div class=\"text-white-50 small\">12</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-6 mb-4\">\n");
      out.write("                                    <a href=\"Reportes.jsp\" class=\"card bg-success text-white shadow\">\n");
      out.write("                                        <div class=\"card-body\">\n");
      out.write("                                            <i class=\"fas fa-file-import\"></i> Categoria 2\n");
      out.write("                                            <div class=\"text-white-50 small\">2</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-6 mb-4\">\n");
      out.write("                                    <a href=\"Reportes.jsp\" class=\"card bg-info text-white shadow\">\n");
      out.write("                                        <div class=\"card-body\">\n");
      out.write("                                            <i class=\"fas fa-file-import\"></i> Categoria 3\n");
      out.write("                                            <div class=\"text-white-50 small\">1</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-6 mb-4\">\n");
      out.write("                                    <a href=\"Reportes.jsp\" class=\"card bg-secondary text-white shadow\">\n");
      out.write("                                        <div class=\"card-body\">\n");
      out.write("                                            <i class=\"fas fa-file-import\"></i> Categoria 4\n");
      out.write("                                            <div class=\"text-white-50 small\">19</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("<!--                                <div class=\"col-lg-6 mb-4\">\n");
      out.write("                                    <a href=\"#\" class=\"card bg-danger text-white shadow\">\n");
      out.write("                                        <div class=\"card-body\">\n");
      out.write("                                            <i class=\"fas fa-file-import\"></i> Categoria 5\n");
      out.write("                                            <div class=\"text-white-50 small\">50</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-6 mb-4\">\n");
      out.write("                                    <a href=\"#\" class=\"card bg-secondary text-white shadow\">\n");
      out.write("                                        <div class=\"card-body\">\n");
      out.write("                                            <i class=\"fas fa-file-import\"></i>  Categoria 6\n");
      out.write("                                            <div class=\"text-white-50 small\">5</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>-->\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!--===============================================================================================-->\t\n");
      out.write("            <script src=\"../assets/js/alertas.js\" type=\"text/javascript\"></script>\n");
      out.write("            <script src=\"../assets/vendor/jquery/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("            <!--===============================================================================================-->\n");
      out.write("            <script src=\"../assets/vendor/bootstrap/js/popper.js\" type=\"text/javascript\"></script>\n");
      out.write("            <script src=\"../assets/vendor/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("            <!--===============================================================================================-->\n");
      out.write("            <script src=\"../assets/vendor/select2/select2.min.js\" type=\"text/javascript\"></script>\n");
      out.write("            <!--===============================================================================================-->\n");
      out.write("            <script src=\"../assets/vendor/tilt/tilt.jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("            <script >\n");
      out.write("                $('.js-tilt').tilt({\n");
      out.write("                    scale: 1.1\n");
      out.write("                })\n");
      out.write("            </script>\n");
      out.write("            <!--===============================================================================================-->\n");
      out.write("\n");
      out.write("            <script src=\"../assets/js/main.js\" type=\"text/javascript\"></script>\n");
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
