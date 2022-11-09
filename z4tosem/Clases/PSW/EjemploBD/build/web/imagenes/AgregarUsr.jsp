





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="conexion.Base"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Usuario</h1>
        <form name="datosEdit" method="post" enctype="MULTIPART/FORM-DATA" action="guardaImg.jsp">
            <table border="1" width="600">
                <tr bgcolor="#c1e069">
                    <th>Datps a modificar</th>
                    
                </tr>
                
                <%
                    int id=Integer.parseInt(request.getParameter("idPer"));
                    
                    Base bd = new Base();
                    
                    try{
                        bd.conectar();
                    String strQry = "select*from persona where idPer='"+id+"'";
                    ResultSet rs = null;
                    
                    
                    rs=bd.consulta(strQry);
                    
                        while (rs.next()){
                            
                            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
                            miSessiondelUsuario.setAttribute("idPerAct", id);
                            
                %>
                <tr>
                    <th><label for="TxtId">Codigo</label>
                        <input id="TxtId" type="text" name="TxtId" value="<%=rs.getString(1)%>" readonly="readonly"/>
                    </th>
                </tr>
                
                <tr>
                    <th><label for="TxtNombre">Nombre</label>
                        <input id="TxtNombre" type="text" name="TxtNombre" value="<%=rs.getString(2)%>"/></th></tr>
                <tr>
                    <th><label for="TxtPaterno">Apellido paterno</label>
                        <input id="TxtPaterno" type="text" name="TxtPaterno" value="<%=rs.getString(3)%>"/></th></tr>
                <tr>
                    <th><label for="TxtMaterno">Apellido materno</label>
                        <input id="TxtMaterno" type="text" name="TxtMaterno" value="<%=rs.getString(4)%>"/></th></tr>
                <tr>
                    <th><label for="TxtEdad">Edad</label>
                        <input id="TxtEdad" type="text" name="TxtEdad" value="<%=rs.getString(5)%>"/></th></tr>
                <tr>
                    <th>
                            <input id="BtnGuardaImg" type="submit" name="BtnGuardaImg" value="Guardar Imagen"/></th></tr>
                <tr>
                    <th><label for="TxtImg">Imagen</label>
                        <input id="fileImg" type="file" name="fileImg"/></th></tr>
                <%
                    }
            }   catch (Exception XD){
                    out.print(XD.getMessage());
            }
                %>
            </table>
        </form>
    </body>
</html>
