<%-- 
    Document   : Error
    Created on : 22-mar-2020, 15:24:26
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Error</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <script >
            <%
                session.setAttribute("Error", request.getAttribute("Error"));
            %>
            javascript:history.back();
        </script>
    </body>
</html>

