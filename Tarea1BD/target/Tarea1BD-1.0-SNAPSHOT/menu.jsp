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
        <div class="content-select">
	<select>
		<option>Beneficiario 1</option>
		<option>Beneficiario 2</option>
		<option>Beneficiario 3</option>
	</select>
	<i></i>
        </div>
        &nbsp
        &nbsp
        <form action ="editarBene.jsp"/>

            <input class= "boton" type="submit" value="Editar beneficiario">

        </form>
        &nbsp
        <form action ="agregarBene.jsp"/>

            <input class= "boton" type="submit" value="Agregar beneficiario">

        </form>
        &nbsp
        <form action ="borrar.jsp"/>

            <input class= "boton" type="submit" value="Borrar beneficiario">

        </form>
    </body>
</html>
