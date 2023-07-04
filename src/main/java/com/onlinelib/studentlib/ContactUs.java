/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlinelib.studentlib;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lenovo
 */
public class ContactUs extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String findus = request.getParameter("find-us");
            String dropus = request.getParameter("message");
            Database db = new Database();
            db.sendData(name, email, findus, dropus);
        } catch (SQLException ex) {
            Logger.getLogger(ContactUs.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

   
}
