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
        <%
            int id = Integer.parseInt(request.getParameter("TxtId"));
            String nombre = request.getParameter("nombre");
            String paterno = request.getParameter("paterno");
            String materno = request.getParameter("materno");
            String edad = request.getParameter("edad");
            
            Base bd = new Base();
            
            try {
                bd.conectar();
                String strQry = "update persona set nombre='"+nombre+"', paterno ='"+paterno+"', materno='"+materno+"', edad='"+edad+"' where idPer='"+id+"'";
                
                int resultadoEdita = bd.edita(strQry);
                
                out.println("Instruccion en sql a realizar" +strQry);
                out.println("Resultado de la modificacion" +resultadoEdita);
                
                if (resultadoEdita==1){
                %>
                        <script>
                            window.alert("Los datos se modificaron correctamente");
                        </script>
                        <h2>Los datos se modificaron</h2>
                <%
                    }
                }catch (Exception ex) {
                        out.print(ex.getMessage());
                }
                %>
    </body>
</html>
