<%-- 
    Document   : TusDatos
    Created on : 28/03/2022, 08:11:32 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi primer JSP</title>
    </head>
    <body>
        <%
        
            String nombre=request.getParameter("nombre");

        %>
    Tu nombre es: <%out.println(nombre);%><br>
    </body>
</html>
