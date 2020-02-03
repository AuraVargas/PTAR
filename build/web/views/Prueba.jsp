<%-- 
    Document   : InicioSesion
    Created on : 26/10/2019, 12:57:08 PM
    Author     : Santi
--%>

<%@page import="modelos.vo.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="http://localhost:8080/java620/resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="http://localhost:8080/java620/resources/js/jquery-3.3.1.js" ></script>
        <script src="http://localhost:8080/java620/resources/js/popper.min.js" type="text/javascript"></script>
        <script src="http://localhost:8080/java620/resources/js/bootstrap.js" type="text/javascript"></script>
    </head>
    <body>
        <nav class = "navbar navbar-dark bg-dark">
            <a style="color:white" class ="navbar-toggler"><span class="navbar-toggler-icon"></span> Home </a>
            <div>
                <a style="color:white" href="#" class = "nav-link dropdown-toggle" data-toggle ="dropdown"> Cerrar Sesion </a>
                    <div class ="dropdown-item text-center">
                        <a></a>
                        <a></a>
                        <a></a>
                        <a></a>
                        <a></a>
                    </div>
                
            </div>
        </nav><br>
        <a>Usuario</a><br>
                <a href="views/ListaVisita.jsp"> visitas</a><br>
                <a href="ControladorAgenda?accion=listar">Agenda</a><br>
                        <a>Informe</a><br>
            
    </body>
</html>
