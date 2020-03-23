<%-- 
    Document   : listarVisitas
    Created on : 5/11/2019, 10:51:49 AM
    Author     : Karito
--%>

<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="modelos.dao.VisitasDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.vo.VisitasVO"%>
<%@page import="java.util.ArrayList"%>
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
        <title> Listar Visitas </title>
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
        <link href="ssets/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <script src="Validaciones.js" type="text/javascript"></script>
    </head>
    <body class="dos">
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
        
        <br>
        <div class="container">

            <h4><b>Visitas</b></h4><hr>
            <nav class="navbar navbar-light">
                <form class="form-inline"accion="ControladorAgenda">
                    <input class="form-control mr-sm-2" id="formulario" type="search" placeholder="Buscar" aria-label="Search">
            <button type="button" onclick="Solicitudes()" class="btn btn-success form-control mr-sm-2">Ver solicitudes de visitas</button>
            <button type="button" onclick="visitas()" class="btn btn-success form-control mr-sm-2">Volver a las visitas</button>
                    </nav>
            <form class="text-center" action="ControladorVisita">
                <br>
                <div class="scr">
                <table>
                    <thead>
                    <tr>
                        <th>Titulo de En la agenda</th>
                        <th> Nombre de empresa </th>
                        <th> Numero de personas</th>
                        <th> Representante </th>
                        <th> Correo Electrónico </th>
                        <th> Estado </th>
                        <th> Acciones</th>
                    </tr>
                    </thead>
                    <tbody id="resultado">
                    <%

                        ArrayList<VisitasVO> pru = new ArrayList<VisitasVO>();
                        VisitasVO vo = new VisitasVO();
                        VisitasDAO dao = new VisitasDAO(vo);
                        pru = (ArrayList) dao.listar();
                        
                        for (VisitasVO obj : pru) {
                            if(obj.getEstado().equalsIgnoreCase("Solicitado")){
                            }else{
                    %>
                    <tr>
                        <td ><%=obj.getTitulo()%></td>
                        <td ><div class="des"><%=obj.getNombreE()%></div></td>
                        <td ><%=obj.getNumeroPersonas()%></td>
                        <td><%=obj.getNombre()%></td>
                        <td> <%=obj.getCorreo()%></td>
                        <td> <%=obj.getEstado()%></td>
                        
                        <td><a name ="codigov "class="btn tbn-primary btn-1g"value="<%=obj.getCodigov()%>"href="ControladorVisita?accion=editar&codigo=<%=obj.getCodigov()%>">Editar</a>
                            <a class="btn tbn-primary btn-1g" href="#" onclick="eliminarVisita(<%=obj.getCodigov()%>)">Eliminar</a></td>
                    </tr>
                            
                    <%
                        }
                        }
                    %>
</tbody>
                </table>
                    </div>
            </form>
        </div>
<a style="display: none" id="roll"><%=u.getRol()%></a>
<form action="ControladorAgenda">
<div class="modal fade" id="ventana1" >
    
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Aceptar Solicitud</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                       <div class="modal-body" style="background-color: #a3d5d1">
                    <div class="form-group">
                        <label>Por favor ingrese la hora de inicio y fin que le será asignada a la visita: </label><br>
                        <label>Hora de inicio</label>
                                <input type="time" class="form-control input100" required id="txtincio" placeholder="hora de inicio" required>
                            
                            <label>Hora de fin</label>
                                <input type="time" class="form-control input100" required id="txtfin" placeholder="hora de finalizacion"required>
                                
                                                
                                <input name="txtcodigo" type="hidden"id="ccc"name="ccc"><br>
                                                
                        <button type="submit"  name="accion" value="Aceptar" onclick="aceptar()" class="btn btn-success abajo-derecha">Aceptar</button>
                    </div>


                </div>
                                </div>
                            </div>
</div>
</form>
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
            function set(codigo) {
                                document.getElementById('ccc').value = codigo;
                            }
                            ;
                            function aceptar(){
                                location.href = 'ControladorAgenda?txtcodigo='+$("#ccc").val()+'&txtincio='+$("#txtincio").val()+'&txtfin='+$("#txtfin").val()+'&accion=Aceptar';
                            };
            $("form").submit(function(e){

     e.preventDefault();

     //resto código   

 });
           
            const eventos = [
                 <%

                            for (VisitasVO obj : pru) {
                        %>
                {descripcion: '<%=obj.getNombreE()%>',personas: '<%=obj.getNumeroPersonas()%>',nombre: '<%=obj.getNombre()%>',correo: '<%=obj.getCorreo()%>'
                    ,codigo: '<%=obj.getCodigov()%>',estado: '<%=obj.getEstado()%>',codigoE: '<%=obj.getCodigoa()%>',Titulo:'<%=obj.getTitulo()%>'},
                <%
                            }
                        %>
            ]
            
            const resultado = document.querySelector('#resultado');
const formulario = document.querySelector('#formulario');
const filtrar = () =>{
            resultado.innerHTML = '';
            const texto = formulario.value.toLowerCase();
            for(let evento of eventos){
                let descripcion = evento.descripcion.toLowerCase();
                let personas = evento.personas.toLowerCase();
                let nombre = evento.nombre.toLowerCase();
                let correo = evento.correo.toLowerCase();
                let codigo = evento.codigo.toLowerCase();
                let estado = evento.estado.toLowerCase();
                let Titulo = evento.Titulo.toLowerCase();
                let codigoE = evento.codigoE.toLowerCase();
                
                if(descripcion.indexOf(texto) !== -1 || personas.indexOf(texto) !== -1 
                || nombre.indexOf(texto) !== -1 || correo.indexOf(texto) !== -1 
                || codigo.indexOf(texto) !== -1|| Titulo.indexOf(texto) !== -1){
            if(estado === "solicitado"){
                if(prueba){
                    resultado.innerHTML += '<td>'+Titulo+'</td><td ><div class="des">'+descripcion+'</div></td><td >'+personas+
                            '</td><td>'+nombre+'</td><td>'+correo+
                            '</td><td>'+estado+
                            '</td><td><a name ="codigov "class="btn tbn-primary btn-1g"onclick="set('+codigoE+')" href="#ventana1" data-toggle="modal" >Aceptar Solicitud</a><a class="btn tbn-primary btn-1g" href="#" onclick="eliminarVisita('+codigo+')">Eliminar</a></td>';

                }
                
            }else{
                if(prueba){
                    
                }else{
                    resultado.innerHTML += '<td>'+Titulo+'</td><td ><div class="des">'+descripcion+'</div></td><td >'+personas+
                            '</td><td>'+nombre+'</td><td>'+correo+
                            '</td><td>'+estado+
                            '</td><td><a name ="codigov "class="btn tbn-primary btn-1g"value="'+codigo+'"href="ControladorVisita?accion=editar&codigo='+codigo+'">Editar</a><a class="btn tbn-primary btn-1g" href="#" onclick="eliminarVisita('+codigo+')">Eliminar</a></td>';
                }
                }    
            }
            }
            if (resultado.innerHTML == ''){
                resultado.innerHTML += '<td > Evento no encontrado </td>'
            }
        }
        prueba = false;
        const Solicitudes = () =>{
            prueba = true;
            resultado.innerHTML = '';
            for(let evento of eventos){
                let descripcion = evento.descripcion.toLowerCase();
                let personas = evento.personas.toLowerCase();
                let nombre = evento.nombre.toLowerCase();
                let correo = evento.correo.toLowerCase();
                let codigo = evento.codigo.toLowerCase();
                let estado = evento.estado.toLowerCase();
                let Titulo = evento.Titulo.toLowerCase();
                let codigoE = evento.codigoE.toLowerCase();
                
            if(estado === "solicitado"){
                resultado.innerHTML += '<td>'+Titulo+'</td><td ><div class="des">'+descripcion+'</div></td><td >'+personas+
                            '</td><td>'+nombre+'</td><td>'+correo+
                            '</td><td>'+estado+
                            '</td><td><a name ="codigov "class="btn tbn-primary btn-1g"onclick="set('+codigoE+')" href="#ventana1" data-toggle="modal" >Aceptar Solicitud</a><a class="btn tbn-primary btn-1g" href="#" onclick="eliminarVisita('+codigo+')">Eliminar</a></td>';

            
            }
            }
            if (resultado.innerHTML == ''){
                resultado.innerHTML += '<td > Evento no encontrado </td>'
            }
        }
        const visitas = () =>{
            prueba = false;
            resultado.innerHTML = '';
            for(let evento of eventos){
                let descripcion = evento.descripcion.toLowerCase();
                let personas = evento.personas.toLowerCase();
                let nombre = evento.nombre.toLowerCase();
                let correo = evento.correo.toLowerCase();
                let codigo = evento.codigo.toLowerCase();
                let estado = evento.estado.toLowerCase();
                let Titulo = evento.Titulo.toLowerCase();
                
            if(estado === "solicitado"){
                }else{
                    resultado.innerHTML += '<td>'+Titulo+'</td><td ><div class="des">'+descripcion+'</div></td><td >'+personas+
                            '</td><td>'+nombre+'</td><td>'+correo+
                            '</td><td>'+estado+
                            '</td><td><a name ="codigov "class="btn tbn-primary btn-1g"value="'+codigo+'"href="ControladorVisita?accion=editar&codigo='+codigo+'">Editar</a><a class="btn tbn-primary btn-1g" href="#" onclick="eliminarVisita('+codigo+')">Eliminar</a></td>';

                }
            }
            if (resultado.innerHTML == ''){
                resultado.innerHTML += '<td > Evento no encontrado </td>'
            }
        }
        
                            formulario.addEventListener('keyup',filtrar);
            $('.js-tilt').tilt({
                scale: 1.1
            })
         switch($("#roll").html()){
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
