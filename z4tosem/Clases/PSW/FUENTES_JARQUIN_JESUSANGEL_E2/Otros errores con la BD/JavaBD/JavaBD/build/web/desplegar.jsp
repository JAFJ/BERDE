<%-- 
    Document   : desplegar
    Created on : 11/04/2022, 07:37:00 AM
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
        <h1>Tus datos</h1>
        <%
            String desnombre = request.getParameter("txtNom");
            String paterno = request.getParameter("txtApeP");
            String materno = request.getParameter("txtApeM");
            String desedad = request.getParameter("txtEdad");
            
            if(!desnombre.equals(" ") && !paterno.equals(" ") && !materno.equals(" ") && !desedad.equals(" ")){
                Base bd = new Base();
                
                try {
                    bd.conectar();
                    String strQry = "insert into persona(nombre, paterno, materno, edad) " 
                            + " values('"+desnombre+"', '"+paterno+"', '"+materno+"',  '"+desedad+"');";
                    int resultadoInsert = bd.insertar(strQry);
                    out.print("checar resultado de la base " + resultadoInsert);
                
                    System.out.println(strQry);
                    System.out.println(resultadoInsert);
                }
                catch(Exception ex){
                System.out.println(ex);
                }
            }
            
            %>
            
            <label>Nombre: <%out.println(desnombre);%> </label>
            <label>Apellido paterno: <%out.println(paterno);%> </label>
            <label>Apellido materno: <%out.println(materno);%> </label>
            <label>Edad: <%out.println(desedad);%> </label>
    </body>
</html>
