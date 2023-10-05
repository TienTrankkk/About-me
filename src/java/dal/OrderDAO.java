/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.disdetail;
import model.order;
import model.sample;
import modelHien.product;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBconnector {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public void addProduct(String user, String idpro, int quantity) {
        String query = "INSERT INTO `order`(`username`, `idproduct`, `quantity`) VALUES (?,?,?)";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, idpro);
            ps.setInt(3, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void addQuantityInProduct(String user, String id, int quantity) {
        String query = "UPDATE `order` SET`quantity`= ? WHERE idproduct = ? and username = ?;";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setString(2, id);
            ps.setString(3, user);
            ps.executeUpdate();
            System.out.println("hh");
        } catch (Exception e) {
            System.out.println("aâ");
            System.out.println(e);
        }
    }

    public int getQuantityPro(String id) {
        String query = "SELECT `quantity` FROM `order` WHERE idproduct = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public order checkGio(String id) {
        String query = "SELECT * FROM `order` WHERE idproduct = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new order(rs.getString(1), rs.getString(2), rs.getInt(3));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public disdetail displayDetail(String id){
        String query = "SELECT ab.id,ab.nameProduct,ab.price,ab.type,ab.description,c.path from `product` ab left join `image` c on ab.id = c.id WHERE ab.id = ?;";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return new disdetail(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<sample> getOrderAll(String user) {
        String query = "SELECT ab.id,c.path,ab.nameProduct,ab.price,b.quantity from `product` ab left join `order` b on ab.id = b.idproduct left join `image` c on ab.id = c.id where b.username = ?";
        List<sample> list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                sample s = new sample(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<order> getOrder(String user) {
        String query = "SELECT * FROM `order` WHERE `username` = ?";
        List<order> list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                order s = new order(rs.getString(1), rs.getString(2), rs.getInt(3));
                list.add(s);
            }
            return list;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void deleteOrder(String id) {
        String query = "DELETE FROM `order` WHERE `idproduct` = ?";
        try {
            System.out.println(id);
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public product getProductById(String id){
        String query = "SELECT * FROM `product` where id = ?";
        try{
        ps = conn.prepareStatement(query);
        ps.setString(1, id);
        rs = ps.executeQuery();
        while(rs.next()){
            return new product(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5));
        }
        }catch(Exception e){
            System.out.println(e);
        }
        return null;
        
    }

    public static void main(String[] args) {

    }
}
