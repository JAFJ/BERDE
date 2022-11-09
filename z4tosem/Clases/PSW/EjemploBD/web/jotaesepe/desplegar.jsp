<%-- 
    Document   : desplegar
    Created on : 11/04/2022, 07:49:42 AM
    Author     : Alumno
--%>

<%@page import="conexion.conex"%>
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
        <h1>Hello World!</h1>
        <%
            String desnombre=request.getParameter("TxtNombre");
            String paterno=request.getParameter("TxtPaterno");
            String materno=request.getParameter("TxtMaterno");
            String desedad=request.getParameter("TxtEdad");
            
        if (desnombre!=("") &&
            paterno !=("")&&
            materno !=("")&&
            desedad != ("")){
            //guardamos en BD
            
            conex bd = new conex();
            
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
        <form name="datos" method="post" action="listaCompleta.jsp">
            <input id="BtnTabla" type="submit" value="Ir a tabla"/>
        </form>
        
    </body>
</html>
