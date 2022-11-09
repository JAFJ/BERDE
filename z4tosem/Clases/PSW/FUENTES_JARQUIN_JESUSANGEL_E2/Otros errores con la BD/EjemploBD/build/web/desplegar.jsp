<%-- 
    Document   : desplegar
    Created on : 11/04/2022, 07:49:42 AM
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
        <h1>Hello World!</h1>
        <%
            String desnombre=request.getParameter("TxtNombre");
            String paterno=request.getParameter("TxtPaterno");
            String materno=request.getParameter("TxtMaterno");
            String desedad=request.getParameter("TxtEdad");
            
        if (!desnombre .equals("")&&!desnombre .equals("")&&
            !materno .equals("")&&
            !paterno .equals("")&&
            !desedad .equals("")){
            //guardamos en BD
            
            Base bd = new Base();
            
            try{
                bd.conectar();
                String strQry="insert into persona(nombre,paterno,materno,edad) values('"+desnombre+"','"+paterno+"','"+materno+"','"+desedad+"');";
                int resultadoInsert = bd.insertar(strQry);
                
                out.print("Resultado de la Base "+ resultadoInsert);
            }
            catch (Exception ex){
                
            }
        }
        %>
        <label>Nombre: <%out.println(desnombre);%></label>
        <label>Apellido paterno: <%out.println(paterno);%></label>
        <label>Apellido materno: <%out.println(materno);%></label>
        <label>Edad: <%out.println(desedad);%></label>
        
    </body>
</html>
