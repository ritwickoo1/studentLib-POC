<%-- 
    Document   : checkout
    Created on : Nov 12, 2018, 2:47:44 AM
    Author     : Ritwick
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.onlinelib.studentlib.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% if(session.getAttribute("name")==null)
{
%><jsp:forward page="studentlogin.jsp"/><%
}
%>


<html>
    <head>
    <title>Search books</title>
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="Resources/css/checkoutstyle.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/Grid.css">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400" rel="stylesheet">
         <link href="https://unpkg.com/ionicons@4.4.2/dist/css/ionicons.min.css" rel="stylesheet">
        <script src="https://unpkg.com/ionicons@4.4.2/dist/ionicons.js"></script>
        <script>
            function logout(){
                alert("You are successfully logged out");
            }
        </script>
    </head>
    <body>
            <header>
               
               
                <nav>
                  <img src="Resources/css/images/logo.jpg.png"/>   
                    
                <div class="nav-box"> 
                    <h1><%out.println("Welcome " + session.getAttribute("name")); %></h1> 
                    <ul class="main-nav">
                        <li><a href="checkout.jsp">Home</a></li>
                        <li><a href="search.jsp">Search</a></li>
                        <li><a href="LogoutServlet" class="btn btn-borrow" style="border-bottom:none" onclick="logout()">LOGOUT</a></li>
                       
                    </ul>
                
                </div>
            
            </nav>
            </header>
        <section class=" checkout-form ">
            <form>
           <div class="row">
               <div class="box">
                   <%
                       int i = 0;
                       Database db = new Database();
                       String email = (String) session.getAttribute("email");
                      
                       ResultSet res = db.getIssuedBook(email);
                        if(res!=null){
                      %>
                      
                       <% while(res.next()){%> 
                      <table class="table-deco">
                       <tr>
                           <th><b>INDEX</b></th>
                           <th>BOOKID</th>
                           <th>BOOK NAME</th>
                           <th>BOOK CAT</th>
                           <th>ACTION</th>
                       </tr> 
                       <tr class="table-deco">
                           <td><%=++i%></td>
                           <td><%=res.getString("bno") %></td>
                           <td><%=res.getString("bname") %></td>
                           <td><%=res.getString("bcat") %></td>
                           <td><a href="ReturnBook?bid=<%=res.getString("bno")%>">return</a></td>
                       </tr>
                       
                   </table>
                    <%}}%>
                            
                   <a class="btn btn-borrow" href="search.jsp">ADD BOOK TO YOUR CART</a>
                          
               </div>
                    <a class="qr btn-borrow" href="BookQr" >QR CODE</a>
                    <br><br>
                    <center><img id="billpic" src="Resources/css/images/bill.jpg" download="Resources/css/images/bill.jpg"></center>
           </div>
                    </form>
        </section>
        <footer>
         <footer>
            <div class="row">
                <div class="col span-1-of-2">
                    <ul class="footer-nav">
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">IOS App</a></li>
                        <li><a href="#">Android App</a></li>
                    </ul>
                </div>
                <div class=" col span-1-of-2">
                    <ul class="social-links">
                        <li><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
                        <li><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
                        <li><a href="#"><i class="icon ion-logo-googleplus"></i></a></li>
                        <li><a href="#"><i class="icon ion-logo-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <p>
                    Copyright &copy; 2023 By INFOR. All rights reserved
                </p>
            </div>
        </footer></footer>
    </body>
    
</html>