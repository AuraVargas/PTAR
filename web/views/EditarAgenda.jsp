<%-- 
    Document   : EditarAgenda
    Created on : 03-nov-2019, 19:52:39
    Author     : HP
--%>

<%@page import="modelos.dao.UsuarioDAO"%>
<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="modelos.dao.AgendaDAO"%>
<%@page import="modelos.vo.AgendaVO"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Editar Agenda </title>
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
        <div class="container">

            <form action ="ControladorAgenda" method="POST">
                <%
                                        AgendaVO vo = new AgendaVO();
                                        AgendaDAO dao = new AgendaDAO(vo);
                                     int cod = Integer.parseInt((String) request.getAttribute("codigoa"));
                                     String desde = (String) request.getAttribute("desde");
                                        vo.setCodigoa(cod);
                                        AgendaVO age = (AgendaVO) dao.consultar();
                %>
                <br> 
                <h4>Editar de evento en la agenda<hr>  <div>
                        <a class="btn btn-danger" onclick="eliminarregistroA(<%=age.getCodigoa()%>)">
                               Eliminar Evento
                            </a>
                                
                        </div></h4><br>
                
                <div class="form-row">
                    <input type="hidden" value="<%=age.getCodigoa()%>" name ="txtcodigo">
                    <input type="hidden" value="<%=desde%>" name ="desde">
                    <div class="col-md-6 mb-3">
                        <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                            <input type="text" class="form-control input100" required name="txtTitulo" value="<%=age.getTitulo()%>">
                            
                            <span class="focus-input100"></span>
                            
                            <span class="symbol-input100">
                                <i class="fab fa-elementor"></i>
                            </span>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Estado del Evento?">
                            
                            <select class="selectpicker input100" data-live-search="true"  name="txtestado">
                                <option data-tokens="<%=age.getEstado()%>"><%=age.getEstado()%></option>
                                <option data-tokens="Activo"> Activo</option>
                                <option data-tokens="Cancelado">Cancelado</option>
                            </select>
                            <span class="focus-input100"></span>
                            
                            <span class="symbol-input100">
                                <i class="fas fa-thermometer-three-quarters"></i>
                            </span>
                        </div>
                    </div>
                                <div class="col-md-6 mb-3">
                            <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                                <input type="time" class="form-control input100" value="<%=age.getHoraInicio()%>" required name="txtincio" placeholder="hora de inicio">
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                                
                                <input type="time" class="form-control input100" value="<%=age.getHoraFin()%>" required name="txtfin" placeholder="hora de finalizacion">
                                
                            </div>
                        </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Escribe nombre de encargado, lugar, etc">
                        
                        <input class="input1 form-control input100" type="text" name="txtDescripcion"value="<%=age.getDescripcion()%>" placeholder="Descripción del evento ">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fas fa-envelope-open-text"></i>
                        </span>
                    </div>
                    <div class="wrap-input3 validate-input col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Fecha de la visita">
                        <input type="date" class="form-control input100"  value="<%=age.getFecha()%>" name ="txtfecha"   placeholder="Fecha de la visita">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="far fa-calendar-alt"></i>
                        </span>
                    </div>
    
                    <div class="container-login100-form-btn">
                        <a class="peligro"style="right:25%;bottom: 17%;color: firebrick" href="ControladorAgenda?accion=listar">Cancelar</a>
                    </div>
                        <div class="container-login100-form-btn">
                        <button class="login100-form-btn"style="right:13%;bottom: 15%;position: absolute" type="submit" name="accion" value="Actualizar">
                            <b> Guardar</b>
                        </button> 
                    </div>
                  
                </div>
            </form>

        </div>




        <!--===============================================================================================-->	
        
        <script src="assets/vendor/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="assets/js/alertas.js" type="text/javascript"></script>
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
         <%
         switch(u.getRol()){
            case "Funcionario":
            %>
            $(document).ready(function () {
            $('.contenido').load('Template/menu.html');
       });
      <%
          break;
          case "Ayudante":
      %>
            $(document).ready(function () {
      $('.contenido').load('Template/ayudante.jsp');
      });
      <%
          break;
         } 
      %>
        </script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
    </body>
</html>
