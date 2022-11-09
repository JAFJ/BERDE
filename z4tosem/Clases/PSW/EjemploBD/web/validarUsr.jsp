<%-- 
    Document   : validarUsr
    Created on : 22 may. 2022, 21:39:06
    Author     : jcova
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<%
    /***recuperar valores*****/
    String usr =request.getParameter("TxtUsr");
    String pswd=request.getParameter("TxtPsw");
    
    if(usr==null){
        //out.print("usr no fue llamado desde el login");
        usr="0";
    }
    else{
        if(usr.equals("")){
            usr="0";
        }
    }
    if(pswd==null){
        //out.print("pswd no fue llamado desde el login");
        pswd="0";
    }
    else{
        if(pswd.equals("")){
            pswd="0";
        }
    }
    
    if(!usr.equals("0")&&!pswd.equals("0")){
        //conectamos la bd
        //si trae datos checamos y generamos sesiones
        //validamos usuario
        //generamos sesiones
        //si es usuario valido redirijimos al principal
        
        Base bd=new Base();
        bd.conectar();
        String strQry="Select * from usuarios u inner join persona p on u.idPer=p.idPer where u.usuario='"+usr+"' and u.contraseña='"+pswd+"'";
        ResultSet rsValidaUsr=bd.consulta(strQry);
        
        
        if(rsValidaUsr.next()){
            
            HttpSession miSessiondelUsuario=(HttpSession)request.getSession();
            
            int idPersona=rsValidaUsr.getInt("idPer");//valores de la bd
            String nombre=rsValidaUsr.getString("nombre");
            miSessiondelUsuario.setAttribute("idPer",idPersona);
            miSessiondelUsuario.setAttribute("nombreUsuario",nombre);
            response.sendRedirect("Principal.jsp");
        }
        else{
            
        }
    }   
    else{
        response.sendRedirect("login.jsp");
    }
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usuario desconocido</h1>
        <br><br>
        <h3><a href="login.jsp">Regresar</a></h3>
    </body>
</html>
