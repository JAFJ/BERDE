<%-- 
    Document   : formBusca
    Created on : 17/05/2022, 01:19:14 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link rel="stylesheet" href="estilos/cecesito.css"/>
        <h1>Buscar Datos</h1>
        <form name="buscarDatos" method="POST" action="buscar.jsp">
            <label>
                <h3>Escribe el nombre y apllido paterno de la persona que buscas</h3>
            </label>
            <label for="TxtNombre">Escribe el nombre</label>
            <input id="TxtNombre" type="text" name="TxtNombre">
            <br/>
            <label for="TxtPaterno">Escribe el apellido paterno</label>
            <input id="TxtPaterno" type="text" name="TxtPaterno"/>
            <br/>
            <br/>
            
        <input id="BtnBuscar" type="submit" value="Buscar"/>
        </form>
            
    </body>
</html>
