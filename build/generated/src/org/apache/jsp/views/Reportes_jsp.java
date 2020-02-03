package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelos.dao.ReporteDAO;
import modelos.vo.ReporteVO;
import java.util.ArrayList;
import modelos.dao.CategoriasDAO;
import modelos.vo.CategoriasVO;

public final class Reportes_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Reportes</title>\n");
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
      out.write("\n");
      out.write("\n");
      out.write("        ");

            CategoriasVO vo = new CategoriasVO();
            CategoriasDAO dao = new CategoriasDAO(vo);
            int cod = Integer.parseInt((String) request.getAttribute("codigoa"));
            vo.setCodigo(cod);
            CategoriasVO age = (CategoriasVO) dao.consultar();
        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <div class=\"row h-100 justify-content-center align-items-center\">\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-10 mb-4 h-100\">\n");
      out.write("\n");
      out.write("                    <div class=\"card shadow mb-4\">\n");
      out.write("                        <div class=\"card-header py-3\">\n");
      out.write("                            <h3 class=\"m-0 font-weight-bold text-primary\">\n");
      out.write("                                <i class=\"far fa-file-alt\"></i> ");
      out.print(age.getNombreCat());
      out.write("</h3>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <nav class=\"navbar navbar-light\">\n");
      out.write("                                <form class=\"form-inline\">\n");
      out.write("                                    <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Buscar\" aria-label=\"Search\">\n");
      out.write("                                    <button class=\"btn btn-success\" type=\"submit\" > Consultar Informes</button> \n");
      out.write("                                </form>\n");
      out.write("\n");
      out.write("                            </nav>\n");
      out.write("                            <form action=\"ControladorReporte\">    \n");
      out.write("                                <table class=\"table\">\n");
      out.write("                                    <thead class=\"black white-text bg-primary\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"col\">Titulo</th>\n");
      out.write("                                            <th scope=\"col\">Fecha</th>\n");
      out.write("                                            <th scope=\"col\">opciones</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        ");


                                            ArrayList<ReporteVO> pru = new ArrayList<ReporteVO>();
                                            ReporteVO rvo = new ReporteVO();
                                            ReporteDAO rdao = new ReporteDAO(rvo);
                                            rvo.setFKRcategoria(age.getCodigo());
                                            pru = (ArrayList) rdao.listar();

                                            for (ReporteVO obj : pru) {
                                        
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>");
      out.print(obj.getNombreR());
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(obj.getFecha());
      out.write("</td>\n");
      out.write("                                            <td> \n");
      out.write("                                                <a href=\"\" class=\"btn btn-primary btn-xs\" role=\"button\"><i class=\"far fa-eye\"></i></a>\n");
      out.write("\n");
      out.write("                                                <a href=\"ControladorReporte?accion=editar&codigo=");
      out.print(obj.getCodigoReporte());
      out.write("\" class=\"btn btn-success btn-xs\" role=\"button\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("\n");
      out.write("                                                <a href=\"#ventanae\" data-toggle=\"modal\" onclick=\"set(");
      out.print(obj.getCodigoReporte());
      out.write(")\" class=\"btn btn-danger btn-xs\" role=\"button\"><i class=\"fas fa-trash\"></i></a></td>\n");
      out.write("\n");
      out.write("                                    <div class=\"modal fade\" id=\"ventanae\" >\n");
      out.write("                                        <div class=\"modal-dialog\">\n");
      out.write("                                            <div class=\"modal-content\">\n");
      out.write("                                                <div class=\"modal-header\">\n");
      out.write("                                                    <h5 class=\"modal-title\" id=\"exampleModalLabel\">Eliminar Informe</h5>\n");
      out.write("                                                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                        <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                                    </button>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"modal-body\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label>¿Esta seguro de eliminar este informe?</label><br>\n");
      out.write("                                                        <input type=\"hidden\"id=\"ccc\"name=\"codigo\">\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"modal-footer\" >\n");
      out.write("                                                    <Button class=\"btn btn-success\" id=\"vvv\" type=\"submit\" name=\"accion\" value=\"eliminar\" >Eliminar</Button>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </form> \n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <form action=\"ControladorCategorias\" class=\"validate-form\">\n");
      out.write("                                <button href=\"#ventana4\" type=\"button\" class=\"btn btn-success\" data-toggle=\"modal\">\n");
      out.write("                                    Registrar Nuevo informe\n");
      out.write("                                </button>\n");
      out.write("                                <div class=\"modal fade\" id=\"ventana4\">\n");
      out.write("                                    <div class=\"modal-dialog bg-light h-50\">\n");
      out.write("                                        <br><br>\n");
      out.write("                                        <h1 Style=\"color: black\"><b>Registrar Informe</b></h1><hr><br>\n");
      out.write("                                        <div class=\"form-row\">\n");
      out.write("                                            <div class=\"col-md-6 mb-3 wrap-input100 validate-input\" data-validate = \"Nombre del informe\">\n");
      out.write("                                                <input class=\"form-control input100\" type=\"text\" name =\"txttitu\" placeholder=\"Nombre del Informe\">\n");
      out.write("                                                <input type=\"hidden\" value=\"");
      out.print(age.getCodigo());
      out.write("\" class=\"form-control\" name =\"txtcod2\">\n");
      out.write("                                                <span class=\"focus-input100\"></span>\n");
      out.write("                                                <span class=\"symbol-input100\">\n");
      out.write("                                                    <i class=\"far fa-file-pdf\"></i>       \n");
      out.write("                                                </span>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6 mb-3 wrap-input100 validate-input\" data-validate = \"Fecha del evento\">\n");
      out.write("                                                <input type=\"date\" class=\"form-control input100\" name =\"txtfecha\"  placeholder=\"Fecha del evento\">\n");
      out.write("                                                <span class=\"focus-input100\"></span>\n");
      out.write("                                                <span class=\"symbol-input100\">\n");
      out.write("                                                    <i class=\"far fa-calendar-alt\"></i>\n");
      out.write("                                                </span>\n");
      out.write("                                            </div>\n");
      out.write("                                            <!--                     <div class=\"col-md-6 mb-3 btn-light\">\n");
      out.write("                                                                                <label for=\"validationCustom02\">Subir archivo:</label>\n");
      out.write("                                                                                <div class=\"input-group\">\n");
      out.write("                                                                                    <div class=\"custom-file\">\n");
      out.write("                                                                                      <input type=\"file\" class=\"custom-file-input\" id=\"inputGroupFile04\" aria-describedby=\"inputGroupFileAddon04\">\n");
      out.write("                                                                                      <label class=\"custom-file-label\" for=\"inputGroupFile04\">Seleccione el archivo</label>\n");
      out.write("                                                                                    </div>\n");
      out.write("                                                                                  </div>\n");
      out.write("                                                                            </div>-->\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-row\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            <div class=\"container-login100-form-btn\">\n");
      out.write("                                                <Button class=\"login100-form-btn\" type=\"submit\" name=\"accion\"value=\"Registar reporte\"><b>Registrar Informe</b></button>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"container-login100-form-btn\">\n");
      out.write("                                                <button class=\"login100-form-btn\" type=\"submit\" onclick=\"return cancelarregistroR()\">\n");
      out.write("\n");
      out.write("                                                    <b> Cancelar</b>\n");
      out.write("                                                </button>\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- Button trigger modal -->\n");
      out.write("                                <button type=\"button\" href=\"#ventana2\"class=\"btn btn-primary\"data-toggle=\"modal\">\n");
      out.write("                                    Editar Categoria\n");
      out.write("                                </button>\n");
      out.write("                                <!-- Modale editar -->\n");
      out.write("\n");
      out.write("                                <div class=\"modal fade\" id=\"ventana2\">\n");
      out.write("                                    <div class=\"modal-dialog\">\n");
      out.write("                                        <div class=\"modal-content\">\n");
      out.write("                                            <div class=\"modal-header\">\n");
      out.write("                                                <h5 class=\"modal-title\" id=\"exampleModalLabel\">Cambiar nombre</h5>\n");
      out.write("                                                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                    <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                                </button>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"modal-body\">\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <a></a>\n");
      out.write("                                                    <label>Nombre de la categoria</label>\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\"value=\"");
      out.print(age.getNombreCat());
      out.write("\" name =\"txtnom\">\n");
      out.write("                                                    <input type=\"hidden\" value=\"");
      out.print(age.getCodigo());
      out.write("\" class=\"form-control\" name =\"txtcod\">\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"modal-footer\">\n");
      out.write("                                                <Button  class=\"btn btn-success\" type=\"submit\" name=\"accion\"value=\"editar\">Editar</button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <button href=\"#ventana3\" type=\"button\" class=\"btn btn-danger\" data-toggle=\"modal\">\n");
      out.write("                                    Eliminar Categoria\n");
      out.write("                                </button>\n");
      out.write("                                <div class=\"modal fade\" id=\"ventana3\">\n");
      out.write("                                    <div class=\"modal-dialog\">\n");
      out.write("                                        <div class=\"modal-content\">\n");
      out.write("                                            <div class=\"modal-header\">\n");
      out.write("                                                <h5 class=\"modal-title\" id=\"exampleModalLabel\">Eliminar categoria</h5>\n");
      out.write("                                                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                    <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                                </button>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"modal-body\">\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label>¿Esta seguro de eliminar esta categoria?</label><br>\n");
      out.write("                                                    <label>Todos los archivos que se encuentren dentro de esta categoria seran eliminados</label>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"modal-footer\">\n");
      out.write("                                                <a type=\"submit\" class=\"btn btn-danger\" href=\"ControladorCategorias?accion=eliminar&codigo=");
      out.print(age.getCodigo());
      out.write("\" value=\"Eliminar\">Eliminar</a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--===============================================================================================-->\t\n");
      out.write("        <script src=\"assets/js/alertas.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/vendor/jquery/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <script src=\"assets/vendor/bootstrap/js/popper.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/vendor/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <script src=\"assets/vendor/select2/select2.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("        <script src=\"assets/vendor/tilt/tilt.jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("                                                    function set(codigov) {\n");
      out.write("                                                        document.getElementById('ccc').value = codigov;\n");
      out.write("                                                    }\n");
      out.write("                                                    ;\n");
      out.write("        </script>\n");
      out.write("        <script >\n");
      out.write("            $('.js-tilt').tilt({\n");
      out.write("                scale: 1.1\n");
      out.write("            })\n");
      out.write("        </script>\n");
      out.write("        <!--===============================================================================================-->\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/main.js\" type=\"text/javascript\"></script>\n");
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
