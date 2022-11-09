<%-- 
    Document   : listaCompleta
    Created on : 3/05/2022, 01:27:50 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link rel="stylesheet" href="estilos/cecesito.css"/>
        <table align="center" border="1" width="600">
            <tr>
                <th colspan="5">Datos generales</th>
                <th colspan="2">Controles</th>
            </tr>
            <tr bgcolor="skyblue">
                <th>Identificador</th>
                <th>Nombre</th>
                <th>Paterno</th>
                <th>Materno</th>
                <th>Edad</th>
                <th colspan="2"> <a href="index.html">
                        <img src="https://img.lovepik.com/element/45004/4990.png_860.png" width="25%" height="25%">
                    </a></th>
            </tr>
            <%
                Base bd = new Base();
                
                try{
                    bd.conectar();
                    String strQry = "SELECT p.*, u.imagen FROM persona p left join usuarioImg u on p.idPersona;";
                    ResultSet rs = null;
                    int idPer;
                    rs= bd.consulta(strQry);
                    
                    while (rs.next()){
                        idPer = Integer.parseInt(rs.getString(1));
                        

            %>
            <tr>
                
                <th><%=rs.getString(1)%></th>
                <th><%=rs.getString(2)%></th>
                <th><%=rs.getString(3)%></th>
                <th><%=rs.getString(4)%></th>
                <th><%=rs.getString(5)%></th>
                <th>
                    <a href="editaDatos.jsp?idPer=<%=idPer%>">
                        <img src="https://previews.123rf.com/images/faysalfarhan/faysalfarhan1604/faysalfarhan160401921/55780673-editar-bot%C3%B3n-p%C3%BArpura-cuadrada.jpg" width="50%" height="50%">
                    </a>
                </th>
                <th>
                    <a href="eliminar.jsp?idPer=<%=idPer%>">
                        <img src="https://www.cronica.com.ar/export/sites/cronica/img/2021/11/19/emoji_craneo.png_916602434.png" width="100%" height="100%">
                    </a>
                        
                </th>
                <th>
                    <a href="agregaUsr.jsp?idPer=<%=idPer%>">
                        <input id="BtnImg" type="submit" value="Agregar Imagen">
                    </a>
                        
                </th>
            </tr>
            <%
                
                }
                rs.close();
                bd.cierraConexion();
                } catch (Exception ex){
                    out.print(ex.getMessage());
                }
            %>  
        </table>
    </body>
</html>
