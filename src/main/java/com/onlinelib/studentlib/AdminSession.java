/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlinelib.studentlib;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lenovo
 */
@WebServlet("/AdminSession")
public class AdminSession extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Database db = new Database();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            ResultSet res = db.getVerify(email,password);
            res.next();
            System.out.println(res.getString("email"));
            if(res.getString("email").equals(email)&& res.getString("password").equals(password))
            {
                HttpSession session = request.getSession();
                session.setAttribute("name", "Admin");
                session.setAttribute("email",res.getString("email") );
                request.getRequestDispatcher("admincheckout.jsp").include(request,response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminSession.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    

}
