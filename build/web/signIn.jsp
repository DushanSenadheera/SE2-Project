<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/signIn.css">
        <title>ABC Cinema | Sign In</title>
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
        <div class="bg">
            <div class="sign-in">
                <div class="sign-in-form">
                    <h1>Sign In</h1>
                    <form action="signIn" method="POST">
                        <input type="text" name="email" placeholder="Email" required>
                        <br>
                        <input type="password" name="password" placeholder="Password" required>
                        <br>
                        <input type="submit" value="Sign In" class="sign-in-btn">
                    </form>
                    <p>
                        Don't you have an account?
                        <br>
                        <a href="register.jsp">Register</a> from here
                    </p>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
    </body>
</html>
