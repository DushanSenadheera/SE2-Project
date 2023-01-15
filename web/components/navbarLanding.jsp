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
        <%
            String user = (String) session.getAttribute("user");
           
        %>
        <header>
            <nav>
                <div class="mobile-nav-header">
                    <a href="#home"><img src="assets/logo header.png" alt="header logo" class="logo"/></a>
                    <img src="assets/menu.png" alt="mobile menu" id="mobile-menu">
                </div>
                <ul id="nav-links">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#explore">Explore</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <%
                    if(user != null){
                        %><li id="user-mobile"><a href="profile.jsp"><i class="far fa-user"></i> <%= user %></a></li><%
                    }
                    else
                    {
                        %><li><a href="signIn.jsp"><button class="sign-up-btn" id="sign-up-btn-nav">Sign In</button></a></li><%
                    }
                    %>
                </ul>
                <%
                    if(user != null)
                    {
                        %><span id="user-web"><a href="profile.jsp"><i class="far fa-user"></i> <%= user %></a></span><%
                    }
                    else
                    {
                        %><a href="signIn.jsp"><button class="sign-up-btn" id="sign-up-btn">Sign In</button></a><%
                    }
                %>
            </nav>
        </header>
        <script src="scripts/navbarToggler.js"></script> 
        <script src="https://kit.fontawesome.com/56016c02ef.js" crossorigin="anonymous"></script>
    </body>
</html>
