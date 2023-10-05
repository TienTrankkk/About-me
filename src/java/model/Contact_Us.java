/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author 
 */
public class Contact_Us {
    private String name;
    private String subject;   
    private String email;
    private String massage;
   

    public Contact_Us() {
    }

    public Contact_Us(String name, String subject,String email, String massage) {
        this.name = name;
        this.subject = subject; 
        this.email = email;
        this.massage = massage;
        
    }

    public String getname() {
        return name;
    }

    public void setname(String name) {
        this.name = name;
    }

    public String getsubject() {
        return subject;
    }

    public void setsubject(String subject) {
        this.subject = subject;
    }

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }

    public String getmassage() {
        return massage;
    }

    public void setmassage(String massage) {
        this.massage = massage;
    }


    
    
    
}
