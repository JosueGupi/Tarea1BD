<%-- 
    Document   : agregarBene
    Created on : 16 sep 2021, 14:28:08
    Author     : oscfr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Beneficiario</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <form action ="agregar.jsp"/>
            <p>Nombre: <input type="text" name="nombre" required/></p>
            <p>Porcentaje: <input type="number" min="1" max="100" name="porcentaje" required/></p>
            <%
            /* 
                Combo box parentescos
            */
            %>
            <p>Fecha de nacimiento: <input type="date" name="fecha" required/></p>
            <p>Cédula: <input type="number" name="cedula" required/></p>
            <p>Email: <input type="email" name="email" required/></p>
            
            <p> Formato Teléfono: (123)1234 1234 </>
            
            <p>Telefono 1: <input type="tel" pattern="\([0-9]{3}\) [0-9]{4}[ -][0-9]{4}" name="tel1" required/></p>
            <p>Telefono 2: <input type="tel" pattern="\([0-9]{3}\) [0-9]{4}[ -][0-9]{4}" name="tel2" required/></p>
            
            
            <input class= "boton" type="submit" value="Agregar beneficiario">
            
        </form>
    </body>
</html>
