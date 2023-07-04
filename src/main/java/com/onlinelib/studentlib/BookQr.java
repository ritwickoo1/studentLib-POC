/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.onlinelib.studentlib;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import net.glxn.qrgen.QRCode;
//import net.glxn.qrgen.image.ImageType;

/**
 *
 * @author Ritwick
 */
public class BookQr extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int i =1;
            Database db = new Database();
            HttpSession session = request.getSession(false);
            String email = (String) session.getAttribute("email");
            String details = "INDEX   \tBOOKNAME\t\t\t   BOOKCAT \n";
            ResultSet res = db.getIssuedBook(email);
            while(res.next()){
                details+=" "+i++;
                details+="\t"+res.getString("BNAME")+"\t "+"  "+res.getString("BCAT")+" "+"\n";
                
            }
            session.setAttribute("qrcode", "true");
//            ByteArrayOutputStream out = QRCode.from(details).to(ImageType.JPG).stream();
//            File f = new File("C:\\Users\\lenovo\\Documents\\NetBeansProjects\\RituLibrary\\web\\Resources\\css\\images\\bill.jpg");
//            FileOutputStream fos = new FileOutputStream(f);
//            fos.write(out.toByteArray());
//            fos.flush();
            request.getRequestDispatcher("checkout.jsp").include(request,response);
        } catch (SQLException ex) {
            Logger.getLogger(BookQr.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
