<%-- 
    Document   : EditarPassword
    Created on : 7/03/2020, 06:33:35 PM
    Author     : Santi
--%>

<%@page import="modelos.dao.UsuarioDAO"%>
<%@page import="modelos.vo.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-control", "must-revalidate");
    response.addHeader("Cache-control", "no-cache");
    response.addHeader("Cache-control", "no-store");
    response.setDateHeader("Expires", 0);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Editar Usuario</title>
        <!--===============================================================================================-->	
        <link rel="shortcut icon" href="assets/img/ICONO.png" type="image/x-icon"/>
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
        <link href="assets/select2/select2.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="assets/css/util.css" rel="stylesheet" type="text/css"/><!--
        --><link href="assets/css/main.css" rel="stylesheet" type="text/css"/><!--
        --><link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
    </head>
    <body class="dos">
        <%            UsuarioVO u = (UsuarioVO) session.getAttribute("Id");
        %>
        <header class="menu">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" id="informacion" href="#"><img class="logo" src="assets/img/acueducto.png" alt=""/>
                    <%out.println(" " + u.getNombre() + " " + u.getApellido() + "\n \t");%>    </a>
                <div class="contenido"></div>

            </nav>
        </header>
        <br>
      
            <div class="container-login112">
                <div class="wrap-login112">
                    <form action ="ControladorUsuario" class=" validate-form">
                        <h4><b>Actualizar Contraseña</b></h4>
                        <hr><br>

                        <div class="wrap-input100 validate-input">
                            <input class="form-control input100" type="number" name="txtID"  placeholder="ID" value="<%=u.getID()%>" readonly>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-address-card"></i>
                            </span>
                        </div>


                        <div class="wrap-input100 validate-input" data-validate = "Contraseña necesesaria">
                            <input class="form-control input100" type="password" id="p1" name="txtpassword" value="<%=u.getContrasena()%>" placeholder="password">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-phone-alt"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Confirmacion de contraseña?">
                            <input class="form-control input100" id="p2" type="password" name="txtpassword1" placeholder="password">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-phone-alt"></i>
                            </span>
                        </div>
                        <br><br><br>

                      
                        <div class="container-login100-form-btn">

                            <button class="login100-form-btn" onclick="comprobarClave(event)"  type="submit" name="accion" value="actualizarpassword2">
                                Guardar
                            </button>
                        </div>
                          <div class="container-login100-form-btn">
                            <a class="login10-form-btn"  href="ControladorUsuario?accion=menu">Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
                            


        <a style="display: none" id="roll"><%=u.getRol()%></a>


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
                            });
                            $('.js-tilt').tilt({
                                scale: 1.1
                            })
                            switch ($("#roll").html()) {
                                case "Funcionario":

                                    $(document).ready(function () {
                                        $('.contenido').load('Template/menu.jsp');
                                    });

                                    break;
                                case "Ayudante":

                                    $(document).ready(function () {
                                        $('.contenido').load('Template/ayudante.jsp');
                                    });

                                    break;
                            }

                            function comprobarClave(evt) {
                                var clave1 = document.getElementById("p1").value;
                                var clave2 = document.getElementById("p2").value;


                                if (clave1 != clave2) {
                                    alert("Las contraseñas no coinciden, intente nuevamente")
                                    evt.preventDefault();
                                }
                            }</script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
    </body>
</html>

