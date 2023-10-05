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

import model.product1;

/**
 *
 * @author mummykiara
 */
public class productDAO extends DBconnector{
    public ArrayList<product1 > getAll() {
        ArrayList<product1> list = new ArrayList<>();
        try {
            String query = "SELECT * FROM `product`";
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                product1 st = new product1(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5));
                list.add(st);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void addStu(product1 newPro) {
        String qr = "INSERT INTO `product`(`id`, `nameProduct`, `price`, `type`, `description`) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement stm = conn.prepareStatement(qr);
            stm.setString(1, newPro.getId());
            stm.setString(2, newPro.getNamepro());
            stm.setInt(3, newPro.getPrice());
            stm.setString(4, newPro.getType());
            stm.setString(5, newPro.getDescrip());
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            Logger.getLogger(productDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    public product1 getProID(String id) {
        String query = "SELECT * FROM `product` WHERE id = ?";
        PreparedStatement st;
        try {
            st = conn.prepareStatement(query);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                product1 stuD =  new product1(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5));
                return stuD;
            }
        } catch (SQLException e) {
            Logger.getLogger(productDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    
    public void Delete(String id){
        String sql = "DELETE FROM `product` WHERE `product`.`id` = ?";
        try {
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, id);
            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void update(product1 s){
        String query ="UPDATE `students` SET "
                + "`nameProduct`= ?,"
                + "`type`= ?,"
                + "`description`=?,"
                + "WHERE `product`.`id` =?";
        
        try {
            PreparedStatement stm = conn.prepareStatement(query);
            stm.setString(1, s.getNamepro());
            stm.setInt(2, s.getPrice());
            stm.setString(3, s.getType());
            stm.setString(4, s.getDescrip());
            stm.setString(5, s.getId());
            stm.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(productDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

//    public static void main(String[]args){
//        productDAO a = new productDAO();
//        ArrayList<product> list = a.getAll();
//        SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
//        java.util.Date date;
//        java.sql.Date finalDate= null;
//        java.sql.Date date_moi = null;
//        try {
//            finalDate = new java.sql.Date(formatter1.parse("2003-12-12").getTime());
//            date_moi = new java.sql.Date(formatter1.parse("2005-11-12").getTime());
//        } catch (ParseException ex) {
//            Logger.getLogger(addServlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        System.out.println(list.get(0).getId()+list.get(0).getNamepro());
//         student n_stu = new student("A89", "Tran Ngoc Hoai", finalDate,"Male", "NTH@fpt.edu.vn", "0123134212", "Can Tho");
//         try {
//            a.addStu(n_stu);
//             System.out.println("success");
//        } catch (Exception e) {
//             System.out.println("error");
//        }
//         
//        if (a.getStudentByID("A123")==null) {
//            System.out.println("in ra");
//            
//        }else{
//            System.out.println("ton tai");
//        }
//        student stu_sua = new student("A09", "Pudi", date_moi,"Male", "NTH@fpt.edu.vn", "0929139121", "Tho");
//        a.update(stu_sua);
//    }
    
}
