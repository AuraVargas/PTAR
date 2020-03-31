<%-- 
    Document   : SolicitudVisita
    Created on : 02-nov-2019, 15:22:22
    Author     : HP
--%>

<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="java.util.Calendar"%>
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
        <title>Registrar Visita </title>
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
        <script src="../assets/js/vex.combined.min.js" type="text/javascript"></script>
        <script>vex.defaultOptions.className = 'vex-theme-os'</script>
        <link href="../assets/css/vex-theme-os.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/css/vex.css" rel="stylesheet" type="text/css"/>
        <script src="assets/js/vex.combined.min.js"></script>
        <link rel="stylesheet" href="assets/css/vex.css" />
        <link rel="stylesheet" href="assets/css/vex-theme-wireframe.css" />
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

            <form action="ControladorVisita" action ="" class=" validate-form"method="POST"> 
                <input class="form-control" name="ruta" value="PTAR/SolicitarVisita/Empresa"style = "opacity: 0;">

                <h5>Registro de Visita</h5><br>
                <h6>Información sobre la empresa o institución: </h6><br>
                <div class="form-row">
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "NIT de la Empresa">
                        <input class="form-control input100" type="number" name ="txtnit" placeholder="NIT">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fas fa-building"></i>
                        </span>
                    </div>
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Escribe el Número de personas que asistirán a la visita">
                        <input class="form-control input100" type="number"name="txtNumeroPersonas" placeholder="Número de personas que asistirán a la visita">
                        <input type="hidden" name="txtIdUs" value="<%=u.getID()%>">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fas fa-users"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "Dirección, nombre de la empresa etc">
                        <input class="form-control input100" type="text" name="txtNombre" placeholder="Nombre de la empresa ">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fas fa-envelope-open-text"></i>
                        </span>
                    </div> 
                                                           <%
                        Calendar c1 = Calendar.getInstance();
                        String dia = Integer.toString(c1.get(Calendar.DATE));
                        String mes = Integer.toString(c1.get(Calendar.MONTH));
                        if (mes.length() == 1) {
                            mes = "0" + mes;
                        }
                        if (dia.length() == 1) {
                            dia = "0" + dia;
                        }
                    %>
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "Fecha de la visita">
                        <label>Fecha de la Visita</label>
                        <input type="date" class="form-control input100" name="txtfecha" id="txtfecha" value="<%=c1.getWeekYear()+"/"+mes+"/"+dia%>"placeholder="Fecha de la visita">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="far fa-calendar-alt"></i>
                        </span>
                    </div>
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
                </div>
                <h6>Pesona que representará la empresa para realizar esta visita:</h6><br>
                <div class="form-row">
                    <div class="col-md-6 mb-3 wrap-input100 validate-input" data-validate = "¿Cuál es el nombre de la persona encargada?">
                        <input type="text" class="form-control input100" name="txtnombrerepresentante"  placeholder="Nombre Completo" >
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fas fa-portrait"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu DI?">
                        <input class="form-control input100" type="number" name="txtidrepresentante"  placeholder="Número de Identificación">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-address-card"></i>
                        </span>
                    </div>
                    <div class=" wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Email, ex@abc.xyz?">
                        <input class="input100" type="text" name="txtcorreo" placeholder="Email ">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fas fa-at"></i>
                        </span>
                    </div>
 
                    <div class="wrap-input100 validate-input col-md-6 mb-3" data-validate = "¿Cuál es tu Tel?">
                        <input class="input100" type="number" name="txttelefono" placeholder="Teléfono">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-phone-alt"></i>
                        </span>
                    </div>


                    
                    <div class="container-login100-form-btn">
                        <a class="peligro" onclick="return cancelarregistroV()"style="right:27%;bottom: 3%;color: firebrick"> Cancelar
                        </a>
                    </div>
                    <div class="container-login100-form-btn">
                        <button onclick="validacion()" class="login100-form-btn"  style="right:15%;bottom: 1%;position: absolute" type="submit" name="accion" value="Registrar">
                            <b> Registrar</b>
                        </button>
                    </div>
                </div>

            </form>

        </div>
<a style="display: none" id="roll"><%=u.getRol()%></a>

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
         switch($("#roll").html()){
            case "Funcionario":
            
            $(document).ready(function () {
            $('.contenido').load('Template/menu.jsp');
            var error = <%=session.getAttribute("Error")%>;
            if(error == 1){
            vex.dialog.alert({
                message: 'Ya existe un evento con esta hora.',
                className: 'vex-theme-wireframe'
            });
            }
       });
      
          break;
          case "Ayudante":
      
            $(document).ready(function () {
      $('.contenido').load('Template/ayudante.jsp');
      var error = <%=session.getAttribute("Error")%>;
            if(error == 1){
            vex.dialog.alert({
                message: 'Ya existe un evento con esta hora.',
                className: 'vex-theme-wireframe'
            });
            }
      });
      
          break;
         } 
         function validacion(){ 
                   let dayInMillis=24*3600000;
                   var f = new Date(document.getElementById("txtfecha").value);
                   f.setDate(f.getDate() + 1);
                   let days1=Math.floor(f.getTime()/dayInMillis-1);
                   
                   var hoy = new Date();
                   let days2=Math.floor(hoy.getTime()/dayInMillis);
                   if(days1 < days2){
                       vex.dialog.alert({
                message: "Por favor ingrese una fecha posterior a la actual",
                className: 'vex-theme-wireframe'
            });
                       event.preventDefault();
                   }else if(days1 === days2){
                       vex.dialog.alert({
                message: "Por favor ingrese una fecha posterior a la actual",
                className: 'vex-theme-wireframe'
            });
                       event.preventDefault();
                   }else{
                   }
            }
            <%
                session.setAttribute("Error", 0);
            %>

        </script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
    
            </body>
</html>

