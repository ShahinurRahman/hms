/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.util;

/**
 * @author ZiBRAIL
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms_db", "root", "");
            return con;
        } catch (Exception ex) {
            System.out.println("Database.getConnection() Error -->" + ex.getMessage());
            return null;
        }
    }

    public static void close(Connection con) {
        try {
            con.close();
        } catch (Exception ex) {
        }
    }
}
