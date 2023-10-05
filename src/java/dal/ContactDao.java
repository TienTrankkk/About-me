/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

//import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Contact_Us;

/**
 *
 * @author Lam
 */
public class ContactDao extends DBconnector {

    public ArrayList<Contact_Us> getAllStudent() {
        ArrayList<Contact_Us> list = new ArrayList<>();
        String query = "SELECT * FROM `sendmassage`";
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Contact_Us st = new Contact_Us(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(st);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBconnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void add(Contact_Us sNew) {

        String query = "INSERT INTO `sendmassage`(`name`, `email`, `subject`, `message`) VALUES (?,?,?,?)";
        try {
            PreparedStatement st = conn.prepareStatement(query);
            st.setString(1, sNew.getname());
            st.setString(2, sNew.getemail());
            st.setString(3, sNew.getsubject());
            
            st.setString(4, sNew.getmassage());
            
            
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
//
//    public Contact_Us getStudentByID(String id) {
//        String query = "SELECT * FROM `sendmassage` WHERE StudentID = ?";
//        PreparedStatement st;
//        try {
//            st = conn.prepareStatement(query);
//            st.setString(1, id);
//            ResultSet rs = st.executeQuery();
//            if (rs.next()) {
//                Contact_Us stuD =  new Contact_Us(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
//                return stuD;
//            }
//        } catch (SQLException e) {
//            Logger.getLogger(ContactDao.class.getName()).log(Level.SEVERE, null, e);
//        }
//        return null;
//    }
    
//        public static void main(String[]args){
//        ContactDao a = new ContactDao();
//        ArrayList<Contact_Us> list = a.getAllStudent();
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
//        System.out.println(list.get(0).getsubject()+list.get(0).getemail());
//         Contact_Us n_stu = new Contact_Us("A89", "Tran Ngoc Hoai","Male", "NTH@fpt.edu.vn");
//         try {
//            a.add(n_stu);
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
////        a.update(stu_sua);
//    }
}
