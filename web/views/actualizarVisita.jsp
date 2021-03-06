<%-- 
    Document   : actualizarVisita
    Created on : 03-nov-2019, 18:58:04
    Author     : HP
--%>

<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="modelos.dao.VisitasDAO"%>
<%@page import="modelos.vo.VisitasVO"%>
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
        <title>Actualizar Visita</title>
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
        <link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
        <link href="assets/vendor/select2/select2.min.css" rel="stylesheet" type="text/css"/>
        <!--===============================================================================================-->
        <link href="assets/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <script src="Validaciones.js" type="text/javascript"></script>
        <script src="assets/js/vex.combined.min.js"></script>
        <link rel="stylesheet" href="assets/css/vex.css" />
        <link rel="stylesheet" href="assets/css/vex-theme-wireframe.css" />
    </head>
    <body style="background-attachment: fixed ;background-image: url(assets/img/Fondo_4.png);"  >
        <%           UsuarioVO u = (UsuarioVO) session.getAttribute("Id");
        %>

        <div class="contenido"></div>

                <br><br>
        
     
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
                            <button class="btn btn-danger" onclick="event.preventDefault();eliminarVisita(<%=visita.getCodigoa()%>)">
                               Eliminar Evento
                            </button>
                        </div></h4>      
      
                
                <h4>Información sobre la empresa o institución: </h4><br>
                        <input class="form-control input100" type="hidden"value="<%=(String)request.getAttribute("codigov")%>" name ="txtcodigov"placeholder="Código de la Visita"readonly="readonly">

                        <input class="form-control input100" type="hidden"value="<%=visita.getCodigoa()%>" name ="txtcodigoA"placeholder="Código de la Visita">

                        <div class="form-row">
                            <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "NIT de la Empresa">
                                <input class="form-control input100" type="number" value="<%=visita.getNit()%>" name ="txtnit" placeholder="NIT" readonly="readonly">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fas fa-building"></i>
                                </span>
                            </div>

                            <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Escribe el Número de personas que asistirán a la visita">
<!--                                <label>Numero de personas que asistirán a la visita</label>-->
                                <input class="form-control input100" type="number" value="<%=visita.getNumeroPersonas()%>" name ="txtNumeroPersonas" placeholder="Número de personas que asistirán a la visita">
                                <span class="focus-input100"></span>
                                <br>
                                <span class="symbol-input100">
                                    <i class="fas fa-users"></i>
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "Dirección, nombre de la empresa etc">
<!--                                <label>Nombre de la Visita</label>-->
                                <input class="form-control input100" type="text" value="<%=visita.getNombreE()%>" name="txtNombre" placeholder="Descripción de la Empresa ">
                                <span class="focus-input100"></span>
                                <br>
                                <span class="symbol-input100">
                                    <i class="fas fa-envelope-open-text"></i>
                                </span>
                            </div> 
                              
                            <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Fecha de la visita">
<!--                                <label>Fecha de la Visita</label>-->
                                <input type="date" class="form-control input100" value="<%=visita.getFecha()%>" id ="txtfecha"  name ="txtfecha"  placeholder="Fecha de la visita">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="far fa-calendar-alt"></i>
                                </span>
                            </div>
                            <div class="col-md-6 mb-3">
<!--                                <label>Hora de inicio</label>-->
                                <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">
                                    <input type="time" class="form-control input100" value="<%=visita.getHoraInicio()%>" required name="txtincio" placeholder="hora de inicio">
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
<!--                                <label>Hora de fin</label>-->
                                <div class="wrap-input3 validate-input" data-validate = "¿Cuál es el Evento?">

                                    <input type="time" class="form-control input100" value="<%=visita.getHoraFin()%>" required name="txtfin" placeholder="hora de finalizacion">

                                </div>
                            </div>
                        </div><br>
                        <p class="sub1">Persona que representará la empresa para realizar esta visita:</p><br>
                        <div class="form-row">
                            <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "¿Cuál es el nombre de la persona encargada?">
<!--                                <label>Nombre de la persona encargada</label>-->
                                <input type="text" class="form-control input100" value="<%=visita.getNombre()%>" name ="txtnombrerepresentante" placeholder="Nombre Completo" >
                                <span class="focus-input100"></span>
                                <br>
                                <span class="symbol-input100">
                                    <i class="fas fa-portrait"></i>
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu ID?">
<!--                                <label>Identificacion del encargado</label>-->
                                <input class="form-control input100" type="number" value="<%=visita.getEncargadoID()%>" name ="txtidr" placeholder="Número de Identificación"readonly="readonly">
                                <span class="focus-input100"></span>
                                <br>
                                <span class="symbol-input100">
                                    <i class="fa fa-address-card"></i>
                                </span>
                            </div>
                            <div class=" wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Email?">
<!--                                <label>Email del encargado</label>-->
                                <input class="input100" type="text" value="<%=visita.getCorreo()%>" name ="txtcorreo" placeholder="Email ">
                                <span class="focus-input100"></span>
                                <br>
                                <span class="symbol-input100">
                                    <i class="fas fa-at"></i>
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Tel?">
<!--                                <label>Numero de telefono del encargado</label>-->
                                <input class="input100" type="number" value="<%=visita.getTelefono()%>" name ="txttelefono" placeholder="Teléfono">
                                <span class="focus-input100"></span>
                                <br>
                                <span class="symbol-input100">
                                    <i class="fa fa-phone-alt"></i>
                                </span>
                            </div>



                           

                        </div>
                        
                                  <div class="container-login100-form-btn">
                                <button onclick="validacion()" class="login100-form-btn" type="submit" name="accion" value="Actualizar">
                                    Actualizar
                                </button>
                                 <div class="container-login100-form-btn">
                                <a class="login11-form-btn" href="ControladorVisita?accion=listar"> Cancelar</a>
                            </div>
                            </div>
                    </form>

                </div>
            </div>
        </div>

        <a style="display: none" id="roll"><%=u.getRol()%></a>
        <!--===============================================================================================-->	
        <script src="assets/js/alertas.js" charset="UTF-8" type="text/javascript"></script>
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
                                function validacion() {
                                    let dayInMillis = 24 * 3600000;
                                    var f = new Date(document.getElementById("txtfecha").value);
                                    f.setDate(f.getDate() + 1);
                                    let days1 = Math.floor(f.getTime() / dayInMillis);

                                    var hoy = new Date();
                                    let days2 = Math.floor(hoy.getTime() / dayInMillis);

                                }
        </script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
    </body>
</html>
