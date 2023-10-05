/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelHien;

/**
 *
 * @author PC
 */
public class image {
    private String imageID;
    private String path;
    private String id;

    public image() {
    }

    public image(String imageID, String path, String id) {
        this.imageID = imageID;
        this.path = path;
        this.id = id;
    }

    

    public String getImageID() {
        return imageID;
    }

    public void setImageID(String imageID) {
        this.imageID = imageID;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
}
