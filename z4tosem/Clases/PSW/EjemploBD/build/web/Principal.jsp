<%-- 
    Document   : Principal
    Created on : 22 may. 2022, 22:02:34
    Author     : jcova
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession miSessiondelUsuario=(HttpSession)request.getSession();
    int idPersona=(int)(miSessiondelUsuario.getAttribute("idPer")==null ? 0: miSessiondelUsuario.getAttribute("idPer"));
    
    if(idPersona<1){
        response.sendRedirect("login.jsp");
    }
    
    String nombre="";
    Base bd=new Base();
    bd.conectar();
    String strQry="select*from persona where idPer='"+idPersona+"'";
    ResultSet rsDatosPer=bd.consulta(strQry);
    
    if(rsDatosPer.next()){
        nombre=rsDatosPer.getString(3);
    }

    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sesiones</title>
    </head>
    <body>
        <h1>Binevenido pagina protegida</h1>
        <br>
        <div>
            <h1><%=nombre%></h1>
            <br>
            <br>
        </div>
            <h3><a href="salir.jsp">Salir</a></h3>
    </body>
</html>
