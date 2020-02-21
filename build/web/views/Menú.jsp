<%-- 
    Document   : Acceso
    Created on : 2/11/2019, 11:41:38 PM
    Author     : Karito
--%>

<%@page import="modelos.dao.UsuarioDAO"%>
<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.dao.AgendaDAO"%>
<%@page import="modelos.vo.AgendaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú Principal</title>
        <!--===============================================================================================-->	
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
        <link href="assets/select2/select2.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="assets/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->

    </head>
    <body class="editar uno">
        <%
        UsuarioVO u = (UsuarioVO)session.getAttribute("Id");
        UsuarioVO vo = new UsuarioVO();
        UsuarioDAO d = new UsuarioDAO(vo);
        if(u == null){
           request.getRequestDispatcher("Login.jsp").forward(request, response);
        }else{
        %>
        <header class="menu">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#"><img class="logo" src="assets/img/acueducto.png" alt=""/><%out.println(" " + u.getNombre() +" "+ u.getApellido()+"\n \t");%>
                    </a>
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
                            <a class="nav-link" href="CerrarSesion"> <i class="fas fa-power-off"></i> Cerrar Sesión <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>

                </div>
            </nav>
        </header>

        <div class="container">
            <div class="row" style="padding-top: 100px">
                <div class="col-8">
                    <div class="calendar">
    <div class="calendar__info">
        <div class="calendar__prev" id="prev-month">&#9664;</div>
        <div class="calendar__month" id="month">Enero</div>
        <div class="calendar__year" id="year">2020</div>
        <div class="calendar__next" id="next-month">&#9654;</div>
    </div>

    <div class="calendar__week">
        <div class="calendar__day calendar__item">Lunes</div>
        <div class="calendar__day calendar__item">Martes</div>
        <div class="calendar__day calendar__item">Miercoles</div>
        <div class="calendar__day calendar__item">Jueves</div>
        <div class="calendar__day calendar__item">viernes</div>
        <div class="calendar__day calendar__item">Sabado</div>
        <div class="calendar__day calendar__item">Domingo</div>
        
    </div>

    <div class="calendar__dates" id="dates" ></div>
</div>
                </div>
                
                <div class="col-4">
                    <hr>
                    <button href="ControladorVisita?accion=listar" type="button" class="btn btn-outline-success h-25 w-100">Gestionar visitas  <i class="fas fa-male"></i></button>
                    <button href="ControladorAgenda?accion=listar" type="button" class="btn btn-outline-success h-25 w-100">Gestionar informes <i class="fas fa-chart-line"></i></button>
                    <button href="ControladorCategorias?accion=listar" type="button" class="btn btn-outline-success h-25 w-100">Gestionar usuarios <i class="fas fa-user"></i></button>
                </div>
            </div>
        </div>
            <div class="modal fade" id="ventana1">
            <div class="modal-dialog">
                <div class="modal-content">
      <div class="modal-header">
        <h5 id="uno" class="modal-title" id="exampleModalLabel"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="background-color: #a3d5d1">
        <div class="form-group" id="modal-events">
            
            <a id='sii' class="abajo-derecha"href="">Registrar un evento</a>
  </div>
          
      
      </div>
    </div>
            </div>
</div>
        <div class="modal fade" id="ventana2">
            <div class="modal-dialog">
                <div class="modal-content">
      <div class="modal-header">
          <div aria-hidden="true" href="#ventana1" style="cursor: default" type="button" data-toggle="modal" onclick="$('#ventana2').modal('hide');">&#9664;</div>
        <h5 id="Titulo" class="modal-title"></h5>
        <button type="button" class="close" data-dismiss="modal">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="background-color: #a3d5d1">
        <div class="form-group">
    <label id="descripcion">Informacion de los eventos</label><br>
    <label id="fecha">Informacion de los eventos</label><br>
    <label id="estado">Informacion de los eventos</label><br>
    <a style="color:red;position:absolute;bottom:10px;right:90px;cursor: pointer;"onclick="elim()">Eliminar</a>
    <a id="editar" class="btn btn-success abajo-derecha"href="">Editar</a>
  </div>
          
          
      </div>
    </div>
            </div>
</div>





















        <!--===============================================================================================-->	
        <script src="assets/vendor/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>

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
        
        <script src="assets/js/Calendario.js"></script>
        
             <%
                 AgendaVO lo = new AgendaVO();
                            AgendaDAO dao = new AgendaDAO(lo);
                            ArrayList<AgendaVO> list = (ArrayList) dao.listar();

                        %>
                        <script type="text/javascript">
            var ac =  new Array();
            var eventos = new Array();
            <%
                for (AgendaVO obj2 : list) {
            %>
            	ac.push('<%=obj2.getFecha()%>');
                eventos.push(['<%=obj2.getFecha()%>','<%=obj2.getTipo()%>','<%=obj2.getDescripcion()%>','<%=obj2.getEstado()%>','<%=obj2.getCodigoa()%>']);
                <%
                }
                %>
            cal(ac,eventos);
        </script>
        <script src="assets/js/acciones.js"></script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
        <%}%>
    </body>
</html>
