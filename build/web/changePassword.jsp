<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema | Edit Profile</title>
        <link rel="stylesheet" href="styles/changePassword.css">
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
        <%String user = (String) session.getAttribute("user");%>
        <div class="bg">
            <div class="sign-in">
                <div class="sign-in-form">
                    <h1>Change Password</h1>
                    <form action="passwordUpdate" method="POST">
                        <input type="password" name="oldPassword" placeholder="Old Password" required>
                        <br>
                        <input type="password" name="newPassword" placeholder="New Password" required>
                        <br>
                        <input type="password" name="confirmNewPassword" placeholder="Confirm New Password" required>
                        <br>
                        <input type="submit" value="Update Password" class="sign-in-btn">
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
    </body>
</html>
