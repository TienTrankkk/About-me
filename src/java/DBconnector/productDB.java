/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DBconnector;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelHien.product;

/**
 *
 * @author PC
 */
public class productDB extends connector{
      public ArrayList<product> getAllList() {
        ArrayList<product> list = new ArrayList<>();
        String query = "SELECT * FROM `product`";
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                list.add(new product(rs.getString(1), rs.getString(2), rs.getInt(3),rs.getString(4), rs.getString(5)));
                System.out.println("uke");
            }
        } catch (SQLException ex) {
            Logger.getLogger(connector.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("khum");
        }
        return list;
    }
      public   ArrayList<product> getListById(String id){
            ArrayList<product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` where id like '"+id+"%'" ;
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                list.add(new product(rs.getString(1), rs.getString(2), rs.getInt(3),rs.getString(4), rs.getString(5)));
                System.out.println("uke");
            }
        } catch (SQLException ex) {
            Logger.getLogger(connector.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("khum");
        }
        return list;
      }
       public   ArrayList<product> getListByType(String id){
            ArrayList<product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` where type like '%"+id+"%'" ;
           System.out.println(query);
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                list.add(new product(rs.getString(1), rs.getString(2), rs.getInt(3),rs.getString(4), rs.getString(5)));
                System.out.println("uke");
            }
        } catch (SQLException ex) {
            Logger.getLogger(connector.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("khum");
        }
        return list;
      }
       public ArrayList<product> getAllListBySearch(String search) {
        ArrayList<product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` where nameProduct like'%"+search+"%'";
           System.out.println(query);
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                list.add(new product(rs.getString(1), rs.getString(2), rs.getInt(3),rs.getString(4), rs.getString(5)));
                System.out.println("uke");
            }
        } catch (SQLException ex) {
            Logger.getLogger(connector.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("khum");
        }
        return list;
    }
      public ArrayList<product> getAllListByFilter(String filter, String key) {
          String[] fil = filter.split("-");
        ArrayList<product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` where (price between "+fil[0]+" and "+fil[1]+") and nameProduct like'%"+key+"%'" ;
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                list.add(new product(rs.getString(1), rs.getString(2), rs.getInt(3),rs.getString(4), rs.getString(5)));
                System.out.println("uke");
            }
        } catch (SQLException ex) {
            Logger.getLogger(connector.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("khum");
        }
        return list;
    }
       public ArrayList<product> getAllListByFilterPrice(String filter, String search) {
          String[] fil = filter.split("-");
        ArrayList<product> list = new ArrayList<>();
        String query = "SELECT * FROM `product` where (price between "+fil[0]+" and "+fil[1]+") and type like '%"+search+"%'" ;
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                list.add(new product(rs.getString(1), rs.getString(2), rs.getInt(3),rs.getString(4), rs.getString(5)));
                System.out.println("uke");
            }
        } catch (SQLException ex) {
            Logger.getLogger(connector.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("khum");
        }
        return list;
    }

      public static void main(String[] args) {
        productDB a = new productDB();
         ArrayList<product> list =  a.getListByType("trang tri cao cap");
         
          for (product object : list) {
              System.out.println(object.getNameProduct());
          }
    }
}
