
<%@page import="modelos.vo.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
  <meta name="viewport"
    content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <link rel="stylesheet" href="assets/css/nav.css">
  <link rel="shortcut icon" href="imagenes/favicon.png" type="image/png">
  <title>nav</title>
</head>
<%
    UsuarioVO u = (UsuarioVO)session.getAttribute("Id");
%>
<body>
  <header>
    <div class="menu_bar">
      <a href="#"><img src="assets/img/ICONOB.png"title="Menú" alt="" /></a>
      
    </div>
    <nav style="height: 80px;">
        <span class="odin" ><a href="ControladorUsuario?accion=menu"><img class="logo" src="assets/img/Acueducto_Logo_Blanco.png" title="Ir a Inicio" /></a></span>
        <span class="odin" ><a href="ControladorUsuario?accion=menu"><img class="logo" src="assets/img/ICONOB.png" title="Ir a Inicio" /></a></span>
        
      <div class="menu_bar">
      <a href="#"><img  src="assets/img/ICONOB.png"title="Menú" alt="" /></a>
      
    </div>
<!--        <ul>
            <li style="text-align: left;">
                 <a Style="color:white"></a>
            </li>
            
            </ul>-->
        <ul>
            <a Style="color:white;float: left;font-family: Antipasto;font-size:larger;font-weight: bold;"><%=u.getNombre()%> <%=u.getApellido()%></a>
             <li>
          <a href="#">Usuarios</a>
          <ul class="children">
            <li>
              <a style=" font-size:large;" href="ControladorUsuario?accion=editarpassword&Id=<%=u.getID()%>" title="Ir a Actualizar Contraseña">Actualizar Contraseña
              </a>
            </li>
           
          </ul>
        </li>
        <li>
          <a href="#">Eventos</a>
          <ul class="children">
            <li><a style=" font-size:large;" href="ControladorAgenda?accion=add" title="Ir a Registrar Evento">Registrar Evento </a></li>
            <li><a style=" font-size:large;" href="ControladorAgenda?accion=listar" title="Ir a Lista de Evento">Lista de Evento </a></li>
          </ul>
        </li>
        <li>
          <a href="#">Visitas</a>
          <ul class="children">
            <li><a style=" font-size:large;" href="ControladorVisita?accion=add" title="Ir a Registrar Visita">Registrar Visita</a></li>
            <li><a style=" font-size:large;" href="ControladorVisita?accion=listar"title="Ir a Lista de Visita">Lista de Visitas </a></li>
          </ul>
        </li>
        <li><a href="CerrarSesion">Cerrar Sesión<span class="sr-only">(current)</span></a></li>
      </ul>
    </nav>
  </header>

 
      
  <script src="assets/js/nav.js"></script>

</body>

</html>