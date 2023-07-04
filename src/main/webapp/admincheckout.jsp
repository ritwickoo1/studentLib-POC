<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.onlinelib.studentlib.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% if(session.getAttribute("name")==null)
{
%><jsp:forward page="adminlogin.html"/><%
}
%>
<html>
    <head>
    <title>Admin Login</title>
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="Resources/css/admincheckoutstyle.css">
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
                        <li><a href="admincheckout.jsp">Home</a></li>
                        
                        <li><a href="LogoutServlet" class="btn btn-borrow" style="border-bottom:none" onclick="logout()">LOGOUT</a></li>
                       
                    </ul>
                
                </div>
            
            </nav>
            </header>
        <section class=" checkout-form ">
           <div class="row">
               <div class="box">
                   <center>
                       <h2>Dashboard</h2>
               <a href="userdetail.jsp" style="border-bottom: none;">
                   <img src="Resources/css/images/users.png" width="200px" height="200px"></a>    
                <a href="booksdetail.jsp" style="border-bottom: none;text-align: center"><img src="Resources/css/images/bookuser.jpg" width="200px" height="200px"></a>   
                   </center>
                </div>
               
           </div>
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