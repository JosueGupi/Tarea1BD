/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.*;

/**
 *
 * @author Josue
 */
public class Conexion {
    public static Connection getConexion(){
            String conexionUrl = "jdbc:sqlserver://localhost:1433;"
                    + "database=master;"
                    + "user=sa;"
                    + "password=hoal;"
                    + "loginTimeout=30;";
           
            try {
                Connection con = DriverManager.getConnection(conexionUrl);
                return con;
            } catch (SQLException ex) {
                System.out.println(ex.toString());
                return null;
            }
    }
}

