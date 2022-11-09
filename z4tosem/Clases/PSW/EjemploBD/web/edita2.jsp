<%-- 
    Document   : edita2
    Created on : 17/05/2022, 02:30:23 PM
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
        int id = Integer.parseInt(request.getParameter("TxtId"));
        String nombre= request.getParameter("TxtNombre");
        String paterno= request.getParameter("TxtPaterno");
        String materno= request.getParameter("TxtMaterno");
        String edad= request.getParameter("TxtEdad");
        
        Base bd=new Base();

        try{
            bd.conectar();

            String strQry = "update persona set " + "nombre='"+nombre+"', paterno='"+paterno+"', materno='"+materno+"', edad='"+edad+"' where idPer='"+id+"'";

            bd.edita(strQry);
            int resultadoEdita=bd.edita(strQry);

            request.getRequestDispatcher("listaCompleta.jsp").forward(request, response);
        } catch (Exception XD) {
            out.print(XD.getMessage());
        }

        %>

    </body>
</html>
