<%-- 
    Document   : borrar
    Created on : 16 sep 2021, 16:28:04
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar Beneficiario</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
            /*response.sendRedirect("menu.jsp");
              ó
              out.println("<p>Se ha eliminado el beneficiario con éxito <a href='index.html'>Volver al inicio</a></p>");
            */
            
            out.println("<p>No existen beneficiarios para eliminar <a href='index.html'>Volver al inicio</a></p>");
        %>
    </body>
</html>
