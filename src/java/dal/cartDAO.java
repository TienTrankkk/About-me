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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.cart;
import model.product1;

/**
 *
 * @author mummykiara
 */
public class cartDAO extends DBconnector{
    
    public ArrayList<cart> getAll() {
        ArrayList<cart> list = new ArrayList<>();
        try {
            String query = "SELECT * FROM `order`";
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                cart st = new cart(rs.getString(1), rs.getString(2), rs.getInt(3));
                list.add(st);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public ArrayList<cart> getCartbyID(String user) {
        String query = "SELECT * FROM `order`  WHERE `username` = ?";
        ArrayList<cart> list = new ArrayList<>();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(query);
            st.setString(1, user);
            System.out.println(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                cart u_cart = new cart(rs.getString(1), rs.getString(2), rs.getInt(3));
                list.add(u_cart);
            }
        } catch (SQLException e) {
            System.out.println(e);
           Logger.getLogger(productDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }
    public static void main(String args[]){
        cartDAO c = new cartDAO();
        ArrayList<cart> list = c.getCartbyID("NguyenA");
//        System.out.println(list.get(0).getUserid()+ list.get(0).getQuenAatily());
for (cart object : list) {
            System.out.println(object.toString());
        }
    }
}
