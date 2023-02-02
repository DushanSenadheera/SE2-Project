<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/profile.css">
        <title>ABC Cinema | Profile</title>
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
        <%
            String user = (String) session.getAttribute("user");
            
            
if (user == null) {
                response.sendRedirect(request.getContextPath() + "/signIn.jsp");
            }

            Connection conn = null;
            Statement stmnt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                stmnt = conn.createStatement();

                String qry = "select * from user where user_email = '"+user+"'";

                rs = stmnt.executeQuery(qry);

                while (rs.next()) {
        %>

        <div class="bg">
            <div class="sign-in">
                <div class="sign-in-form">
                    <h1>Profile</h1>
                    <form>
                        <div class="name">
                            <input type="text" name="fname" value="<%=rs.getString(2)%>" placeholder="First Name" disabled>
                            <input type="text" name="lname" value="<%=rs.getString(3)%>" placeholder="Last Name" disabled>
                        </div>
                        <br>
                        <input type="email" name="email" value="<%=rs.getString(4)%>" placeholder="Email" disabled>
                        <br>
                        <input type="tel" name="mobile" value="<%=rs.getString(6)%>" placeholder="Mobile" disabled>
                        <%

                                }
                            } catch (Exception e) {
                                out.print(e);
                            }

                        %>
                    </form>
                    <section>
                        <a href="editProfile.jsp"><input type="submit" value="Profile Settings" class="sign-in-btn"></a>
                        <br> 
                                                <br> 
                        <a href="seatBookingHistory.jsp"><input type="submit" value="Seat Booking History" class="sign-in-btn"></a>
                        <br>
                                                <br> 
                        <form action="deleteAccount" method="POST">
                            <input type="submit" value="Delete Account" class="del-acc-btn">
                        </form> 
                    </section>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
    </body>
</html>
