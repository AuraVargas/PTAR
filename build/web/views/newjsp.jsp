<%-- 
    Document   : newjsp
    Created on : 10/11/2019, 12:57:41 PM
    Author     : Karito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Editar Usuario</title>
        <!--===============================================================================================-->	
        <link rel="shortcut icon" href="../assets/img/acueducto.png" type="image/x-icon"/>
        <!--===============================================================================================-->
        <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!--===============================================================================================-->
        <link href="../assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/fonts/fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="../assets/vendor/animate/animate.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->	
        <link href="../assets/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

        <link href="../assets/select2/select2.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="../assets/css/util.css" rel="stylesheet" type="text/css"/><!--
        -->            <link href="../assets/css/main.css" rel="stylesheet" type="text/css"/><!--
        -->                    <link href="../assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->

    </head>
    <body>
        <header class="menu">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#"><img class="logo" src="../assets/img/acueducto.png" alt=""/>  <i class="fa fa-user"></i>  Usuario </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span><img class="logo" src="../assets/img/acueducto.png" alt=""/> </span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="items" class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="Menú.jsp"> <i class="fa fa-home"></i> Inicio <span class="sr-only">(current)</span></a>
                        </li>


                        <li class="nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-users"></i> Usuarios
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="RegistrarUsuario.jsp">Registrar Usuario</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Editar Usuario</a>
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-address-book"></i> Agenda
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="ConsultarAgenda.jsp"> Consultar Agenda</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="RegistrarAgenda.jsp"> Registrar Agenda</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="agenda.jsp"> Listar Agenda</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="EditarAgenda.jsp">Editar Agenda</a>

                            </div>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-eye"></i> Visitas
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="../ConsultaVisita.jsp"> Consultar Visita</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="../SolicitudVisita.jsp"> Registrar Visita</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="ControladorVisita?accion=listar"> Listar Visitas</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="actualizarVisita.jsp"> Editar Visita</a>
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-clone"></i> Categorías
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Consultar Categorías</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Registrar Categoría</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Listar Categorìa</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Editar Categorìa</a>
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-sticky-note"></i> Reportes
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Consultar Reportes</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Registrar Reportes</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Listar Reportes</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Editar Reportes</a>
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
            <form action ="Login" class="login100-form validate-form" method="POST">
                <h1 class="font-italic"><b>Editar Usuario</b></h1>
                <hr><br>
                <div class="form-row">
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "¿Cómo te llamas?">
                        <input type="text" class="form-control input100" name="nombre completo"  placeholder="Nombres Y Apellidos" >
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fas fa-pencil-alt"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu DI?">
                        <input class="form-control input100" type="number" name="numero de identificacion"  placeholder="Número de Documento ">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-address-card"></i>
                        </span>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="wrap-input3 validate-input" data-validate = "¿Cuál es tu Rol?">
                            <select class="selectpicker input100" data-live-search="true" name="rol">
                                <option data-tokens="selecciona">Selecciona tu Rol</option>
                                <option data-tokens="funcionario">Funcionario</option>
                                <option data-tokens="auxiliar">Auxiliar</option>
                            </select>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-user-tag"></i>
                            </span>
                        </div>
                    </div>
                    <div class=" wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Email?">
                        <input class="input100" type="text" name="email" placeholder="Email ">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                </div>

                <div class="form-row">
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Tel?">
                        <input class="input100" type="number" name="numero de identificacion" placeholder="Teléfono">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-address-card"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "Escribe un nombre de Usuario">
                        <input class="input100" type="text" name="Usuario" placeholder="Nombre de Usuario ">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "Contraseña Obligatoria">
                        <input class="input100" type="password" name="pass" placeholder="Contraseña">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu contraseña?">
                        <input class="input100" type="password" name="confirmar" placeholder="Confirmar Contraseña">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>
                </div>
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" type="submit">
                        <b> Aceptar</b>
                    </button>
                </div>
                <br> <br>
            </form>
        </div>











        <!--===============================================================================================-->	
        <script src="../assets/vendor/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>

        <!--===============================================================================================-->
        <script src="../assets/vendor/bootstrap/js/popper.js" type="text/javascript"></script>
        <script src="../assets/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="../assets/vendor/select2/select2.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="../assets/vendor/tilt/tilt.jquery.min.js" type="text/javascript"></script>
        <script >
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->

        <script src="../assets/js/main.js" type="text/javascript"></script>

    </body>
</html>
