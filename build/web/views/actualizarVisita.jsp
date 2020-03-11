<%-- 
    Document   : actualizarVisita
    Created on : 03-nov-2019, 18:58:04
    Author     : HP
--%>

<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="modelos.dao.VisitasDAO"%>
<%@page import="modelos.vo.VisitasVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Visita</title>
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
    <body style="background-attachment: fixed ;background-image: url(assets/img/Fondo_4.png);"  >
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
            <%
                VisitasVO vo= new VisitasVO();
                VisitasDAO dao=new VisitasDAO(vo);
                vo.setCodigov(Integer.parseInt((String)request.getAttribute("codigov")));
                VisitasVO visita = (VisitasVO)dao.consultar();
                visita.getCodigoa();
      %>
      
            <form action="ControladorVisita" action ="" class=" validate-form" method="POST" > 
                <input class="form-control" name="ruta" value="PTAR/SolicitarVisita/Empresa"style = "opacity: 0;">
                <h4>Actualizar datos de Visita<hr>  <div>
                            <button class="btn btn-danger" onclick="event.preventDefault();eliminarVisita(<%=visita.getCodigov()%>)">
                               Eliminar Evento
                            </button> <br><br>
                        </div></h4>      
      
                
                <h4>Información sobre la empresa o institución: </h4><br>
                        <input class="form-control input100" type="hidden"value="<%=(String)request.getAttribute("codigov")%>" name ="txtcodigov"placeholder="Código de la Visita"readonly="readonly">
                        <input class="form-control input100" type="hidden"value="<%=visita.getCodigoa()%>" name ="txtcodigoA"placeholder="Código de la Visita">

                    <div class="form-row">
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "NIT de la Empresa">
                        <label>NIT de la Empresa</label>
                        <input class="form-control input100" type="number" value="<%=visita.getNit()%>" name ="txtnit" placeholder="NIT" readonly="readonly">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-building"></i>
                        </span>
                    </div>
                        
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Escribe el Número de personas que asistirán a la visita">
                        <label>Numero de personas que asistiran a la visita</label>
                        <input class="form-control input100" type="number" value="<%=visita.getNumeroPersonas()%>" name ="txtNumeroPersonas" placeholder="Número de personas que asistirán a la visita">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-users"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "Dirección, nombre de la empresa etc">
                        <label>Descripción de la Visita</label>
                        <input class="input1 input100" type="text" value="<%=visita.getDescripcion()%>" name="txtDescripcion" placeholder="Descripción de la Empresa ">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-envelope-open-text"></i>
                        </span>
                    </div> 
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Fecha de la visita">
                        <label>Fecha de la Visita</label>
                        <input type="date" class="form-control input100" value="<%=visita.getFecha()%>" name ="txtfecha"  placeholder="Fecha de la visita">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="far fa-calendar-alt"></i>
                        </span>
                    </div>
                        <div class="col-md-6 mb-3">
                            <label>Hora de inicio</label>
                            <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                                <input type="time" class="form-control input100" value="<%=visita.getHoraInicio()%>" required name="txtincio" placeholder="hora de inicio">
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Hora de fin</label>
                            <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                                
                                <input type="time" class="form-control input100" value="<%=visita.getHoraFin()%>" required name="txtfin" placeholder="hora de finalizacion">
                                
                            </div>
                        </div>
                </div><br>
                <h4>Persona que representará la empresa para realizar esta visita:</h4><br>
                <div class="form-row">
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "¿Cuál es el nombre de la persona encargada?">
                        <label>Nombre de la persona encargada</label>
                        <input type="text" class="form-control input100" value="<%=visita.getNombre()%>" name ="txtnombrerepresentante" placeholder="Nombre Completo" >
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-portrait"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu ID?">
                        <label>Identificacion del encargado</label>
                        <input class="form-control input100" type="number" value="<%=visita.getEncargadoID()%>" name ="txtidr" placeholder="Número de Identificación"readonly="readonly">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fa fa-address-card"></i>
                        </span>
                    </div>
                    <div class=" wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Email?">
                        <label>Email del encargado</label>
                        <input class="input100" type="text" value="<%=visita.getCorreo()%>" name ="txtcorreo" placeholder="Email ">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fas fa-at"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Tel?">
                        <label>Numero de telefono del encargado</label>
                        <input class="input100" type="number" value="<%=visita.getTelefono()%>" name ="txttelefono" placeholder="Teléfono">
                        <span class="focus-input100"></span>
                        <br>
                        <span class="symbol-input100">
                            <i class="fa fa-phone-alt"></i>
                        </span>
                    </div>
                

                        
                    <div class="container-login100-form-btn" href="ControladorVisita?accion=listar">
                        <a class="peligro" style="right:28%;bottom: -51%;color: firebrick">Cancelar</a>
                    </div>
                        
                </div>
                        <div class="container-login100-form-btn">
                        <button class="login100-form-btn" style="right:15%;bottom: -53%;position: absolute" type="submit" name="accion"value="Actualizar" >
                            <b> Actualizar</b>
                        </button> 
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
