<html>
    <head>
    <title>Add new User</title>
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="Resources/css/addnewuserstyle.css">
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
                    <h1>Add new user    </h1> 
<!--                    <img src="Resources/css/images/logo.jpg.png" class="logo" alt="lib logo">-->
                    <ul class="main-nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="search.html">Search</a></li>
                        <li><a href="index.html" class="btn btn-borrow" style="border-bottom:none">LOGOUT</a></li>
                       
                    </ul>
                
                </div>
            
            </nav>
            </header>
        <section class=" checkout-form ">
          <div class="row">
              <div class="box">
                  <center>
                <form action="AddNewUser" method ="post">
                    
                    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">First Name</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="text" name="fname" id="name" placeholder="fname" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">Last Name</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="text" name="lname" id="name" placeholder="lname" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="email">Email</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="email" name="email" id="email" placeholder="email" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="Password">Password</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="password" name="password" id="email" placeholder="password" required>
                        </div>
                    </div>
                    
                    <input type="submit" value="ADD USER" >
                </form>
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
                    Copyright &copy; 2023 by Ritwick Verma. All rights reserved
                </p>
            </div>
        </footer></footer>
    </body>
    
</html>