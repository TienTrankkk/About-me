/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author mummykiara
 */
public class orders {
    private String user;
    private String fullname;
    private String email;
    private String phone;
    private String address;
    private String product;
    private int total;
    private String note;

    public orders(String user,String fullname, String email, String phone, String address, String product, int total, String note) {
        this.user = user;
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.product = product;
        this.total = total;
        this.note = note;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "orders{" + "user=" + user + ", fullname=" + fullname + ", email=" + email + ", phone=" + phone + ", address=" + address + ", product=" + product + ", total=" + total + ", note=" + note + '}';
    }
    
    
    

    
}
