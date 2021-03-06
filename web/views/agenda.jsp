<%-- 
    Document   : agenda
    Created on : 03-nov-2019, 19:38:53
    Author     : HP
--%>

<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.dao.AgendaDAO"%>
<%@page import="modelos.vo.AgendaVO"%>
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
        <title>Listar Agenda</title>
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
    <body class="editar dos">
        <%
        UsuarioVO u = (UsuarioVO)session.getAttribute("Id");
        %>
        <div class="contenido"></div>

                <br><br><br>
        <br>
        <div class="container">

           <h4><b>Lista de Eventos Registrados</b></h4><hr>
       
           
            <nav class="navbar navbar-light bg-">
                <form class="form-inline" >
                    <input class="form-control mr-sm-2" id="formulario" type="search" placeholder="Buscar" aria-label="Search">
                     <a class="btn btn-success form-control mr-sm-2" href="ControladorAgenda?accion=add">Registrar un evento</a><br>
                </form>
            </nav> <br>

            <form class="form-inline" action ="ControladorAgenda">
                <center>
                    <div class="scr">
                    <table class="table2" >
                        
                        <thead>
                        <tr>
                        
                            <th>Titulo de evento</th>
                            <th>Fecha</th>
                            <th>Descripción</th>
                            <th>Hora</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                        
                        </thead>
                        <tbody id="resultado">
                        <%
                            AgendaVO vo = new AgendaVO();
                            AgendaDAO dao = new AgendaDAO(vo);
                            ArrayList<AgendaVO> list = (ArrayList) dao.listar();

                            for (AgendaVO obj : list) {
                                if(obj.getEstado().equalsIgnoreCase("Solicitado")|| obj.getEstado().equalsIgnoreCase("Inactivo")){
                            }else{
                        %>
                        
                        <tr >
                            <td ><%=obj.getTitulo()%></div></td>
                            <td ><%=obj.getFecha()%></td>
                            <td ><div class="des"><%=obj.getDescripcion()%></div></td>
                            <td ><%=obj.getHoraInicio()%> - <%=obj.getHoraFin()%></td>
                            <td ><%=obj.getEstado()%></td>
                            <td > <a class="btn tbn-primary btn-1g" href="ControladorAgenda?accion=editar&codigo=<%=obj.getCodigoa()%>">Editar</a>
                                <button style="color:#CB3234" class="btn tbn-primary btn-1g" onclick="eliminar(<%=obj.getCodigoa()%>);">Eliminar</button> </td>
                        </tr>
                        <%
                            }
                            }
                        %>
                        </tbody>
                    </table>
                        </div>
                </center>
            </form>
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
        <script type="text/javascript">
                                function set(codigoa) {
                                    document.getElementById('txtcodigo').value = codigoa;
                                }
                                ;
                                
                            
                            
                                
        </script>
        <script >
            $("form").submit(function(e){

     e.preventDefault();

     //resto código   

 });
           
            const eventos = [
                 <%

                            for (AgendaVO obj : list) {
                        %>
                {titulo: '<%=obj.getTitulo()%>',fecha: '<%=obj.getFecha()%>',descripcion: '<%=obj.getDescripcion()%>'
                    ,estado: '<%=obj.getEstado()%>',horainicio: '<%=obj.getHoraInicio()%>'
                ,horafin: '<%=obj.getHoraFin()%>',codigo: '<%=obj.getCodigoa()%>'},
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
                let titulo = evento.titulo.toLowerCase();
                let fecha = evento.fecha.toLowerCase();
                let descripcion = evento.descripcion.toLowerCase();
                let estado = evento.estado.toLowerCase();
                let horainicio = evento.horainicio.toLowerCase();
                let horafin = evento.horafin.toLowerCase();
                let codigo = evento.codigo.toLowerCase();
                
                if(titulo.indexOf(texto) !== -1 || fecha.indexOf(texto) !== -1 
                || descripcion.indexOf(texto) !== -1 || estado.indexOf(texto) !== -1 
                || horainicio.indexOf(texto) !== -1 || horafin.indexOf(texto) !== -1){
            if(estado === "solicitado"||estado === "inactivo"){
                }else{
                    resultado.innerHTML += '<td >'+titulo+'</div></td>\n\
                    <td >'+fecha+'</td><td ><div class="des">'+descripcion+'</div></td>\n\
                    <td >'+horainicio+' a '+horafin+'</td><td >'+estado+'</td>\n\
                    <td > <a class="btn tbn-primary btn-1g" href="ControladorAgenda?accion=editar&codigo='+codigo+'">Editar</a>\n\
                    <a href="#" class="btn tbn-primary btn-1g" onclick="eliminar('+codigo+');">Eliminar</a> </td>';
                }    
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

        <script src="assets/js/acciones.js" type="text/javascript"></script>
        <script src="assets/js/main.js" type="text/javascript"></script>

    </body>
</html>
