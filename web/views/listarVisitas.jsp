<%-- 
    Document   : listarVisitas
    Created on : 5/11/2019, 10:51:49 AM
    Author     : Karito
--%>

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
    <body class="dos">
        <%
        UsuarioVO u = (UsuarioVO)session.getAttribute("Id");
        %>
        <header class="menu">
           <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" id="informacion" href="ControladorUsuario?accion=menu"><img class="logo" src="assets/img/acueducto.png" alt=""/>
                <%out.println(" " + u.getNombre() +" "+ u.getApellido()+"\n \t");%>    </a>
               <div class="contenido"></div>
                
            </nav>
        </header>
        
        <br>
        <div class="container">

            <h4><b>Visitas</b></h4><hr>
            <nav class="navbar navbar-light">
                <form class="form-inline"accion="ControladorAgenda">
<!--                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn btn-success" type="submit" >Consultar Registros</button> -->
                    <!--                    <input type="button" class="btn btn-danger" onclick="window.location.href = ('actualizarVisita.jsp');" value="Editar Visita"/> <br>
                                        <button class="btn btn-success" type="submit" onclick="return eliminarVisita()">Eliminar Visita</button>-->
                </form>
            </nav>
            <form class="text-center" action="ControladorVisita">
                <br>
                <div class="scr">
                <table>
                    <thead>
                    <tr>
                        <th> Descripción </th>
                        <th> Numero de personas que asisten </th>
                        <th> Nombre del Representante </th>
                        <th> Correo Electrónico </th>
                        <th> Acciones</th>
                    </tr>
                    </thead>
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
                        <td ><div class="des"><%=obj.getDescripcion()%></div></td>
                        <td ><%=obj.getNumeroPersonas()%></td>
                        <td><%=obj.getNombre()%></td>
                        <td> <%=obj.getCorreo()%></td>
                        <td><a name ="codigov "class="btn tbn-primary btn-1g"value="<%=obj.getCodigov()%>"href="ControladorVisita?accion=editar&codigo=<%=obj.getCodigov()%>">Editar</a>
                            <a class="btn tbn-primary btn-1g" href="#" onclick="eliminarVisita(<%=obj.getCodigov()%>)">Eliminar</a></td>
                    </tr>
                            
                    <%
                        }
                    %>

                </table>
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
            $(document).ready(function () {
      $('.contenido').load('Template/menu.html');
    });
        </script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
    </body>
</html>
