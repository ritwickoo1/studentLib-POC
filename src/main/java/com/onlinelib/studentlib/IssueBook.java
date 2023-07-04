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
 * @author Ritwick
 */
@WebServlet("/IssueBook")
public class IssueBook extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
        try {
            int i = 0;
            Database db = new Database();
            ResultSet res = db.getMaxId();
            if(res==null){
                i += 0;
            }else{
                res.next();
                long count = res.getLong(1);
                i+=(int) count+1; 
            }
           
            String bno = "B100"+i;
            String bname = request.getParameter("name");
            String cat = request.getParameter("cat");
            HttpSession session = request.getSession(false);
            String email = (String) session.getAttribute("email");
            //out.print(email);
            BookDetail bd = new BookDetail(bname, bno, cat,email);

            db.issueBook(bd);
             request.getRequestDispatcher("checkout.jsp").include(request, response);
           
        } catch (SQLException ex) {
            Logger.getLogger(IssueBook.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

   
}
