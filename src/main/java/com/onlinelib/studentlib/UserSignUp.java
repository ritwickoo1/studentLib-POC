/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlinelib.studentlib;

import java.sql.SQLException;

public class UserSignUp {
    private String fname;
    private String lname;
    private String email;
    private String pass;

    public UserSignUp(String fname, String lname, String email, String pass) throws SQLException, ClassNotFoundException {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.pass = pass;
        
     
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
}
