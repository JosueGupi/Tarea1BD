<%-- 
    Document   : menu
    Created on : 01/09/2021, 09:29:12 AM
    Author     : Josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="stylesheet" href="style.css">
    </head>
    
    <body>
        <h1 id="titulo" >Bienvenido usuario</h1>
        <form action ="menuBene.jsp"/>

            <input class= "boton" type="submit" value="Administrar beneficiarios">

        </form>
        &nbsp
        <form action ="menuCuentas.jsp"/>

            <input class= "boton" type="submit" value="Consultar cuentas">

        </form>
    </body>
</html>
