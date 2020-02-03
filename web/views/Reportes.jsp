<%-- 
    Document   : Reportes
    Created on : 15/11/2019, 10:29:03 PM
    Author     : Karito
--%>

<%@page import="modelos.dao.ReporteDAO"%>
<%@page import="modelos.vo.ReporteVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.dao.CategoriasDAO"%>
<%@page import="modelos.vo.CategoriasVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes</title>
        <link rel="shortcut icon" href="assets/img/acueducto.png" type="image/x-icon"/>
        <!--===============================================================================================-->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/fonts/fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="assets/vendor/animate/animate.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->	
        <link href="assets/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
        <link href="assets/vendor/select2/select2.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="assets/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <script src="Validaciones.js" type="text/javascript"></script>

    </head>
    <body class="editar">
        <header class="menu">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#"><img class="logo" src="assets/img/acueducto.png" alt=""/>  <i class="fa fa-user"></i>  Usuario </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span><img class="logo" src="assets/img/acueducto.png" alt=""/> </span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="items" class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="ControladorUsuario?accion=menu"> <i class="fa fa-home"></i> Inicio <span class="sr-only">(current)</span></a>
                        </li>


                        <li class="nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-users"></i> Usuarios
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="views/RegistrarUsuario.jsp">Registrar Usuario</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="ControladorUsuario?accion=listar">Lista de Usuarios</a>
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-address-book"></i> Eventos
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="views/RegistrarAgenda.jsp"> Registrar Evento</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="ControladorAgenda?accion=listar"> Lista de Evento</a>

                            </div>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-eye"></i> Visitas
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="SolicitudVisita.jsp"> Registrar Visita</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="ControladorVisita?accion=listar"> Listar Visitas</a>
                                <!--                                <div class="dropdown-divider"></div>
                                                                <a class="dropdown-item" href="actualizarVisita.jsp"> Editar Visita</a>-->
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-sticky-note"></i> Reportes
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="ControladorCategorias?accion=listar">Categorias</a>
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#"> <i class="fas fa-power-off"></i> Cerrar Sesión <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>

                </div>
            </nav>
        </header>
        <br>


        <%
            CategoriasVO vo = new CategoriasVO();
            CategoriasDAO dao = new CategoriasDAO(vo);
            int cod = Integer.parseInt((String) request.getAttribute("codigoa"));
            vo.setCodigo(cod);
            CategoriasVO age = (CategoriasVO) dao.consultar();
        %>

        <div class="container">

            <div class="row h-100 justify-content-center align-items-center">

                <div class="col-lg-10 mb-4 h-100">

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h3 class="m-0 font-weight-bold text-primary">
                                <i class="far fa-file-alt"></i> <%=age.getNombreCat()%></h3>
                        </div>
                        <div class="card-body">
                            <nav class="navbar navbar-light">
                                <form class="form-inline">
                                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                                    <button class="btn btn-success" type="submit" > Consultar Informes</button> 
                                </form>

                            </nav>
                            <form action="ControladorReporte">    
                                <table class="table">
                                    <thead class="black white-text bg-primary">
                                        <tr>
                                            <th scope="col">Titulo</th>
                                            <th scope="col">Fecha</th>
                                            <th scope="col">opciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%

                                            ArrayList<ReporteVO> pru = new ArrayList<ReporteVO>();
                                            ReporteVO rvo = new ReporteVO();
                                            ReporteDAO rdao = new ReporteDAO(rvo);
                                            rvo.setFKRcategoria(age.getCodigo());
                                            pru = (ArrayList) rdao.listar();

                                            for (ReporteVO obj : pru) {
                                        %>
                                        <tr>
                                            <td><%=obj.getNombreR()%></td>
                                            <td><%=obj.getFecha()%></td>
                                            <td> 
                                                <a href="" class="btn btn-primary btn-xs" role="button"><i class="far fa-eye"></i></a>

                                                <a href="ControladorReporte?accion=editar&codigo=<%=obj.getCodigoReporte()%>" class="btn btn-success btn-xs" role="button"><i class="far fa-edit"></i></a>

                                                <a href="#ventanae" data-toggle="modal" onclick="set(<%=obj.getCodigoReporte()%>)" class="btn btn-danger btn-xs" role="button"><i class="fas fa-trash"></i></a></td>

                                    <div class="modal fade" id="ventanae" >
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Eliminar Informe</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group">
                                                        <label>¿Esta seguro de eliminar este informe?</label><br>
                                                        <input type="hidden"id="ccc"name="codigo">
                                                    </div>


                                                </div>
                                                <div class="modal-footer" >
                                                    <Button class="btn btn-success" id="vvv" type="submit" name="accion" value="eliminar" >Eliminar</Button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </tr>


                                    <%
                                        }
                                    %>
                                    </tbody>
                                </table>
                            </form> 


                        </div>
                        <div class="card-body">
                            <form action="ControladorCategorias" class="validate-form">
                                <button href="#ventana4" type="button" class="btn btn-success" data-toggle="modal">
                                    Registrar Nuevo informe
                                </button>
                                <div class="modal fade" id="ventana4">
                                    <div class="modal-dialog bg-light h-50">
                                        <br><br>
                                        <h1 Style="color: black"><b>Registrar Informe</b></h1><hr><br>
                                        <div class="form-row">
                                            <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Nombre del informe">
                                                <input class="form-control input100" type="text" name ="txttitu" placeholder="Nombre del Informe">
                                                <input type="hidden" value="<%=age.getCodigo()%>" class="form-control" name ="txtcod2">
                                                <span class="focus-input100"></span>
                                                <span class="symbol-input100">
                                                    <i class="far fa-file-pdf"></i>       
                                                </span>
                                            </div>
                                            <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Fecha del evento">
                                                <input type="date" class="form-control input100" name ="txtfecha"  placeholder="Fecha del evento">
                                                <span class="focus-input100"></span>
                                                <span class="symbol-input100">
                                                    <i class="far fa-calendar-alt"></i>
                                                </span>
                                            </div>
                                            <!--                     <div class="col-md-6 mb-3 btn-light">
                                                                                <label for="validationCustom02">Subir archivo:</label>
                                                                                <div class="input-group">
                                                                                    <div class="custom-file">
                                                                                      <input type="file" class="custom-file-input" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04">
                                                                                      <label class="custom-file-label" for="inputGroupFile04">Seleccione el archivo</label>
                                                                                    </div>
                                                                                  </div>
                                                                            </div>-->
                                        </div>
                                        <div class="form-row">


                                            <div class="container-login100-form-btn">
                                                <Button class="login100-form-btn" type="submit" name="accion"value="Registar reporte"><b>Registrar Informe</b></button>
                                            </div>

                                            <div class="container-login100-form-btn">
                                                <button class="login100-form-btn" type="submit" onclick="return cancelarregistroR()">

                                                    <b> Cancelar</b>
                                                </button>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- Button trigger modal -->
                                <button type="button" href="#ventana2"class="btn btn-primary"data-toggle="modal">
                                    Editar Categoria
                                </button>
                                <!-- Modale editar -->

                                <div class="modal fade" id="ventana2">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Cambiar nombre</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <a></a>
                                                    <label>Nombre de la categoria</label>
                                                    <input type="text" class="form-control"value="<%=age.getNombreCat()%>" name ="txtnom">
                                                    <input type="hidden" value="<%=age.getCodigo()%>" class="form-control" name ="txtcod">
                                                </div>


                                            </div>
                                            <div class="modal-footer">
                                                <Button  class="btn btn-success" type="submit" name="accion"value="editar">Editar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button href="#ventana3" type="button" class="btn btn-danger" data-toggle="modal">
                                    Eliminar Categoria
                                </button>
                                <div class="modal fade" id="ventana3">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Eliminar categoria</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label>¿Esta seguro de eliminar esta categoria?</label><br>
                                                    <label>Todos los archivos que se encuentren dentro de esta categoria seran eliminados</label>
                                                </div>


                                            </div>
                                            <div class="modal-footer">
                                                <a type="submit" class="btn btn-danger" href="ControladorCategorias?accion=eliminar&codigo=<%=age.getCodigo()%>" value="Eliminar">Eliminar</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </form>




                        </div>
                        </form>


                    </div>

                </div>

            </div>

        </div>


        <!--===============================================================================================-->	
        <script src="assets/js/alertas.js" type="text/javascript"></script>
        <script src="assets/vendor/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/bootstrap/js/popper.js" type="text/javascript"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/select2/select2.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/tilt/tilt.jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
                                                    function set(codigov) {
                                                        document.getElementById('ccc').value = codigov;
                                                    }
                                                    ;
        </script>
        <script >
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
    </body>
</html>
