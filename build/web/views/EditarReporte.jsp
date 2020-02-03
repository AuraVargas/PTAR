<%-- 
    Document   : EditarInforme
    Created on : 14/11/2019, 11:39:05 PM
    Author     : Karito
--%>

<%@page import="modelos.dao.ReporteDAO"%>
<%@page import="modelos.dao.ReporteDAO"%>
<%@page import="modelos.vo.ReporteVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Informe</title>
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
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
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

        <div class="container">

            <form action="ControladorReporte" action ="" class=" validate-form" method="POST" >

                <input class="form-control" name="ruta" value="PTAR/SolicitarVisita/Empresa"style = "opacity: 0;">
                <%

                    ReporteVO rvo = new ReporteVO();
                    ReporteDAO rdao = new ReporteDAO(rvo);
                    int cod = Integer.parseInt((String) request.getAttribute("codigor"));
                    rvo.setCodigoReporte(cod);
                    ReporteVO pru = (ReporteVO) rdao.consultar();

                %>
                <h1 ><b>Editar Informe</b></h1><hr><br>
                <!--                <div class="form-row">-->
                <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Nombre del informe">
                    <input class="form-control input100" type="text" value="<%=pru.getNombreR()%>" name ="txttitu" placeholder="Nombre del Informe">
                    <input type="hidden" class="form-control" value="<%=cod%>" name ="txtcod">
                    <input type="hidden" class="form-control"value="<%=pru.getFKRcategoria()%>" name ="txtcat">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
                        <i class="far fa-file-pdf"></i>       
                    </span>
                </div>
                <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Fecha del evento">
                    <input type="date" class="form-control input100" value="<%=pru.getFecha()%>"  name ="txtfecha"  placeholder="Fecha del evento">
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
                                                </div>
                                </div>-->
                <div class="form-row">


                    <div class="container-login100-form-btn">
                        <Button class="login100-form-btn" type="submit" name="accion"value="Actualizar"><b>Editar Informe</b></button>
                    </div>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" type="submit" onclick="return cancelarregistroR()">

                            <b> Cancelar</b>
                        </button>

                    </div>
                </div>
            </form>
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
    <script >
                            $('.js-tilt').tilt({
                                scale: 1.1
                            })
    </script>
    <!--===============================================================================================-->

    <script src="assets/js/main.js" type="text/javascript"></script>
</body>
</html>
