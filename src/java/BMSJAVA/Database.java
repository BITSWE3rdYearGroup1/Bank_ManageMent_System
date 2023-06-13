/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BMSJAVA;

import java.sql.*;

/**
 *
 * @author EZIRA SUTUAL
 */
public class Database {
        public static Connection connection ;
 public  static  void initializeDatabase() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost/bms","Sutuale","123");
    }
    
}
