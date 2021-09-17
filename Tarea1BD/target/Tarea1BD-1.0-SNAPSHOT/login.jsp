<%-- 
    Document   : login
    Created on : 31/08/2021, 08:21:12 PM
    Author     : Josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Verificacion</title>
    </head>
    <body>
        <%
            String user = request.getParameter("usuario");
            String password = request.getParameter("contraseña");
            if(user.equals("sa") && password.equals("hoal"))
                response.sendRedirect("menu.jsp");
            out.println("<p>Usuario No Registrado <a href='index.html'>Intente de nuevo</a></p>");
        %>
    </body>
</html>
