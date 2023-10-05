/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author mummykiara
 */
public class cart {
    private String userid;
    private String proid;
    private Integer quatily;

    public cart(String userid, String proid, Integer quatily) {
        this.userid = userid;
        this.proid = proid;
        this.quatily = quatily;
    }

    
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getProid() {
        return proid;
    }

    public void setProid(String proid) {
        this.proid = proid;
    }

    public Integer getQuatily() {
        return quatily;
    }

    public void setQuatily(Integer quatily) {
        this.quatily = quatily;
    }

    @Override
    public String toString() {
        return "cart{" + "userid=" + userid + ", proid=" + proid + ", quatily=" + quatily + '}';
    }
    
    
    
}
