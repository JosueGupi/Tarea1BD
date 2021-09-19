<%-- 
    Document   : menuBene
    Created on : 17 sep 2021, 9:53:16
    Author     : oscfr
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Beneficiarios</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1 id="titulo" >Beneficiarios asociados</h1>
        <%
            String cuenta = (String) request.getParameter("NumeroCuentas");
            out.println(cuenta);
        %>
        <div class="content-select">
	<select>
		<option>Sin seleccionar</option>
		<%
                    String select = "EXEC SP_ObtenerBeneficiarios ?, ?";
                    PreparedStatement sql = Conexion.getConexion().prepareStatement(select);
                    sql.setString(1, cuenta);
                    sql.setInt(2, 0);
                    ResultSet resultado = sql.executeQuery();
                    ArrayList<Integer> IdPersonas = new ArrayList();
                    while(resultado.next()){
                        IdPersonas.add(resultado.getInt("IdPersona"));
                    }
                    ArrayList<String> Nombres = new ArrayList();
                    
                    for(int i= 0; i<IdPersonas.size();i++){
                        select = "SELECT * FROM dbo.Personas WHERE Id = ?";
                        PreparedStatement sql2 = Conexion.getConexion().prepareStatement(select);
                        sql2.setInt(1, IdPersonas.get(i));
                        ResultSet resultado2 = sql2.executeQuery();
                        resultado2.next();
                    
                        System.out.println(resultado2.getString("Nombre")+"-"+resultado2.getString("ValorDocIdentidad"));
                        
                        Nombres.add(resultado2.getString("Nombre")+"-"+resultado2.getString("ValorDocIdentidad"));
                    }
                    for(int j = 0; j<Nombres.size(); j++){
                        out.println("<option value = "+Nombres.get(j)+">"+Nombres.get(j)+"</option>");
                    }
                %>
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
