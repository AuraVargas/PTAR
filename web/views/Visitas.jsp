<%-- 
    Document   : Visitas
    Created on : 18/11/2019, 09:32:23 AM
    Author     : Karito
--%>

<%@page import="modelos.dao.VisitasDAO"%>
<%@page import="modelos.vo.VisitasVO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <body>
        <table class=" table-bordered table-dark">
                    <tr>
                        <th> Código de la Visita </th>
                        <th> Descripción de la Institución </th>
                        <th> Numero de personas que asisten </th>
                        <th> Nombre del Representante </th>
                        <th> Correo Electrónico </th>
                        <th></th>
                    </tr>
                    <%
                
                ArrayList<VisitasVO> pru = new ArrayList<VisitasVO>();
                VisitasVO vo= new VisitasVO();
                VisitasDAO dao=new VisitasDAO(vo);
                pru =(ArrayList) dao.listar();

for(VisitasVO obj : pru){
            %>
            <tr><td>kljdjadl</td>
                                            </tr>
                    <tr>
                        
        
                    </tr>
<%
};
%>
                    
                </table>
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
        <script type="text/javascript">
            function set(codigov){
                document.getElementById('ccc').value=codigov;
            };
        </script>
        <script >
                        $('.js-tilt').tilt({
                            scale: 1.1
                        });
        </script>
        <!--===============================================================================================-->

        <script src="assets/js/main.js" type="text/javascript"></script>
    </body>
</html>
