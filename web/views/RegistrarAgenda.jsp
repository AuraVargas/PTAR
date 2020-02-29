<%-- 
    Document   : ReagistrarAgenda
    Created on : 03-nov-2019, 19:52:24
    Author     : HP
--%>

<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Registrar Agenda </title>
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
    <body class="tres">
        <%
        UsuarioVO u = (UsuarioVO)session.getAttribute("Id");
        %>
        
        <header class="menu">
           <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" id="informacion" href="#"><img class="logo" src="assets/img/acueducto.png" alt=""/>
                <%out.println(" " + u.getNombre() +" "+ u.getApellido()+"\n \t");%>    </a>
               <div class="contenido"></div>
                
            </nav>
        </header>
        <!--<div id="" class="wrap-login103">-->
        <form action ="ControladorAgenda" class=" validate-form">
            <br>
             <br>
            <h4><b> Registro de evento en la Agenda</b></h4>
            <hr><br>
           <center>
                <div class="container">
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                                <input type="text" class="form-control input100" required name="txtTitulo" placeholder="Titulo del evento">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fab fa-elementor"></i>
                                </span>
                            </div>
                            <br>
                        </div>
                    <% 
            String fecha = ((String) request.getAttribute("fecha"));
            
        %>
        
                        <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Fecha del evento">
                            <input type="date" class="form-control input100" required name="txtfecha" value='<%=fecha%>' placeholder="Fecha del evento">
                            <span class="symbol-input100">
                                <i class="far fa-calendar-alt"></i>
                            </span>
                        </div>
                            </div>
                            <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                                <input type="time" class="form-control input100" required name="txtincio" placeholder="hora de inicio">
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                                
                                <input type="time" class="form-control input100" required name="txtfin" placeholder="hora de finalizacion">
                                
                            </div>
                        </div>
                            
                            <br>
                    <% 
            String desde = ((String) request.getAttribute("desde"));
        %>
        
<input type='hidden' name='desde' value='<%=desde%>'>
                        <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "Escribe nombre de encargado, lugar, etc">
                            <input class="form-control input1 input100" type="text" required name="txtDescripcion" placeholder="Descripción del evento ">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fas fa-envelope-open-text"></i>
                            </span>
                        </div>
</div>
                    <div class="form-family mr-md-3">
                            <div class="container-login100-form-btn">
                                <a class="peligro"style="right:23%;bottom: 24%;color: firebrick" onclick="return cancelarregistroA()">Cancelar</a>
                            </div>
                        <div style="right:11%;bottom: 22%;position:absolute;" >
                            <button class="login100-form-btn" type="submit" name="accion" value="Registrar">
                                <b> Registrar</b>
                            </button> 
                            </div>
                    </div>
                    </form>
                </div>
                 </center>






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
