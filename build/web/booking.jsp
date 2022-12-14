<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema | Admin</title>
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
                <img src="logo header.png" alt="header logo" class="logo">
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
                        <li><a href="../Dashboard/Dashboard.html">
                                <p>Dashboard</p>
                            </a></li>
                        <li><a href="../Premiere/premiere.html">
                                <p>Premiere</p>
                            </a></li>
                        <li><a class="active" href="booking.html">
                                <p>Bookings</p>
                            </a></li>
                        <li><a href="../Upcoming/upcoming.html">
                                <p>Upcoming</p>
                            </a></li>
                        <li><a href="#">
                                <p>Log-out</p>
                            </a></li>
                    </ul>
                </menu>
            </div>

            <div class="booking">
                <div class="booking-details">
                    <table>
                        <tr>
                            <th>User</th>
                            <th>Movie</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Category</th>
                            <th>Seats</th>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        <tr>
                            <td>u_name01</td>
                            <td>Avatar</td>
                            <td>Tue</td>
                            <td>8.00pm</td>
                            <td>ODC</td>
                            <td>12,13,14</td>
                        </tr>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
