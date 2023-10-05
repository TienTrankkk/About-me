/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dal.cartDAO;
import dal.orderDAO1;
import dal.productDAO;
import dal.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.cart;
import model.orders;
import model.product1;
import model.users;

/**
 *
 * @author mummykiara
 */
public class checkoutP extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet checkoutP</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet checkoutP at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        productDAO pdao = new productDAO();
        cartDAO cdao = new cartDAO();
        HttpSession session = request.getSession();
        String a = (String) session.getAttribute("account");
        String id_raw = a;
        //request.getParameter("id");
        ArrayList<product1> plist = new ArrayList<>();
        System.out.println("loi dong 71 ne");

        ArrayList<cart> clist = cdao.getCartbyID(id_raw);
        System.out.println("loi dongf 74 ne");
//        cart c1 = new cart("Nguyen A","F01",2);
//        cart c2 = new cart("Nguyen A","S05",2);
//        cart c3 = new cart("Nguyen A","C01",5);
        userDAO stu = new userDAO();
        System.out.println("loi o day ne");
        try {
            System.out.println("do toi try roi ne");
            users us = stu.getUserByID(clist.get(0).getUserid());
//            clist.add(c1);
//            clist.add(c2);
//            clist.add(c3);
            for (int i = 0; i < clist.size(); i++) {
                product1 x = pdao.getProID(clist.get(i).getProid());
                product1 y = new product1(x.getId(), x.getNamepro(), x.getPrice(), x.getType(), x.getDescrip(), x.getPrice() * clist.get(i).getQuatily());
                plist.add(y);
                System.out.println(plist.get(i));

            }
            String stotal = (String) session.getAttribute("stotal");
            String sshipping = (String) session.getAttribute("sshipping");
            String st = (String) session.getAttribute("st");
            request.setAttribute("stotal", stotal);
            request.setAttribute("sshipping", sshipping);
            request.setAttribute("st", st);
            request.setAttribute("user", us);
            request.setAttribute("prolist", plist);
            request.setAttribute("calist", clist);
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
            System.out.println("toi la nan nhan cua bao luc noi cong so");

        } catch (IOException e) {
            System.out.println("alooo helooo khum");
            System.out.println(e);
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//          processRequest(request, response);
        productDAO pdao = new productDAO();
        orderDAO1 o = new orderDAO1();

        String user_r = request.getParameter("user");
        String name_r = request.getParameter("name");
        String mail_r = request.getParameter("mail");
        String phone_r = request.getParameter("phone");
        //
        String address_r = request.getParameter("address");
        String hometown_r = request.getParameter("hometown");
        String city_r = request.getParameter("city");
        String country_r = request.getParameter("country");
        //

        String total_r = request.getParameter("total");
        String note_r = request.getParameter("note");

        if (note_r.isEmpty()) {
            note_r = "";
        }

        String product_r = "";

        cartDAO cd = new cartDAO();
        ArrayList<cart> clist = cd.getCartbyID(user_r);
        try {
            for (int i = 0; i < clist.size(); i++) {
                product1 x = pdao.getProID(clist.get(i).getProid());
                product_r += x.getNamepro() + "(" + clist.get(i).getQuatily().toString() + "),";
            }

        } catch (NumberFormatException e) {

        }

        String finaladdress = address_r + ", " + hometown_r + ", " + city_r + ", " + country_r;
        int to = 0;

        try {
            to = Integer.parseInt(total_r);
        } catch (NumberFormatException e) {
        }

        try {

            orders b = new orders(user_r, name_r, mail_r, phone_r, finaladdress, product_r, to, note_r);
            System.out.println(b.toString());
            o.addCheckout(b);
            
            response.sendRedirect("homepage");
        } catch (NumberFormatException e) {

        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
