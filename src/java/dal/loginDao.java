package dal;

import data.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASP_REF
 */
public class loginDao extends DBconnector {

    public Account check(String user, String pass) {
        String query = "SELECT * FROM `user`WHERE username=? and password=MD5(?);";
        try {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
   
}