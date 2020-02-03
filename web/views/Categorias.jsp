<%-- 
    Document   : Categorias
    Created on : 15/11/2019, 07:05:20 PM
    Author     : Karito
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelos.dao.CategoriasDAO"%>
<%@page import="modelos.vo.CategoriasVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categorías</title>
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
        <form action="ControladorCategorias">
        <div class="container">

            <div class="row h-100 justify-content-center align-items-center">

                <div class="col-lg-10 mb-4 h-100">

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h3 class="m-0 font-weight-bold ">
                              <i class="far fa-clone"></i> Categorías</h3>
                        </div>
                        <div class="card-body">
                            

                            <div class="row" >
                                <%
                CategoriasVO vo= new CategoriasVO();
            CategoriasDAO dao = new CategoriasDAO(vo);
            ArrayList<CategoriasVO> list = (ArrayList)dao.listar();
            
            for(CategoriasVO obj : list){
            %>
                                <div class="col-lg-6 mb-4">
                                    <a href="ControladorCategorias?accion=consultar&codigo=<%=obj.getCodigo()%>" class="card bg-secondary text-white shadow">
                                        <div class="card-body">
                                            <i class="fas fa-file-import"></i> <%=obj.getNombreCat()%>
                                            <div class="text-white-50 small"><%=obj.getCodigo()%></div>
                                        </div>
                                    </a>
                                </div>
                                <%
            }
            %>
                                
                                 
<!--                                    <button type="button" class="btn btn-danger" onclick="return EliminarCategoria()">
                                Eliminar Categoría
                            </button>-->
                        </div>  
                              <button href="#ventana1" data-toggle="modal" type="button" class="btn btn-primary">
                                Nueva Categoría
                            </button>
            <div class="modal fade" id="ventana1">
            <div class="modal-dialog">
                <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Crear nueva categoria</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group">
    <label>Nombre de la categoria</label>
    <input class="form-control" name ="txtcat"placeholder="">
  </div>
          
          
      </div>
      <div class="modal-footer">
        <Button class="btn btn-success" type="submit" name="accion" value="Crear" >Registrar</Button><br>
        <a href="ControladorCategorias?accion=listar">Cancelar</a>
      </div>
    </div>
            </div>
</div>  
                                
                                
                                
                                
                                
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form>



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
