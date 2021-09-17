<%-- 
    Document   : cambios
    Created on : 16 sep 2021, 15:09:21
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Verificacion cambios</title>
    </head>
    <body>
        <%
            /*response.sendRedirect("menu.jsp");
              ó
              out.println("<p>Se ha editado beneficiario con éxito <a href='index.html'>Volver al inicio</a></p>");
            */
            String user = request.getParameter("usuario");
            int percentaje =Integer.parseInt(request.getParameter("porcentaje"));
            String date = request.getParameter("fecha");
            int identification =Integer.parseInt(request.getParameter("cedula"));
            String email = request.getParameter("email");
            String tele1 = request.getParameter("tel1");
            String tele2 = request.getParameter("tel2");
            out.println("<p>No se puede editar el nuevo beneficiario <a href='index.html'>Volver al inicio</a></p>");
        %>
    </body>
</html>
