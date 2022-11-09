<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP page</title>
    </head>
    <body>
        <h1 align="center">Ejemplo calculadora</h1>
        <%
           String presionado=request.getParameter("b1");
           String tipoOper=request.getParameter("selectOper");
           int num1=Integer.parseInt(request.getParameter("txtnum1"));
           int num2=Integer.parseInt(request.getParameter("txtnum2"));
           double total = 0;

           if (tipoOper.equals("suma"))
               total = num1+num2;
           else if (tipoOper.equals("resta"))
               total = num1-num2;
           else if (tipoOper.equals("multi"))
               total = num1*num2;
           else if (tipoOper.equals("divi"))
               total = num1/num2;
        %>
        <h2>La operacion que seleccionaste fue: <%out.println(tipoOper);%></h2><br>
        <h3>El resultado es: <%out.println(total);%></h3><br>
        <h3>Seleccionaste el boton: <%out.println(total);%></h3><br>
        <a href="index.html">Regresar</a>
    </body>
</html>