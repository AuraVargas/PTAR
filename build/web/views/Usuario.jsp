<%-- 
    Document   : listarVisitas
    Created on : 5/11/2019, 10:51:49 AM
    Author     : Karito
--%>

<%@page import="modelos.dao.UsuarioDAO"%>
<%@page import="modelos.vo.UsuarioVO"%>
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
        <title> Lista Usuario</title>
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
        <link href="ssets/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <script src="Validaciones.js" type="text/javascript"></script>
    </head>
    <body class="dos">
                <%
        UsuarioVO u = (UsuarioVO)session.getAttribute("Id");
        %>
        <div class="contenido"></div>

                <br><br><br><br>
        <div class="container">

            <h4><b> Lista de usuarios</b></h4><hr>
            <nav class="navbar navbar-light">
                <form class="form-inline" > 
                    <input class="form-control mr-sm-2" id="formulario" type="search" placeholder="Buscar en usuarios" aria-label="Search"><button type="button" onclick="activos()" class="btn btn-success form-control mr-sm-2">Activos</button><button type="button" onclick="inactivos()" class="btn btn-success form-control mr-sm-2">Inactivos</button>
                </form>
            </nav>
            
                <br>
<% 
        ArrayList<UsuarioVO> pru = new ArrayList<UsuarioVO>();
        UsuarioVO vo= new UsuarioVO();
        UsuarioDAO dao=new UsuarioDAO(vo);
        pru =(ArrayList) dao.listar();
        
        %>
        <div class="scr">
        <table class=" table2">
                    <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Rol</th>
                    <th>Numero de telefono</th>
                    <th>Correo</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                    
                </tr>
            </thead>

            
             <tbody id="resultado">
                 <%
            for(UsuarioVO obj : pru){
            %>
                <tr>
                    <td><%=obj.getID()%></td>
                    <td><%=obj.getNombre()%></td>
                    <td><%=obj.getApellido()%></td>
                    <td><%=obj.getRol()%></td>
                    <td><%=obj.getTelefono()%></td>
                    <td><%=obj.getEmail()%></td>
                    <td><%=obj.getEstado()%></td>
                    <td><a href="ControladorUsuario?accion=editar&ID=<%=obj.getID()%>">Actualizar</a><br>
                    
                    
                </tr>
                <%
               }
                %>
            </tbody>
        </table>
            <div class="modal fade" id="ventana1" >
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Eliminar usuario</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label>¿Esta seguro de eliminar este usuario?</label><br>
                                                <input type="hidden"id="ccc"name="ccc">
                                            </div>


                                        </div>
                                    </div>
                                </div>
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
        <script type="text/javascript">
                            function set(codigov) {
                                document.getElementById('ccc').value = codigov;
                            }
                            ;
        </script>
        <script >
            
           
            const eventos = [
                 <%

                            for(UsuarioVO obj : pru){
                        %>
                {id: '<%=obj.getID()%>',nombre: '<%=obj.getNombre()%>',apellido: '<%=obj.getApellido()%>',rol: '<%=obj.getRol()%>'
                    ,telefono: '<%=obj.getTelefono()%>',correo: '<%=obj.getEmail()%>',estado: '<%=obj.getEstado()%>'},
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
                let id = evento.id.toLowerCase();
                let nombre = evento.nombre.toLowerCase();
                let apellido = evento.apellido.toLowerCase();
                let rol = evento.rol.toLowerCase();
                let telefono = evento.telefono.toLowerCase();
                let correo = evento.correo.toLowerCase();
                let estado = evento.estado.toLowerCase();
                
                if(id.indexOf(texto) !== -1 || nombre.indexOf(texto) !== -1 
                || apellido.indexOf(texto) !== -1 || rol.indexOf(texto) !== -1 
                || telefono.indexOf(texto) !== -1 || correo.indexOf(texto) !== -1){
                    resultado.innerHTML += '<td>'+id+'</td><td>'
                            +nombre+'</td><td>'+apellido+
                            '</td><td>'+rol+'</td><td>'+
                    telefono+'</td><td>'+
                    correo+'</td><td>'+
                    estado+'</td><td><a href="ControladorUsuario?accion=editar&ID='+id+
        '">Actualizar</a></td>';
                }
            }
            if (resultado.innerHTML == ''){
                resultado.innerHTML += '<td > Usuario no encontrado </td>'
            }
        };
        const activos = () =>{
            resultado.innerHTML = '';
            for(let evento of eventos){
                let id = evento.id.toLowerCase();
                let nombre = evento.nombre.toLowerCase();
                let apellido = evento.apellido.toLowerCase();
                let rol = evento.rol.toLowerCase();
                let telefono = evento.telefono.toLowerCase();
                let correo = evento.correo.toLowerCase();
                let estado = evento.estado.toLowerCase();
                
                if(estado==="activo"){
                    resultado.innerHTML += '<td>'+id+'</td><td>'
                            +nombre+'</td><td>'+apellido+
                            '</td><td>'+rol+'</td><td>'+
                    telefono+'</td><td>'+
                    correo+'</td><td>'+
                    estado+'</td><td><a href="ControladorUsuario?accion=editar&ID='+id+
        '">Actualizar</a></td>';
                }
            }

        }
        const inactivos = () =>{
            resultado.innerHTML = '';
            for(let evento of eventos){
                let id = evento.id.toLowerCase();
                let nombre = evento.nombre.toLowerCase();
                let apellido = evento.apellido.toLowerCase();
                let rol = evento.rol.toLowerCase();
                let telefono = evento.telefono.toLowerCase();
                let correo = evento.correo.toLowerCase();
                let estado = evento.estado.toLowerCase();
                
                if(estado==="inactivo"){
                    resultado.innerHTML += '<td>'+id+'</td><td>'
                            +nombre+'</td><td>'+apellido+
                            '</td><td>'+rol+'</td><td>'+
                    telefono+'</td><td>'+
                    correo+'</td><td>'+
                    estado+'</td><td><a href="ControladorUsuario?accion=editar&ID='+id+
        '">Actualizar</a></td>';
                }
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
