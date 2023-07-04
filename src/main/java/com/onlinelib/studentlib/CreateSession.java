/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlinelib.studentlib;

import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Ritwick
 */
@WebServlet("/CreateSession")
public class CreateSession extends HttpServlet {

    Database db;
    private String fname = null;
    private String lname = null;
    private String email = null;
    private String password = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out= response.getWriter();
            response.setContentType("text/html;charset=UTF-8");
            db = new Database();
            String login = request.getParameter("login");

            if(login!=null){
                 email = (String) request.getParameter("email");
                 password = (String) request.getParameter("pword");
                 String hashed = BCrypt.hashpw(password, BCrypt.gensalt(12));
                 ResultSet rs = db.check(email);
                 rs.next();
                System.out.println(BCrypt.checkpw(password,rs.getString("password") ));
                  if(BCrypt.checkpw(password, rs.getString("password"))){
                      HttpSession session = request.getSession();
                      session.setAttribute("name", rs.getString("fname"));
                      session.setAttribute("email", rs.getString("email"));
                      request.getRequestDispatcher("checkout.jsp").include(request, response);
                  }
          }else {

                fname = (String) request.getParameter("fname");
                password = (String) request.getParameter("pword");
                lname = (String) request.getParameter("lname");
                email = (String) request.getParameter("email");
                String hashed = BCrypt.hashpw(password, BCrypt.gensalt(12));
                ResultSet rs = db.check(email);
                if (rs.next()) {
                    out.println("<script>");
                    out.println("alert('PLEASE USE DIFFERENT EMAIL AND PASSWORD')");
                    out.println("</script>");
                    request.getRequestDispatcher("studentsignup.html").include(request, response);
                } else {
                    UserSignUp obj = new UserSignUp(fname, lname, email, hashed);
                    db.createUser(obj);
                    out.println("<script>");
                    out.println("alert('You have successfully Registered!!')");
                    out.println("</script>");
                    request.getRequestDispatcher("index.html").include(request, response);

                }
            }

       } catch (ClassNotFoundException ex) {
            Logger.getLogger(CreateSession.class.getName()).log(Level.SEVERE, null, ex);
       } catch (SQLException ex) {
            Logger.getLogger(CreateSession.class.getName()).log(Level.SEVERE, null, ex);
       }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
