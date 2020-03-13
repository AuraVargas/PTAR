<%-- 
    Document   : Acceso
    Created on : 2/11/2019, 11:41:38 PM
    Author     : Karito
--%>

<%@page import="modelos.dao.UsuarioDAO"%>
<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.dao.AgendaDAO"%>
<%@page import="modelos.vo.AgendaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú Principal</title>
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
        <link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
        <link href="assets/select2/select2.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="assets/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->

    </head>
    <body class="editar uno">
        <%
            UsuarioVO u = (UsuarioVO) session.getAttribute("Id");
            UsuarioVO vo = new UsuarioVO();
            UsuarioDAO d = new UsuarioDAO(vo);
            String numCadena = String.valueOf(u.getID());
            if (u == null) {
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            } else if (numCadena.equalsIgnoreCase(u.getContrasena())) {
        %>
        <header class="menu">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" id="informacion" href="#"><img class="logo" src="assets/img/acueducto.png" alt=""/>
                    <%out.println(" " + u.getNombre() + " " + u.getApellido() + "\n \t");%>    </a>
                <div class="contenido"></div>

            </nav>
        </header>
        <br>
        <div class="container">
            <form action ="ControladorUsuario" class=" validate-form">
                
                <h4><b>Editar Usuario</b></h4>
                <hr><br>

                <div class="col-md-6 mb-3 wrap-input100 validate-input">
                    <input class="form-control input100" type="number" name="txtID"  placeholder="ID" value="<%=u.getID()%>" readonly>
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
                        <i class="fa fa-address-card"></i>
                    </span>
                </div>


                <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Contraseña necesesaria">
                    <input class="form-control input100" type="password" id="p1" name="txtpassword" value="<%=u.getContrasena()%>" placeholder="password">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
                        <i class="fa fa-phone-alt"></i>
                    </span>
                </div>

                <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Confirmacion de contraseña?">
                    <input class="form-control input100" id="p2" type="password" name="txtpassword1" placeholder="password">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
                        <i class="fa fa-phone-alt"></i>
                    </span>
                </div>
                    <div class="terms">
                        <input type="checkbox" name="terms" onclick="enableSending()">
                        <label for="terms"><a href="assets/img/PTAR.pdf" target="_blank">Acepto terminos y condiciones</a> </label>

                    </div>
                <br><br><br>
                


                <div class="container-login100-form-btn">
                    <a class="peligro" style="right:27%;bottom: 22%;color: firebrick" href="CerrarSesion">Cancelar</a>

                </div>
                <div class="container-login100-form-btn">

                    <button class="login100-form-btn" onclick="comprobarClave(event)" id="ff" style="right:15%;bottom: 20%;position: absolute" type="submit" name="accion" value="actualizarpassword" disabled>
                        <b> Guardar</b>
                    </button>
                </div>
                </form>
        </div>

        <br> <br>
</div>
<script >
    alert("Por favor acepte los terminos y condiciones");
    $(document).ready(function () {
        $('.contenido').load('Template/ayudante.jsp');
    });
    <%
    %>
    function enableSending(){
        if(document.getElementById("ff").disabled == false){
            document.getElementById("ff").disabled = true;
        } else {
            document.getElementById("ff").disabled = false;
        }
    };
    function comprobarClave(evt) {
        var clave1 = document.getElementById("p1").value;
        var clave2 = document.getElementById("p2").value;


        if (clave1 != clave2) {
            alert("Las contraseñas no coinciden, intente nuevamente")
            evt.preventDefault();
        }
    }</script>

<%
} else {
%>





<header class="menu">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" id="informacion" href="#"><img class="logo" src="assets/img/acueducto.png" alt=""/>
            <%out.println(" " + u.getNombre() + " " + u.getApellido() + "\n \t");%>    </a>
        <div class="contenido"></div>

    </nav>
</header>

<div class="container">
    <div class="row" style="padding-top: 100px">
        <div class="col-8">
            <div class="calendar">
                <div class="calendar__info">
                    <div class="calendar__prev" id="prev-month">&#9664;</div>
                    <div class="calendar__month" id="month" onclick="meses()">Enero</div>
                    <div class="calendar__year" id="year" onclick="mostraraños()">2020</div>
                    <div class="calendar__next" id="next-month">&#9654;</div>
                </div>
                <div class="form-family mr-md-3" id="years">
                    <div class="calendar__prev meses"style="width: 50px;"></div>
                    <div class="calendar__prev meses" onclick="restaraños()" style="width: 220px;">&#9664;</div>

                    <div class="calendar__prev meses"onclick="sumaraños()" style="width: 220px;">&#9654;</div>
                </div>
                <div class="form-family mr-md-3" id="contenido"></div>

                <div class="calendar__week"id="dias">
                    <div class="calendar__day calendar__item">Lunes</div>
                    <div class="calendar__day calendar__item">Martes</div>
                    <div class="calendar__day calendar__item">Miercoles</div>
                    <div class="calendar__day calendar__item">Jueves</div>
                    <div class="calendar__day calendar__item">viernes</div>
                    <div class="calendar__day calendar__item">Sabado</div>
                    <div class="calendar__day calendar__item">Domingo</div>

                </div>

                <div class="calendar__dates" id="dates"></div>
            </div>
        </div>

        <div class="col-4">
            <hr>
            <button href="ControladorVisita?accion=listar" class="btn btn-outline-success h-25 w-100">Gestionar visitas  <i class="fas fa-male"></i></button>
            <button href="ControladorUsuario?accion=listar" class="btn btn-outline-success h-25 w-100">Gestionar usuarios <i class="fas fa-user"></i></button>
        </div>
    </div>
</div>
<div class="modal fade" id="ventana1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 id="uno" class="modal-title" id="exampleModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body" style="background-color: #a3d5d1">
                <label >Cambiar color:</label><br>
                <div style="background-color: #FEDCD2" onclick="cambiar(1)" class="calendar__item colores">
                </div>
                <div  style="background-color: #baffc9" onclick="cambiar(2)" class="calendar__item colores">
                </div>
                <div  style="background-color: #ffbdbd" onclick="cambiar(3)" class="calendar__item colores">
                </div>
                <div  style="background-color: #bae1ff" onclick="cambiar(4)" class="calendar__item colores">
                </div>
                <div  style="background-color: #f1cbff" onclick="cambiar(5)" class="calendar__item colores">
                </div>
                <div  style="background-color: #ffffba" onclick="cambiar(6)" class="calendar__item colores">
                </div>
                <hr>
                <div class="form-group" id="modal-events">

                    <a id='sii' class="abajo-derecha"href="">Registrar un evento</a>
                </div>


            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="ventana2">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div aria-hidden="true" href="#ventana1" style="cursor: default" type="button" data-toggle="modal" onclick="$('#ventana2').modal('hide');">&#9664;</div>
                <h5 id="Titulo" class="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="background-color: #a3d5d1">
                <div class="form-group">
                    <label id="descripcion">Informacion de los eventos</label><br>

                    <label id="fecha">Informacion de los eventos</label><br>
                    <label id="estado">Informacion de los eventos</label><br>
                    <a class="peligro" style="color: firebrick" onclick="elim()">Eliminar</a>
                    <a id="editar" class="btn btn-success abajo-derecha"href="">Editar</a>
                </div>


            </div>
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
            
        </script>
        
        
        
             <%
                 AgendaVO lo = new AgendaVO();
                            AgendaDAO dao = new AgendaDAO(lo);
                            ArrayList<AgendaVO> list = (ArrayList) dao.listar();

                        %>
                        <script type="text/javascript">
            var vari =  new Array();
            var ev = new Array();
            <%
                for (AgendaVO obj2 : list) {
            %>
            	vari.push('<%=obj2.getFecha()%>');
                ev.push(['<%=obj2.getFecha()%>','<%=obj2.getTitulo()%>','<%=obj2.getDescripcion()%>','<%=obj2.getEstado()%>','<%=obj2.getCodigoa()%>','<%=obj2.getHoraInicio()%>','<%=obj2.getHoraFin()%>','<%=obj2.getColor()%>']);
                <%
            }%>
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
        <script src="assets/js/Calendario.js"></script>
        <script src="assets/js/acciones.js"></script>
        <!--===============================================================================================-->

<script src="assets/js/main.js" type="text/javascript"></script>
<%}%>
</body>
</html>
