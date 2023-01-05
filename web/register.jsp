<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/register.css">
        <title>ABC Cinema | Register</title>
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
        <div class="bg">
            <div class="sign-in">
                <div class="sign-in-form">
                    <h1>Register</h1>
                    <form action="register" method="POST">
                        <div class="name">
                            <input type="text" name="fname" placeholder="First Name" required>
                            <input type="text" name="lname" placeholder="Last Name" required>
                        </div>
                        <br>
                        <input type="email" name="email" placeholder="Email" required>
                        <br>
                        <input type="password" name="password" placeholder="Password" required>
                        <br>
                        <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
                        <br>
                        <input type="tel" name="mobile" placeholder="Mobile" required>
                        <br>
                        <input type="submit" value="Register" class="sign-in-btn">
                    </form>
                    <p>
                        Do you have an account?
                        <br>
                        <a href="signIn.jsp">Sign In</a> from here
                    </p>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
    </body>
</html>
