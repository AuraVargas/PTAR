<%-- 
    Document   : EditarUsuario
    Created on : 6/11/2019, 09:53:25 AM
    Author     : Karito
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
        <script src="assets/js/vex.combined.min.js"></script>
        <link rel="stylesheet" href="assets/css/vex.css" />
        <link rel="stylesheet" href="assets/css/vex-theme-wireframe.css" />
        <!--===============================================================================================-->
    </head>
    <body class="dos">
        <%                    UsuarioVO u = (UsuarioVO) session.getAttribute("Id");
        %>

        <div class="contenido"></div>

                <br><br><br>

        <br>
        <div class="container-login111">
            <div class="wrap-login114">
                <form action ="ControladorUsuario" class=" validate-form">
                    <%
                        UsuarioVO vo = new UsuarioVO();
                        UsuarioDAO dao = new UsuarioDAO(vo);
                        vo.setID(Integer.parseInt((String) request.getAttribute("IDv")));
                        UsuarioVO temp = (UsuarioVO) dao.consultar();
                        temp.getID();
                    %>
                    <h4><b>Editar Usuario</b></h4>
                    <hr><br>

                    <div class="form-row">
                        <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "¿Cómo te llamas?">
                            <input type="text" class="form-control input100" name="txtnombre" value="<%=temp.getNombre()%>" placeholder="Nombres Y Apellidos" >
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fas fa-pencil-alt"></i>
                            </span>
                        </div>
                        <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "¿Cómo te llamas?">
                            <input type="text" class="form-control input100" name="txtapellido" value="<%=temp.getApellido()%>" placeholder="Nombres Y Apellidos" >
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fas fa-pencil-alt"></i>
                            </span>
                        </div>

                        <div class="col-md-6 mb-3 wrap-input100 validate-input">
                            <input class="form-control input100" type="number" name="txtID"  placeholder="ID" value="<%=temp.getID()%>" readonly>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-address-card"></i>
                            </span>
                        </div>
                        <div class="col-md-6 mb-3 wrap-input100 validate-input">
                            <input class="form-control input100" type="true" name="txtrol" value="<%=temp.getRol()%>" readonly>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-address-card"></i>
                            </span>
                        </div>
                        <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "¿Cuál es tu Email?">
                            <input class="input100" type="email" name="txtemail" value="<%=temp.getEmail()%>" placeholder="Email ">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </span>
                        </div>
                        <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "¿Cuál es tu Tel?">
                            <input class="form-control input100" type="number" name="txttelefono" value="<%=temp.getTelefono()%>" placeholder="Teléfono">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-phone-alt"></i>
                            </span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Valid esto is required">
                            <select class="selectpicker input100 " data-live-search="true" name="txtestado" value="<%=temp.getEstado()%>" placeholder="Estado"> 
                                <option data-tokens="ketchup mustard"> Selecciona estado</option>
                                <option data-tokens="mustard">Activo</option>
                                <option data-tokens="frosting">Inactivo</option>
                            </select>
                            <span class="symbol-input100">
                                <i class="fas fa-user-tag"></i>
                            </span>
                        </div>
                        <br>

<!--                        <div class="container-login100-form-btn">
                            <a class="peligro" style="right:27%;bottom: 22%;color: firebrick" href="">Cancelar</a>
                        </div>-->
                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" type="submit" name="accion" value="Actualizar">
                                 Guardar
                            </button>
                               <a class="login190-form-btn"  href="ControladorUsuario?accion=listar">Cancelar</a>
                        </div>
<!--                          <div class="container-login100-form-btn">
                            <a class="login10-form-btn"  href="ControladorUsuario?accion=listar">Cancelar</a>
                        </div>-->
                    </div>

                    <br> <br>
                </form>
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
        </script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
    </body>
</html>
