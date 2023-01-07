<%-- 
    Document   : ADdashboard
    Created on : Jan 3, 2023, 12:34:25 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <a href="ADPremiere-edit.jsp"><i id="add-btn" class="fa-solid fa-circle-plus"></i></a>
                <div class="sqrs">

                    <div class="sqr-01">
                        <h1>12</h1>
                        <h5>Movies</h5>
                        <button class="see-more-btn-01">
                            <p>see more...</p>
                        </button>

                    </div>

                    <div class="sqr-01">
                        <h1>20</h1>
                        <h5>Users</h5>
                        <button class="see-more-btn-01">
                            <p>see more...</p>
                        </button>
                    </div>

                    <div class="sqr-01">
                        <h1>120</h1>
                        <h5>Bookings</h5>
                        <button class="see-more-btn-01">
                            <p>see more...</p>
                        </button>
                    </div>
                </div>
                <div class="banner-management">
                    <h6>Banner Management</h6>
                    <label for="b&m">
                        <input type="file" id="banner-upload" name="b&m" placeholder="Upload a banner">
                    </label>
                </div>
            </div>
        </div>

        <script src="https://kit.fontawesome.com/608ce7278f.js" crossorigin="anonymous"></script>
    </body>
</html>
