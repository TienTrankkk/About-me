/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import DBconnector.productDB;
import dal.OrderDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;
import model.disdetail;
import model.order;
import model.user;
import modelHien.product;

/**
 *
 * @author PC
 */
public class detailServlet extends HttpServlet {

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
            out.println("<title>Servlet detailServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet detailServlet at " + request.getContextPath() + "</h1>");
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
       NumberFormat numberFormat = NumberFormat.getNumberInstance(Locale.getDefault());
        String idp = request.getParameter("sid");
        OrderDAO dao = new OrderDAO();
         productDB po = new productDB();
        try {
          
        ArrayList<product> list = new ArrayList<>();
            disdetail s = dao.displayDetail(idp);
              list = po.getListByType(s.getType());
              
            String replaced = s.getDes().replace("/", "<br>");
            request.setAttribute("img", s.getImg());
            request.setAttribute("name", s.getName());
            request.setAttribute("price", numberFormat.format(s.getPrice()));
            request.setAttribute("des", replaced);
            request.setAttribute("type", s.getType());
            request.setAttribute("sid", s.getId());
            request.setAttribute("data", list);
            System.out.println("cho nay danh de kt cai kist ne");
            for (product object : list) {
                System.out.println(object.getNameProduct());
            }
            System.out.println("abc");
            request.getRequestDispatcher("detail.jsp").forward(request, response);
        } catch (Exception e) {
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
        HttpSession session = request.getSession();
        productDB po = new productDB();
        OrderDAO dao = new OrderDAO();
        int quan = Integer.parseInt(request.getParameter("quan"));
        String idp = request.getParameter("sid");
        product pro = dao.getProductById(idp);
        ArrayList<product> list = new ArrayList<>();
        list = po.getListByType(pro.getType());
        System.out.println(idp);
        System.out.println("a");
        order o = dao.checkGio(idp);
        try {
            System.out.println("hehe");
            if (quan != 0) {
                if (o != null) {
                    System.out.println("toi zo day r");
                   String a= (String)session.getAttribute("account");
                    int total = dao.getQuantityPro(idp);
                    System.out.println(a +""+ idp+""+ quan + total);
                    
                    dao.addQuantityInProduct(a, idp, quan + total);
                    response.sendRedirect("detail?sid=" + idp);
                    System.out.println("toi zo day r 2");
                } else {
                    System.out.println("toi zo day nua");
                   String a= (String)session.getAttribute("account");
                    dao.addProduct(a, idp, quan);
                    response.sendRedirect("detail?sid=" + idp);
                }
            }
                        System.out.println("toi ko zo dc");
        } catch (Exception e) {
            System.out.println(e);
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
