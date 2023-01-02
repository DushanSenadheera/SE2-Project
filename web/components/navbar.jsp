<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="icon" type="image/x-icon" href="assets/favicon.png">
        <title>JSP Page</title>
        <link rel="stylesheet" href="components/styles/navbar.css">
    </head>
    <body>
        <header>
            <nav>
                <div class="mobile-nav-header">
                    <a href="index.jsp"><img src="assets/logo header.png" alt="header logo" class="logo"/></a>
                    <img src="assets/menu.png" alt="mobile menu" id="mobile-menu">
                </div>
                <ul id="nav-links">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="index.jsp#explore">Explore</a></li>
                    <li><a href="index.jsp#about">About</a></li>
                    <li><a href="index.jsp#contact">Contact</a></li>
                    <li><a href="signIn.jsp"><button class="sign-up-btn" id="sign-up-btn-nav">Sign Up</button></a></li>
                </ul>
                <a href="signIn.jsp"><button class="sign-up-btn" id="sign-up-btn">Sign Up</button></a>
            </nav>
        </header>
        <script src="scripts/navbarToggler.js"></script> 
    </body>
</html>
