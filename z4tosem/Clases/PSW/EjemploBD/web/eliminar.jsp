<%-- 
    Document   : eliminar
    Created on : 19/05/2022, 01:41:15 PM
    Author     : Alumno
--%>

<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link rel="stylesheet" href="estilos/cecesito.css"/>
        <%
        int id=Integer.parseInt(request.getParameter("idPer"));

        Base bd = new Base();

            try{
                bd.conectar();
                String strQryPer = "delete from persona where idPer='"+id+"'";

                int resultadoBorra=bd.borrar(strQryPer);
                request.getRequestDispatcher("listaCompleta.jsp").forward(request,response);
            }
                catch(Exception XD){
                    
                }
        %>

    </body>
</html>
