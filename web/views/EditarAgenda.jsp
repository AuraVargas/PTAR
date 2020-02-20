<%-- 
    Document   : EditarAgenda
    Created on : 03-nov-2019, 19:52:39
    Author     : HP
--%>

<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="modelos.dao.AgendaDAO"%>
<%@page import="modelos.vo.AgendaVO"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Editar Agenda </title>
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
       <%
        UsuarioVO u = (UsuarioVO)session.getAttribute("Id");
        %>
    <body class="editar">
        <header class="menu">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#"><img class="logo" src="assets/img/acueducto.png" alt=""/>  <i class="fa fa-user"></i><%out.println(" " + u.getNombre() +" "+ u.getApellido()+"\n \t");%>
                    <%out.println("Cargo: " + u.getRol());%> </a>
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
                                <a class="dropdown-item" href="ControladorAgenda?accion=add"> Registrar Evento</a>
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
                            <a class="nav-link" href="cerrarSesion.do"> <i class="fas fa-power-off"></i> Cerrar Sesión <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>

                </div>
            </nav>
        </header>
        <div class="container">

            <form action ="ControladorAgenda" method="POST">
                <br> 
                <h1>Editar de evento en la agenda<hr>  <div>
                <a href="#ventana1" class="btn btn-danger" data-toggle="modal">
                               Eliminar Evento
                            </a>
                                <div class="modal fade" id="ventana1" >
            <div class="modal-dialog">
                <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Eliminar Evento</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
                    <div class="modal-body">
        <div class="form-group">
            <h5>¿Esta seguro de eliminar este evento de la agenda?</h5><br>
  </div>
          
          
      </div>
      <div class="modal-footer" >
          <Button class="btn btn-success" type="submit" name="accion" value="eliminar" >Eliminar</Button>
      </div>
    </div>
            </div>
</div>
                        </div></h1><br>
                <%
                                        AgendaVO vo = new AgendaVO();
                                        AgendaDAO dao = new AgendaDAO(vo);
                                     int cod = Integer.parseInt((String) request.getAttribute("codigoa"));
                                     String desde = (String) request.getAttribute("desde");
                                        vo.setCodigoa(cod);
                                        AgendaVO age = (AgendaVO) dao.consultar();
                %>
                <div class="form-row">
                    <input type="hidden" value="<%=age.getCodigoa()%>" name ="txtcodigo">
                    <input type="hidden" value="<%=desde%>" name ="desde">
                    <div class="col-md-6 mb-3">
                        <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                            <label>Tipo de evento</label>
                            <select class="selectpicker input100" data-live-search="true" name="txttipo">
                                <option data-tokens="selecciona"><%=age.getTipo()%></option>
                                <option data-tokens="Evento Comunitario">Evento Comunitario</option>
                                <option data-tokens="Reunion anual">Reunión Anual</option>
                                <option data-tokens="Visita Escolar">Visita Escolar</option>
                                <option data-tokens="Conferencia">Conferencia</option>
                                <option data-tokens="Junta">Junta</option>
                                <option data-tokens="Foro">Foro</option>
                            </select>
                            <span class="focus-input100"></span>
                            <br>
                            <span class="symbol-input100">
                                <i class="fab fa-elementor"></i>
                            </span>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Estado del Evento?">
                            <label>Estado de evento</label>
                            <select class="selectpicker input100" data-live-search="true" name="txtestado">
                                <option data-tokens="selecciona"></option>
                                <option data-tokens="Activo"> Activo</option>
                                <option data-tokens="Cancelado">Cancelado</option>
                            </select>
                            <span class="focus-input100"></span>
                            <br>
                            <span class="symbol-input100">
                                <i class="fas fa-thermometer-three-quarters"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "Escribe nombre de encargado, lugar, etc">
                        <label>Descripción de evento</label>
                        <input class="input1 input100" type="text" name="txtDescripcion"value="<%=age.getDescripcion()%>" placeholder="Descripción del evento ">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fas fa-envelope-open-text"></i>
                        </span>
                    </div>
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Fecha de la visita">
                        <label>Fecha de la Visita</label>
                        <input type="date" class="form-control input100"  value="<%=age.getFecha()%>" name ="txtfecha"   placeholder="Fecha de la visita">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="far fa-calendar-alt"></i>
                        </span>
                    </div>
    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" type="submit" name="accion" value="Actualizar">
                            <b> Guardar</b>
                        </button> 
                    </div>
                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" type="submit" onclick="return cancelaredicion()">
                            <b> Cancelar</b>
                        </button>
                    </div>
                  
                </div>
            </form>

        </div>




        <!--===============================================================================================-->	
        
        <script src="assets/vendor/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="assets/js/alertas.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/bootstrap/js/popper.js" type="text/javascript"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/select2/select2.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="assets/vendor/tilt/tilt.jquery.min.js" type="text/javascript"></script>
        <script >
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>

    </body>
</html>
