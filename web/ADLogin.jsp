<%-- 
    Document   : ADLogin
    Created on : Jan 3, 2023, 2:59:40 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema | Admin Login </title>
        <link rel="stylesheet" href="styles/ADLogin.css">
    </head>
    <body>
        <div class="bg">
            <div class="sign-in">
                <div class="sign-in-form">
                    <h1>Administration</h1>
                    <form action="ADdashboard.jsp" method="POST">
                        <input type="text" name="email" placeholder="User Name" required>
                        <br>
                        <input type="password" name="password" placeholder="Password" required>
                        <br>
                        <input type="submit" value="Sign In" class="sign-in-btn">
                    </form>
                   
                </div>
            </div>
        </div>
    </body>
</html>
