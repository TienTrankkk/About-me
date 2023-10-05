/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.orders;
import model.product;

/**
 *
 * @author mummykiara
 */
public class orderDAO1 extends DBconnector{
    public void addCheckout(orders newOr) {
        String qr = "INSERT INTO `orders`(`username`, `Fullname`, `Email`, `Phone`, `Address`, `Product`, `Total`, `Note`) VALUES (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement stm = conn.prepareStatement(qr);
            stm.setString(1, newOr.getUser());
            stm.setString(2, newOr.getFullname());
            stm.setString(3, newOr.getEmail());
            stm.setString(4, newOr.getPhone());
            stm.setString(5, newOr.getAddress());
            stm.setString(6, newOr.getProduct());
            stm.setInt(7, newOr.getTotal());
            stm.setString(8, newOr.getNote());
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            Logger.getLogger(productDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    public static void main(String[]args){
        
         orderDAO1 o = new orderDAO1();
         orders a = new orders("NguyenAhghggfhjgf", "Hojgfju", "ASSD@Gmail.com", "09989878", "ABDmhgfjhfD", "SSDASD(1),asdasd(2)", Integer.parseInt("1200003"),"");
         o.addCheckout(a);
    }
}
