<%-- 
    Document   : buscar
    Created on : 17/05/2022, 01:46:38 PM
    Author     : Alumno
--%>
<%@page import="conexion.Base"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link rel="stylesheet" href="estilos/cecesito.css"/>
        <form name="datosEdit" method="post" action="edita2.jsp">
            <table border="1" width="600">
                <tr bgcolor="skyblue">
                    <th>
                        <label>Actualizar datos</label>
                    </th>
                </tr>
                <%
                    String nombre=request.getParameter("TxtNombre");
                    String paterno=request.getParameter("TxtPaterno");

                    if(!nombre.equals("")&&!paterno.equals("")){
                        Base bd = new Base();

                    try{

                        bd.conectar();
                        String strQry = "select*from persona where"+" nombre='"+nombre+"' and paterno='"+paterno+"'";
                        ResultSet rs = null;

                        rs = bd.consulta(strQry);
                        int id;

                    if (rs.next()){
                %>
                  
                <tr>
                    <th><label for="TxtId">Codigo</label>
                        <input id="TxtId" type="text" name="TxtId"
                               value="<%=rs.getString(1)%>" readonly="readonly"/>
                    </th>
                </tr>
                
                <tr>
                    <th>
                        <label for="TxtNombre">Nombre</label>
                        <input id="TxtNombre" type="text" name="TxtNombre" value="<%=rs.getString(2)%>"/>
                <tr>
                    <th>
                        <label for="TxtPaterno">Apellido Paterno</label>
                        <input id="TxtPaterno" type="text" name="TxtPaterno" value="<%=rs.getString(3)%>"/>
                <tr>
                    <th>
                        <label for="TxtMaterno">Apellido Materno</label>
                        <input id="TxtMaterno" type="text" name="TxtMaterno" value="<%=rs.getString(4)%>"/>
                <tr>
                    <th>
                        <label for="TxtEdad">Edad</label>
                        <input id="TxtEdad" type="text" name="TxtEdad" value="<%=rs.getString(3)%>"/>
                        
                <tr>
                    <th>
                        <input id="BtnEditar" type="submit" name="BtnEditar" value="Guardar Cambios"/>
                    </th>
                </tr>

                <%
                    }
else {
    out.print("no existe");
    }
    } catch (Exception XD) {
            out.print(XD.getMessage());
    }





}

else{
                %>
            <br/>
            <label><h3>Debes ingresar todos los datos</h3></label>
            <br/>
            <br/>
            
            <%
            
                }
            %>
            
            </table>
        </form>
    </body>
</html>
