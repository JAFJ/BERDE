<%-- 
    Document   : login
    Created on : 22 may. 2022, 21:37:11
    Author     : jcova
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inicio</h1>
        <form name="datos" method="post" action="validarUsr.jsp">
            <table border="1" width="600">
                <tr bgcolor="skyblue">
                    <th colspan="2">Acceso</th>
                </tr>
                
                <tr>
                    <th><label for="TxtUsr">Usuarios</label></th>
                    <th><input id="TxtUsr" type="text" name="TxtUsr" required/> </th>
                </tr>
                
                <tr>
                    <th><label for="TxtPsw">Contraseña</label></th>
                    <th><input id="TxtPsw" type="text" name="TxtPsw" required/> </th>
                </tr>
                
                <tr>
                    <th colspan="2">
                        <input id="BtnEnviar" type="submit" value="Enviar"/> 
                    </th>
                </tr>
            </table>
        </form>
    </body>
</html>