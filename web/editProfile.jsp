<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema | Edit Profile</title>
        <link rel="stylesheet" href="styles/editProfile.css">
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
        <div class="bg">
            <div class="sign-in">
                <div class="sign-in-form">
                    <h1>Edit Profile</h1>
                    <form action="index.html" method="POST">
                        <div class="name">
                            <input type="text" name="fname" value="Jhon" placeholder="First Name" disabled>
                            <input type="text" name="lname" value="Doe" placeholder="Last Name" disabled>
                        </div>
                        <br>
                        <input type="email" name="email" value="jhondoe@mail.com" placeholder="Email" disabled>
                        <br>
                        <input type="tel" name="mobile" value="076 123 1234" placeholder="Mobile">
                    </form>
                    <p>
                        <a href="editProfile.jsp"><input type="button" value="Update Profile" class="sign-in-btn"></a>
                        <br>
                        <a href="changePassword.jsp"><input type="button" value="Change Password" class="del-acc-btn"></a>
                    </p>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
    </body>
</html>
