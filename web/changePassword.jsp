<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema | Edit Profile</title>
        <link rel="stylesheet" href="styles/changePassword.css">
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
        <div class="bg">
            <div class="sign-in">
                <div class="sign-in-form">
                    <h1>Change Password</h1>
                    <form action="index.html" method="POST">
                        <input type="password" name="password" placeholder="Old Password" required>
                        <br>
                        <input type="password" name="password" placeholder="New Password" required>
                        <br>
                        <input type="password" name="password" placeholder="Confirm New Password" required>
                    </form>
                    <p>
                        <a href=""><input type="button" value="Update Password" class="sign-in-btn"></a>
                    </p>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
    </body>
</html>
