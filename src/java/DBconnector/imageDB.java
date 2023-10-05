/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DBconnector;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelHien.image;

/**
 *
 * @author PC
 */
public class imageDB extends connector{
    
    public String FindImg(String id){
        String query="SELECT * FROM `image` WHERE idImage=?";
        try {
          PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, id);   
             ResultSet rs = st.executeQuery();
             if (rs.next()) {
                image img = new image(rs.getString(1), rs.getString(2),rs.getString(3));
                 System.out.println("dc");
                return img.getPath();
            }
        } catch (SQLException e) {
            System.out.println(e);
            System.out.println("khum");
        }
        return null;
    }
    
    public static void main(String[] args) {
        imageDB i = new imageDB();
        System.out.println(i.FindImg("C01"));
        
    }
}
