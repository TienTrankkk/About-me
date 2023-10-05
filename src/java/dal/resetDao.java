/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dal.DBconnector;
import data.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ASP_REF
 */
public class resetDao extends DBconnector {

    public Account checkUser(String user) {
        String query = "SELECT * FROM `user` WHERE username=?;";
        try {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, user);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void newPass(String user, String pass) {
        String query = "UPDATE `user` SET `password`=MD5(?) WHERE username=?;";
        try {
            PreparedStatement ps = conn.prepareStatement(query);

            ps.setString(1, pass);
            ps.setString(2, user);
            ps.executeUpdate();

        } catch (Exception e) {
        }
        
    }

}
