

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if(session.getAttribute("name")!=null)
{
%><jsp:forward page="checkout.jsp"/><%
}
%>
<!DOCTYPE html>
<html>
    <head>
    <title>Student Login</title>
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="Resources/css/studentloginStyle.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/Grid.css">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,300,300i,400" rel="stylesheet">
         <link href="https://unpkg.com/ionicons@4.4.2/dist/css/ionicons.min.css" rel="stylesheet">
        <script src="https://unpkg.com/ionicons@4.4.2/dist/ionicons.js"></script>
    </head>
    <body>
            <header>
               
                <nav>
                  <img src="Resources/css/images/logo.jpg.png"/>   
                    
                <div class="nav-box"> 
                    <h1>Student Login</h1> 
                    <ul class="main-nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="search.jsp">Search</a></li>
                       
                       
                    </ul>
                
                </div>
            
            </nav>
            </header>
        <section class=" login-form ">
            <div class="row">
                <form action="CreateSession" method="post">
                    <div class="box">
                        <h2>please login</h2>
                        <div class="row">
                            <input type="email" name="email" id="email" placeholder="Your email" required> 
                        </div>
                        <div class="row">
                            <input type="password" name="pword" id="password" placeholder="password" required> 
                        </div>
                        <div class="row">
                            <input type="checkbox" name="news" id="news" checked>Remember me
                        </div>
                        <div class="row">
                            <input type="submit" name="login" value="LOGIN">
                            <a href="studentsignup.html" class="sign-box">SIGNUP</a>
                            
                        </div>
                    </div>    
                </form>
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
                    Copyright &copy; 2023 by INFOR. All rights reserved
                </p>
            </div>
        </footer></footer>
    </body>
    
</html>
