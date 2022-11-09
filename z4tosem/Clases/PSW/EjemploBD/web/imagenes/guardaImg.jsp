<%@page import="java.sql.Statement"%>
<%@page import="java.io.InputStream"%>
<%@page import="conexion.Base"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        
        HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
        
        int id = (int)(miSessiondelUsuario.getAttribute("idPerAct")==null?0: miSessiondelUsuario.getAttribute("idPerAct"));
        

        //Definir los bytes maximos del archivo cargado
        int MAX_SIZE = 102400*102400;
        //Crea una variable guardada para la ruta raíz
        String rootPath;
        //Declarar clase de lectura del archivo
        DataInputStream in = null;
        FileOutputStream fileOut = null;
        //Obtenga la direccion de red del cliente
        String remoteAddr = request.getRemoteAddr();
        //Obtener el nombre del servidor
        String serverName = request.getServerName();
        //Obtenga la direccion absoluta del porgrama de internet
        String realPath = "/*no tengo ideaaaaaaa*/";
        //Guardar directorio para crear archivos
        rootPath = realPath;
        //Obtener el tipo de datos cargado po el cliente
        String contentType = request.getContentType();
        
        String saveFile="";
        try{
            if (contentType.indexOf("multipart/form-data")) >=0)(
                //leer en los datos cargados
                in = new DataInputStream(request.getInputStream());
                int formDataLength = request.getContentLength();
                if (formDataLength>MAX_SIZE){
                    out.println("<P>El archivo de carga máxima no puede exceder"+MAX_SIZE+"</p>");
                    return;
                }
                //Guardar los datos del archivo cargado
                byte dataBytes[]=new byte[formDataLength];
                int byteRead = 0;
                int totalBytesRead = 0;
                //Los datos cargados se guardan en una matriz de bytes
                while (totalBytesRead<formDataLength) {
                    byteRead=in.read(dataBytes, totalBytesRead, formDataLength);
                }
                //Crear cadena basada en una matriz de bytes
                String file = new String (dataBytes, "UTF-8");
                //Obtener el nombre del archivo de los datos cargados (línea 75)
        }
        %>
    </body>
</html>
