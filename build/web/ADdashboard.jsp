<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/ADdashboard.css">
        <title>ABC Cinema | Dashboard</title>
    </head>
    <body>
        <%
            String user = (String) session.getAttribute("admin");
         
            int value = 123;

            JSONObject json = new JSONObject();
            json.put("key", value);

            String jsonString = json.toString();

            request.setAttribute("jsonString", jsonString);

            if (user == null) {
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
                        <li><a class="active" href="ADdashboard.jsp">
                                <p>Dashboard</p>
                            </a></li>
                        <li><a href="ADPremiere.jsp">
                                <p>Premiere</p>
                            </a></li>
                        <li><a href="ADbookingjsp.jsp">
                                <p>Bookings</p>
                            </a></li>
                        <li><a href="ADUpcoming.jsp">
                                <p>Upcoming</p>
                            </a></li>
                        <li><a href="#">
                                <p>Log-out</p>
                            </a></li>
                    </ul>
                </menu>
            </div>
            <div class="details">
                
                <div>
                    <canvas id="myChart"></canvas>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script src="scripts/charts.js"></script> 
        <script src="https://kit.fontawesome.com/608ce7278f.js" crossorigin="anonymous"></script>
    </body>
</html>
