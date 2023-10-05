/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import data.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ASP_REF
 */
public class signUpDao extends DBconnector {
    
   public void signup(String user, String fullname, String pass, String email, int phone, String address) {
        String query = "INSERT INTO `user`(`username`, `fullname`, `password`, `email`, `phone`, `address`) VALUES (?,?,MD5(?),?,?,?)";

        try {
            PreparedStatement ds = conn.prepareStatement(query);

            ds.setString(1, user);
            ds.setString(2, fullname);
            ds.setString(3, pass);
            ds.setString(4, email);
            ds.setInt(5, phone);
            ds.setString(6, address);

            ds.executeUpdate();
            // sử dụng khi ko có kết quả trả về
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    
      public Account checkExist(String user) {
        String query = "SELECT * FROM `user` WHERE username=?;";
        try {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, user);

            ResultSet rs = ps.executeQuery();
            //chỉ sử dụng khi có kết quả trả về từ sql
            if (rs.next()) {
                System.out.println("tt");
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6));

            }

        } catch (Exception e) {
        }
        System.out.println("khum tt");
        return null;
    }
    
    
     
}
