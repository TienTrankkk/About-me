/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Khanh
 */
   public class DBconnector {
    protected Connection conn;

    public DBconnector() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/asignment","root",""); 
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("ko");
        }
    }
    
    public void close() {
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBconnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[] args) {
        DBconnector a = new DBconnector();
    }

    
}
