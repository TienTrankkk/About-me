/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author mummykiara
 */
public class product1 {
    private String id;
    private String namepro;
    private int price;
    private String type;
    private String descrip;
    private int cartprice;

    public product1(String id, String namepro, int price, String type, String descrip) {
        this.id = id;
        this.namepro = namepro;
        this.price = price;
        this.type = type;
        this.descrip = descrip;
    }

    public product1(String id, String namepro, int price, String type, String descrip, int cartprice) {
        this.id = id;
        this.namepro = namepro;
        this.price = price;
        this.type = type;
        this.descrip = descrip;
        this.cartprice = cartprice;
    }

    public int getCartprice() {
        return cartprice;
    }

    public void setCartprice(int cartprice) {
        this.cartprice = cartprice;
    }
    
    
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNamepro() {
        return namepro;
    }

    public void setNamepro(String namepro) {
        this.namepro = namepro;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }

    @Override
    public String toString() {
        return "product{" + "id=" + id + ", namepro=" + namepro + ", price=" + price + ", type=" + type + ", descrip=" + descrip + ", cartprice=" + cartprice + '}';
    }

    
    
}
