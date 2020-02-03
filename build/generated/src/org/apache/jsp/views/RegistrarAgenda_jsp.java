package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Calendar;

public final class RegistrarAgenda_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Registrar Agenda </title>\n");
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
      out.write("                                <a class=\"dropdown-item\" href=\"RegistrarAgenda.jsp\"> Registrar Evento</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"../ControladorAgenda?accion=listar\"> Lista de Evento</a>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                <i class=\"far fa-eye\"></i> Visitas\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"../SolicitudVisita.jsp\"> Registrar Visita</a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"../ControladorVisita?accion=listar\"> Listar Visitas</a>\n");
      out.write("                                <!--                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                                                <a class=\"dropdown-item\" href=\"actualizarVisita.jsp\"> Editar Visita</a>-->\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                <i class=\"far fa-sticky-note\"></i> Reportes\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"../ControladorCategorias?accion=listar\">Categorias</a>\n");
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
      out.write("        <!--<div id=\"\" class=\"wrap-login103\">-->\n");
      out.write("        <form action =\"../ControladorAgenda\" class=\" validate-form\">\n");
      out.write("            <h1><b> Registro de evento en la Agenda</b></h1>\n");
      out.write("            <hr><br>\n");
      out.write("            <span class=\"centrado\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"form-family mr-md-3 \">\n");
      out.write("                        <div class=\"col-md-6 mb-3\">\n");
      out.write("                            <div class=\"wrap-input3 validate-input\" data-validate = \"¿Cuál es el Evento?\">\n");
      out.write("                                <select class=\"selectpicker input100\" data-live-search=\"true\" name=\"txttipo\">\n");
      out.write("                                    <option data-tokens=\"selecciona\">Elige el tipo de Evento</option>\n");
      out.write("                                    <option data-tokens=\"Evento Comunitario\">Evento Comunitario</option>\n");
      out.write("                                    <option data-tokens=\"Reunion anual\">Reunión Anual</option>\n");
      out.write("                                    <option data-tokens=\"Visita Escolar\">Visita Escolar</option>\n");
      out.write("                                    <option data-tokens=\"Conferencia\">Conferencia</option>\n");
      out.write("                                    <option data-tokens=\"Junta\">Junta</option>\n");
      out.write("                                    <option data-tokens=\"Foro\">Foro</option>\n");
      out.write("                                </select>\n");
      out.write("                                <span class=\"focus-input100\"></span>\n");
      out.write("                                <span class=\"symbol-input100\">\n");
      out.write("                                    <i class=\"fab fa-elementor\"></i>\n");
      out.write("                                </span>\n");
      out.write("                            </div>\n");
      out.write("                            <br>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-family mr-md-3 \">\n");
      out.write("                        <div class=\"col-md-6 mb-3 wrap-input100 validate-input\" data-validate = \"Fecha del evento\">\n");
      out.write("                            <input type=\"date\" class=\"form-control input100\" name=\"txtfecha\"  placeholder=\"Fecha del evento\">\n");
      out.write("                            <span class=\"focus-input100\"></span>\n");
      out.write("                            <span class=\"symbol-input100\">\n");
      out.write("                                <i class=\"far fa-calendar-alt\"></i>\n");
      out.write("                            </span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-family mr-md-3 \">\n");
      out.write("                        <div class=\"wrap-input100 validate-input col-md-6 mb-3\" data-validate = \"Escribe nombre de encargado, lugar, etc\">\n");
      out.write("                            <input class=\"input1 input100\" type=\"text\" name=\"txtDescripcion\" placeholder=\"Descripción del evento \">\n");
      out.write("                            <span class=\"focus-input100\"></span>\n");
      out.write("                            <span class=\"symbol-input100\">\n");
      out.write("                                <i class=\"fas fa-envelope-open-text\"></i>\n");
      out.write("                            </span>\n");
      out.write("                        </div> \n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"container-login100-form-btn\">\n");
      out.write("                        <div class=\"container-login100-form-btn\">\n");
      out.write("                            <button class=\"login100-form-btn\" type=\"submit\" name=\"accion\" value=\"Registrar\">\n");
      out.write("                                <b> Registrar</b>\n");
      out.write("                            </button> \n");
      out.write("                            <div class=\"container-login100-form-btn\">\n");
      out.write("                                <button class=\"login100-form-btn\" type=\"submit\" onclick=\"return cancelarregistroA()\">\n");
      out.write("                                    <b> Cancelar</b>\n");
      out.write("                                </button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                </span>\n");
      out.write("\n");
      out.write("\n");
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
      out.write("                                        $('.js-tilt').tilt({\n");
      out.write("                                            scale: 1.1\n");
      out.write("                                        })\n");
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
