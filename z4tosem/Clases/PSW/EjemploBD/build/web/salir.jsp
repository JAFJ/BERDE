<%-- 
    Document   : salir
    Created on : 22 may. 2022, 22:12:36
    Author     : jcova
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession miSessiondelUsuario=(HttpSession)request.getSession();
    
    miSessiondelUsuario.invalidate();
    
    response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
