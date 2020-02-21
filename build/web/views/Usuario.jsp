<%-- 
    Document   : listarVisitas
    Created on : 5/11/2019, 10:51:49 AM
    Author     : Karito
--%>

<%@page import="modelos.dao.UsuarioDAO"%>
<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="modelos.dao.VisitasDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.vo.VisitasVO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Lista Usuario</title>
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
    <body class="editar dos">
                <%
        UsuarioVO u = (UsuarioVO)session.getAttribute("Id");
        %>
        <header class="menu">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#"><img class="logo" src="assets/img/acueducto.png" alt=""/>  <%out.println(" " + u.getNombre() +" "+ u.getApellido()+"\n \t");%>
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
                            <a class="nav-link" href="cerrarSesion.do"> <i class="fas fa-power-off"></i> Cerrar Sesión <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>

                </div>
            </nav>
        </header>
        <br>
        <div class="container">

            <h1><b> Lista de usuarios</b></h1><hr>
            <nav class="navbar navbar-light">
                <form class="form-inline"accion="ControladorAgenda">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn btn-success" type="submit" >Consultar Registros</button> 
                    <!--                    <input type="button" class="btn btn-danger" onclick="window.location.href = ('actualizarVisita.jsp');" value="Editar Visita"/> <br>
                                        <button class="btn btn-success" type="submit" onclick="return eliminarVisita()">Eliminar Visita</button>-->
                </form>
            </nav>
            <form class="text-center" action="ControladorUsuario">
                <br>
<% 
        ArrayList<UsuarioVO> pru = new ArrayList<UsuarioVO>();
        UsuarioVO vo= new UsuarioVO();
        UsuarioDAO dao=new UsuarioDAO(vo);
        pru =(ArrayList) dao.listar();
        String nombuscar = request.getParameter("txtBuscar");
        
        
        %>
                <table class=" table2">
                    <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Rol</th>
                    <th>Numero de telefono</th>
                    <th>Correo</th>
                    <th>Acciones</th>
                    
                </tr>
            </thead>

            <%
            if(nombuscar != null){
                vo.setID(Integer.parseInt((String)request.getAttribute(nombuscar)));
                UsuarioVO temp = (UsuarioVO)dao.consultar();
                pru.get(temp.getID());
                for(UsuarioVO oj : pru){
        
           %>
             <tbody>
                <tr>
                    <td><%=oj.getID()%></td>
                    <td><%=oj.getNombre()%></td>
                    <td><%=oj.getApellido()%></td>
                    <td><%=oj.getRol()%></td>
                    <td><%=oj.getTelefono()%></td>
                    <td><%=oj.getEmail()%></td>
                    <td><a href="ControladorUsuario?accion=editar&ID=<%=oj.getID()%>">Actualizar</a>
                        <a href="ControladorUsuario?accion=eliminar&ID=<%=oj.getID()%>">Eliminar</a></td>
                    
                </tr>
            
           <%   }
             }else{
            for(UsuarioVO obj : pru){
            %>
             <tbody>
                <tr>
                    <td><%=obj.getID()%></td>
                    <td><%=obj.getNombre()%></td>
                    <td><%=obj.getApellido()%></td>
                    <td><%=obj.getRol()%></td>
                    <td><%=obj.getTelefono()%></td>
                    <td><%=obj.getEmail()%></td>
                    <td><a href="ControladorUsuario?accion=editar&ID=<%=obj.getID()%>">Actualizar</a>
                        <a href="#ventana1" data-toggle="modal"onclick="set(<%=obj.getID()%>);">Eliminar</a></td>
                    
                    <div class="modal fade" id="ventana1" >
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Eliminar usuario</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label>¿Esta seguro de eliminar este usuario?</label><br>
                                                <input type="hidden"id="ccc"name="ccc">
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
               }
                %>
            </tbody>
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
