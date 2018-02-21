/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rawit Supatanakorn
 */
public class JobFormModel {
    private int jobid;
    private String name;
    private String picpath;
    private String description;
    private int userId;

    public int getJobid() {
        return jobid;
    }

    public void setJobid(int jobid) {
        this.jobid = jobid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    public void addJob(String name, String picpath,int userId,String description) {
        JobFormModel jfm = new JobFormModel();
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement pstm = con.prepareStatement("insert into job (name,picpath,userId,description) values(?,?,?,?)");
            pstm.setString(1, name);
            pstm.setString(2, picpath);
            pstm.setInt(3, userId);
            pstm.setString(4,description);
            pstm.executeUpdate();
            pstm.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(JobFormModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        JobFormModel job = new JobFormModel();
        job.addJob("Pen from Paper by Ham","ffolk;lm[aokmol2f",1,"Pen made by recycle good for world.");
    }
    
}
