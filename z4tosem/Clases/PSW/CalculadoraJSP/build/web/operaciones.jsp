 <!DOCTYPE html>

 <!--
 <html>
 <head>
     <meta hhtp-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link rel="stylesheet" href="estilos-calcu.css"/>
     <title>JSP page</title>
 </head>
    <body>
        <h1 class="titulos" align="center">Ejemplo calculadora</h1>
        
        /*   String presionado=request.getParameter("html");
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
               out.println("<h3>Complementar operaciones</h3>");
        */
        <h2 class="yea">La operacion que seleccionaste fue: <%/*out.println(tipoOper);*/%></h2><br>
        <h3 class="yea">El resultado es: <%/*out.println(total);*/%></h3><br>
        <h3 class="yea">Seleccionaste el boton: <%/*out.println(total);*/%></h3><br>
        <a class="yea" href="index.html">Regresar</a>
    </body>
 </html>
 <!DOCTYPE html>
-->
 <html>
 <head>
     <meta hhtp-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>JSP page</title>
 </head>
    <body>
        <h1 align="center">Ejemplo calculadora</h1>
        <%
           String presionado=request.getParameter("html");
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
               out.println("<h3>Complementar operaciones</h3>");
        %>
        <h2 >La operacion que seleccionaste fue: <%out.println(tipoOper);%></h2><br>
        <h3 >El resultado es: <%out.println(total);%></h3><br>
        <h3 >Seleccionaste el boton: <%out.println(total);%></h3><br>
        <a href="index.html">Regresar</a>
    </body>
 </html>