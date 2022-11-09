<%-- 
    Document   : newjsp
    Created on : 29 abr. 2022, 22:49:39
    Author     : spide
--%>
<%@page import="conexion.Basesita"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tus resultados</h1>
        <%
            String desartis = request.getParameter("nombreartis");
            String cancion = request.getParameter("cancion");
            String fechacancion  = request.getParameter("fechacancion");
            String genero = request.getParameter("genero");
            String otro = request.getParameter("otro");
            String tipoartista = request.getParameter("tipo_de_artista");
            
            if(!desartis.equals(" ")&& !cancion.equals(" ")&& !fechacancion.equals(" ")&& !genero.equals(" ")&& !otro.equals(" ")&& !tipoartista.equals(" ")){
                Basesita bd = new Basesita();
                
                try{
                    bd.conectar();
                    String strQry = "insert into respuestas(artista, cancion, fechacancion, genero, otro, tipodeartista) values('"+desartis+"','"+cancion+"','"+fechacancion+"','"+genero+"','"+otro+"','"+tipoartista+"');";
                    int resultadoInsert = bd.insertar(strQry);
                    out.print("Revisar resiltado de la base" + resultadoInsert);

                    System.out.println(strQry);
                    System.out.println(resultadoInsert);
            }
            catch(Exception ex){
            System.out.println(ex);
        
            }
        }
            
        %>

        
            <label>Nombre del artista: <%out.println(desartis);%> </label>
            <label>Nombre de la canción: <%out.println(cancion);%> </label>
            <label>Fecha de la cancion: <%out.println(fechacancion);%> </label>
            <label>Género del artista <%out.println(genero);%> </label>
            <label>Género del artista (campo alternativo) <%out.println(otro);%> </label>
            <label>Tipo de artista <%out.println(tipoartista);%> </label>
            
    </body>
</html>
