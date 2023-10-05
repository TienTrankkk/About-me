/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.users;

/**
 *
 * @author mummykiara
 */
public class userDAO extends DBconnector{
    public List<users> getAll(){
        List<users> list = new ArrayList<>();
        String query = "SELECT * FROM `user`";
        try {
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(query);
        while(rs.next()){
            users ad = new users(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
            list.add(ad);
        }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public users getUserByID(String id) {
        ArrayList<users> list = new ArrayList<>();
        String query = "SELECT * FROM `user` WHERE `username` = ?";
        PreparedStatement st;
        try {
            st = conn.prepareStatement(query);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                users stuD =  new users(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
                list.add(stuD);
                return stuD;
            }
        } catch (SQLException e) {
            Logger.getLogger(userDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    
    public boolean check(String u, String p){
        String query = "SELECT * FROM `user` WHERE username = ? and password = ?";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, u);
            st.setString(2, p);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                users user = new users(rs.getString(1), rs.getString(2));
                return true;
            }
        } catch (SQLException e) {
                System.out.println(e);
        }
        return false;
    }
    
     public static void main(String[]args){
        userDAO a = new userDAO();
        String id ="TranB";
         users us = a.getUserByID(id);
         try {
             System.out.println(us.toString());
         } catch (Exception e) {
             System.out.println(e);
         }
    }
}
