package com.onlinelib.studentlib;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ritwick
 */
public class BookDetail {
    private  String bname;
    private  String bno;
    private  String bcat;
    private String email;

    public BookDetail(String bname, String bno, String bcat, String email) {
        this.bname = bname;
        this.bno = bno;
        this.bcat = bcat;
        this.email = email;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getBno() {
        return bno;
    }

    public void setBno(String bno) {
        this.bno = bno;
    }

    public String getBcat() {
        return bcat;
    }

    public void setBcat(String bcat) {
        this.bcat = bcat;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}   