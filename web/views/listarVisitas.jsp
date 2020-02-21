<%-- 
    Document   : listarVisitas
    Created on : 5/11/2019, 10:51:49 AM
    Author     : Karito
--%>

<%@page import="modelos.dao.VisitasDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.vo.VisitasVO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Listar Visitas </title>
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
        <link href="ssets/css/util.css" rel="stylesheet" type="text/css"/>
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
                            <a class="nav-link" href="#"> <i class="fas fa-power-off"></i> Cerrar Sesión <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>

                </div>
            </nav>
        </header>
        <br>
        <div class="container">

            <h1><b> Listar Visitas</b></h1><hr>
            <nav class="navbar navbar-light">
                <form class="form-inline"accion="ControladorAgenda">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn btn-success" type="submit" >Consultar Registros</button> 
                    <!--                    <input type="button" class="btn btn-danger" onclick="window.location.href = ('actualizarVisita.jsp');" value="Editar Visita"/> <br>
                                        <button class="btn btn-success" type="submit" onclick="return eliminarVisita()">Eliminar Visita</button>-->
                </form>
            </nav>
            <form class="text-center" action="ControladorVisita">
                <br>

                <table class=" table-bordered table-dark">
                    <tr>
                        <th> Código de la Visita </th>
                        <th> Descripción de la Institución </th>
                        <th> Numero de personas que asisten </th>
                        <th> Nombre del Representante </th>
                        <th> Correo Electrónico </th>
                        <th></th>
                    </tr>
                    <%

                        ArrayList<VisitasVO> pru = new ArrayList<VisitasVO>();
                        VisitasVO vo = new VisitasVO();
                        VisitasDAO dao = new VisitasDAO(vo);
                        pru = (ArrayList) dao.listar();

                        String buscar = request.getParameter("txtbusqueda");
                        if (buscar != null) {
                            vo.setDescripcion(buscar);
                            pru = (ArrayList) dao.consultar2();
                        } else {
                            System.out.println("error");
                        }
                        for (VisitasVO obj : pru) {
                    %>
                    <tr>
                        <td rowspan="2"><a name = "codigo" href="ConsultaVisita.jsp" ><%=obj.getCodigov()%></a></td>
                        <td rowspan="2"><%=obj.getDescripcion()%></td>
                        <td rowspan="2"><%=obj.getNumeroPersonas()%></td>
                        <td rowspan="2"><%=obj.getNombre()%></td>
                        <td rowspan="2"> <%=obj.getCorreo()%></td>
                        <td><a name ="codigov "class="btn tbn-primary btn-1g"value="<%=obj.getCodigov()%>"href="ControladorVisita?accion=editar&codigo=<%=obj.getCodigov()%>">Editar</a></td>
                    </tr>
                    <tr>
                        <td>        <a href="#ventana1" class="btn tbn-primary btn-1g" data-toggle="modal"onclick="set(<%=obj.getCodigov()%>);">Eliminar</a>
                            <div class="modal fade" id="ventana1" >
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Eliminar Visita</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label>¿Esta seguro de eliminar esta Visita?</label><br>
                                                <input type="hidden"id="ccc"name="ccc">
                                            </div>


                                        </div>
                                        <div class="modal-footer" >
                                            <Button class="btn btn-success" id="vvv" type="submit" name="accion" value="eliminar" >Eliminar</Button>
                                        </div>
                                    </div>
                                </div>
                            </div></td>
                    </tr>
                    <%
                        }
                    %>

                </table>
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
