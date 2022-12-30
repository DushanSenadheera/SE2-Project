<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="dashboard.css">
        <title>Dashboard</title>
    </head>
    <body>
        
        <!--header section-->
        <header>
            <nav>
                <div class="nav-header">
                    <img src="logo header.png" alt="header logo" class="logo" />

                    <img src="bell.png" alt="notification" class="notification">
                    <img src="Admin-pro-pic.png" alt="admin" class="admin-pro-pic">
                    <h5>@admin_name</h5>
                </div>
            </nav>
        </header>


        <!--dashboard-->
        <div class="side-dashboard">
            <div class="mon-income-analysis">
                <img src="Analysis.png" alt="monthly-income" class="monthly-income">
            </div>

            <!--site details-->
            <div class="details">
                <div class="sqr-01">
                    <h1>12</h1>
                    <h5>Movies</h5>

                    <div class="sqr-01">
                        <h1>120</h1>
                        <h5>Users</h5>

                        <div class="sqr-01">
                            <h1>20</h1>
                            <h5>Bookings</h5>

                        </div>
                        <button class="see-more-btn-01">
                            <h2>see more</h2>
                        </button>
                    </div>
                    <button class="see-more-btn-01">
                        <h2>see more</h2>
                    </button>

                </div>
                <button class="see-more-btn-01">
                    <h2>see more</h2>
                </button>

            </div>
        </div>



        <!--side menu bar-->
        <menu>
            <div class="side-menu">
                <ul class="side-menu-links">
                    <li><a class="active" href="#"><i class="fas fa-clock"></i>Dashboard</a></li>
                    <li><a href="premiere.html">Premiere</a></li>
                    <li><a href="booking.html">Bookings</a></li>
                    <li><a href="#">Upcoming</a></li>
                    <li><a href="message.html">Messages</a></li>
                    <li><a href="#">Log-out</a></li>
                </ul>
            </div>
        </menu>
    </body>
</html>
