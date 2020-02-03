<%-- 
    Document   : actualizarVisita
    Created on : 03-nov-2019, 18:58:04
    Author     : HP
--%>

<%@page import="modelos.dao.VisitasDAO"%>
<%@page import="modelos.vo.VisitasVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Visita</title>
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
        
     
        <div class="container">
            <form action="ControladorVisita" action ="" class=" validate-form" method="POST" > 
                <input class="form-control" name="ruta" value="PTAR/SolicitarVisita/Empresa"style = "opacity: 0;">
                      
      <%
                VisitasVO vo= new VisitasVO();
                VisitasDAO dao=new VisitasDAO(vo);
                vo.setCodigov(Integer.parseInt((String)request.getAttribute("codigov")));
                VisitasVO visita = (VisitasVO)dao.consultar();
                visita.getCodigoa();
      %>
                <h1><b>Actualizar datos de Visita</b><hr>  <div>
                            <button class="btn btn-danger" onclick="return eliminarregistroA()">
                               Eliminar Evento
                            </button> <br>
                        </div></h1><br><br>
                <h3>Información sobre la empresa o institución: </h3><br>
                <div class="form-row">
                       <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Ingresa código de la visita">
                           <label>Codigo de la Visita</label>
                        <input class="form-control input100" type="number"value="<%=(String)request.getAttribute("codigov")%>" name ="txtcodigov"placeholder="Código de la Visita"readonly="readonly">
                        <input class="form-control input100" type="hidden"value="<%=visita.getCodigoa()%>" name ="txtcodigoA"placeholder="Código de la Visita">

                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                           <i class="fas fa-sort-numeric-up"></i>
                        </span>
                    </div>
                </div>
                    <div class="form-row">
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "NIT de la Empresa">
                        <label>NIT de la Empresa</label>
                        <input class="form-control input100" type="number" value="<%=visita.getNit()%>" name ="txtnit" placeholder="NIT" readonly="readonly">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-building"></i>
                        </span>
                    </div>
                        
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Escribe el Número de personas que asistirán a la visita">
                        <label>Numero de personas que asistiran a la visita</label>
                        <input class="form-control input100" type="number" value="<%=visita.getNumeroPersonas()%>" name ="txtNumeroPersonas" placeholder="Número de personas que asistirán a la visita">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-users"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "Dirección, nombre de la empresa etc">
                        <label>Descripción de la Visita</label>
                        <input class="input1 input100" type="text" value="<%=visita.getDescripcion()%>" name="txtDescripcion" placeholder="Descripción de la Empresa ">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-envelope-open-text"></i>
                        </span>
                    </div> 
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Fecha de la visita">
                        <label>Fecha de la Visita</label>
                        <input type="date" class="form-control input100" value="<%=visita.getFecha()%>" name ="txtfecha"  placeholder="Fecha de la visita">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="far fa-calendar-alt"></i>
                        </span>
                    </div>
                </div><br>
                <h3>Persona que representará la empresa para realizar esta visita:</h3><br>
                <div class="form-row">
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "¿Cuál es el nombre de la persona encargada?">
                        <label>Nombre de la persona encargada</label>
                        <input type="text" class="form-control input100" value="<%=visita.getNombre()%>" name ="txtnombrerepresentante" placeholder="Nombre Completo" >
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-portrait"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu ID?">
                        <label>Identificacion del encargado</label>
                        <input class="form-control input100" type="number" value="<%=visita.getEncargadoID()%>" name ="txtidr" placeholder="Número de Identificación"readonly="readonly">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fa fa-address-card"></i>
                        </span>
                    </div>
                    <div class=" wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Email?">
                        <label>Email del encargado</label>
                        <input class="input100" type="text" value="<%=visita.getCorreo()%>" name ="txtcorreo" placeholder="Email ">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-at"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Tel?">
                        <label>Numero de telefono del encargado</label>
                        <input class="input100" type="number" value="<%=visita.getTelefono()%>" name ="txttelefono" placeholder="Teléfono">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fa fa-phone-alt"></i>
                        </span>
                    </div>
                

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" type="submit" name="accion"value="Actualizar" >
                            <b> Actualizar</b>
                        </button> 
                    </div>
                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" type="submit">
                            <b> Cancelar</b>
                        </button>
                    </div>
                </div>
            </form>
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
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
    </body>
</html>
