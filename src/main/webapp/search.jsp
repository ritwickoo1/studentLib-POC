<%-- 
    Document   : search.jsp
    Created on : Nov 12, 2018, 6:36:57 PM
    Author     : Ritwick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if(session.getAttribute("name")==null)
{
%><jsp:forward page="studentlogin.jsp"/><%
}
%>
<!DOCTYPE html>
<html>
    <head>
    <title>Search books</title>
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="Resources/css/searchstyle.css">
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
                    <h1>Search book</h1> 
                    <ul class="main-nav">
                        <li><a href="checkout.jsp">Home</a></li>
                        <li><a href="search.jsp">Search</a></li>
                        <li><a href="LogoutServlet"  class="btn btn-borrow"style="border-bottom:none;padding: 10px;margin-left: 10px;text-align: center" onclick="logout()">LOGOUT</a></li>   
                    </ul>
                
                </div>
            
            </nav>
            </header>
        <section class=" search-form ">
            <div class="row">
                <div class="box">
                    <div class="head-box">
                        <p class="long-copy"> New Feature: You can now embed MagicBook Library books on your website!</p>
                    </div>
                    <h2>Classic Books</h2>
                    <div class="head-box2">
                         <ul class="books-showcase clearfix">
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b1.jpg" width="130px" height="320px" alt="Web development">
                                </figure>
                            </li>
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b2.jpg" width="130px" height="320px" alt="Data structure and algorithm.">
                                </figure>
                            </li>
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b3.jpg" width="130px" height="320px" alt="JDBC and Servlet">
                                </figure>
                            </li>
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b4.jpg" width="130px" height="320px"alt="Korean Novel">
                                </figure>
                            </li>
                        </ul>
                        <form action="IssueBook" method="get">
                        <ul class="books-showcase clearfix">
                            <li>
                                    
                                     <a class="btn btn-borrow" name="" href="IssueBook?name=eaahnika&cat=classic">BORROW</a>
                                
                            </li>
                            <li>
                                
                                   <a class="btn btn-borrow"href="IssueBook?name=The evolving self&cat=classic">BORROW</a>
                              
                            </li>
                            <li>
                               
                                   <a class="btn btn-borrow" href="IssueBook?name=The lion,the witch and the wardrobe&cat=classic">BORROW</a>
                              
                            </li>
                            <li>
                                
                                    <a class="btn btn-borrow" href="IssueBook?name=The Wealth of networks&cat=classic">BORROW</a>
                                
                            </li>
                        </ul>
                       </form>
                    </div>
                     <h2>Romance</h2>
                    <div class="head-box2">
                         <ul class="books-showcase clearfix">
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b5.jpg" width="130px" height="320px" alt="Web development">
                                </figure>
                            </li>
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b6.jpg" width="130px" height="320px" alt="Data structure and algorithm.">
                                </figure>
                            </li>
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b7.jpg" width="130px" height="320px" alt="JDBC and Servlet">
                                </figure>
                            </li>
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b8.jpg" width="130px" height="320px"alt="Korean Novel">
                                </figure>
                            </li>
                        </ul>
                        <ul class="books-showcase clearfix">
                            <li>
                                    
                                     <a class="btn btn-borrow" href="IssueBook?name=Burning with passion&cat=romance">BORROW</a>
                                
                            </li>
                            <li>
                                
                                   <a class="btn btn-borrow" href="IssueBook?name=Lady Serena Surrender&cat=romance">BORROW</a>
                              
                            </li>
                            <li>
                               
                                   <a class="btn btn-borrow" href="IssueBook?name=Beginner Romanian&cat=romance">BORROW</a>
                              
                            </li>
                            <li>
                                
                                    <a class="btn btn-borrow" href="IssueBook?name=On Raptures Wing&cat=romance">BORROW</a>
                                
                            </li>
                        </ul>
                       
                    </div>
                      <h2>Thriller</h2>
                    <div class="head-box2">
                         <ul class="books-showcase clearfix">
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b9.jpg" width="130px" height="320px" alt="Web development">
                                </figure>
                            </li>
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b10.jpg" width="130px" height="320px" alt="Data structure and algorithm.">
                                </figure>
                            </li>
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b11.jpg" width="130px" height="320px" alt="JDBC and Servlet">
                                </figure>
                            </li>
                            <li>
                                <figure class="book-photo">
                                    <img src="Resources/css/images/b12.jpg" width="130px" height="320px"alt="Korean Novel">
                                </figure>
                            </li>
                        </ul>
                        <ul class="books-showcase clearfix">
                            <li>
                                    
                                     <a class="btn btn-borrow" href="IssueBook?name=Tom Clancy's&cat=thriller">BORROW</a>
                                
                            </li>
                            <li>
                                
                                   <a class="btn btn-borrow" href="IssueBook?name=The mediterranean caper&cat=thriller">BORROW</a>
                              
                            </li>
                            <li>
                               
                                   <a class="btn btn-borrow" href="IssueBook?name=Solo&cat=thriller">BORROW</a>
                              
                            </li>
                            <li>
                                
                                    <a class="btn btn-borrow" href="IssueBook?name=The sum of all fear&cat=thrilller">BORROW</a>
                                
                            </li>
                        </ul>
                       
                    </div>
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