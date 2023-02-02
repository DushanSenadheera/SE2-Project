<%-- 
    Document   : ADbookingjsp
    Created on : Jan 3, 2023, 12:20:04 PM
    Author     : User
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/ADbooking.css">
        <title>ABC Cinema | Booking</title>
    </head>
    <body>
        <%
            String user = (String) session.getAttribute("admin");
            
            if(user == null)
            {
                response.sendRedirect(request.getContextPath() + "/ADLogin.jsp");
            }
        %>
        <header>
            <nav>
                <img src="assets/logo header.png" alt="header logo" class="logo">
                <ul>
                    <div class="nav-right">
                        <li>
                            <h5>Admin</h5>
                        </li>
                    </div>
                </ul>
            </nav>
        </header>
        <div class="container-main">
            <div class="side-menu">
                <menu>
                    <ul>
                        <li><a href="ADdashboard.jsp">
                                <p>Dashboard</p>
                            </a></li>
                        <li><a href="ADPremiere.jsp">
                                <p>Premiere</p>
                            </a></li>
                        <li><a class="active" href="ADbookingjsp.jsp">
                                <p>Bookings</p>
                            </a></li>
                        <li><a href="ADUpcoming.jsp">
                                <p>Upcoming</p>
                            </a></li>
                        <li><a href="index.jsp">
                                <p>Log-out</p>
                            </a></li>
                    </ul>
                </menu>
            </div>

            <div class="booking">
                <div class="booking-details">
                    <table>
                        <tr>
                            <th>Movie</th>
                            <th>User</th>
                            <th>Mobile</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Seats</th>
                            <th>Amount</th>
                        </tr>
                        <%
                        Connection conn = null;
                        Statement stmnt = null;
                        ResultSet rs = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                            stmnt = conn.createStatement();

                            String qry = "select * from payment";

                            rs = stmnt.executeQuery(qry);

                            while (rs.next()) {
                    %>
                        
                        <tr>
                            <td><%=rs.getString(8)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                        </tr>
                        <%
                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    %>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
