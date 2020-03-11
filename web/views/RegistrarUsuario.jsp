<%-- 
    Document   : RegistrarUsuario
    Created on : 11-nov-2019, 16:34:38
    Author     : HP
--%>

<%@page import="modelos.dao.UsuarioDAO"%>
<%@page import="modelos.vo.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
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
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <link href="assets/select2/select2.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="assets/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
    </head>
    <body>
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
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>                        
                        <img src="assets/img/img-01.png" alt="User"/>
                    </div>

                    <form name="f1" action ="ControladorUsuario" class="login100-form validate-form" method="POST">
                       
                        <span  class="login100-form-title">
                            <h2> <b> Registrar Usuario</b></h2>      
                        </span>
                        <div class="wrap-input100 validate-input" data-validate = "Your full name is required">
                            <input class="input100" type="text" name="nombre" placeholder="Nombre Completo ">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fas fa-pencil-alt"></i>
                            </span>
                        </div>
                       <div class="wrap-input100 validate-input" data-validate = "Your full last name is required">
                            <input class="input100" type="text" name="apellido" placeholder="Apellido Completo ">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fas fa-pencil-alt"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Valid ID is required">
                            <input class="input100" type="number" name="ID" placeholder="Número de Documento ">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-address-card"></i>
                            </span>
                        </div>
                         <div class="wrap-input100 validate-input" data-validate = "Valid Rol is required">
                        <select class="selectpicker input100 " data-live-search="true" name="rol"> 
                            <option data-tokens="ketchup mustard"> Selecciona tu rol</option>
                            <option data-tokens="mustard">Funcionario</option>
                            <option data-tokens="frosting">Ayudante</option>
                        </select>
                              <span class="symbol-input100">
                             <i class="fas fa-user-tag"></i>
                            </span>
                         </div>

                        <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                            <input class="input100" type="email" name="email" placeholder="Email ">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Valid phone is required">
                            <input class="input100" type="number" name="telefono" placeholder="Teléfono ">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fas fa-phone"></i>
                            </span>
                        </div>

                        <!--                        <div class="centro">-->
                    <%
                     UsuarioVO vo = new UsuarioVO();
                     UsuarioDAO dao = new UsuarioDAO(vo);
                                        %>
                        <div class="container-login100-form-btn">
                            <input class="login100-form-btn" type="submit" name="accion" value="Registrar" />
                        </div>
                        <!--                        </div>-->
                        <br>
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
            })
         switch($("#roll").html()){
            case "Funcionario":
            
            $(document).ready(function () {
            $('.contenido').load('Template/menu.html');
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
