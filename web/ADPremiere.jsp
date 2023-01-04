<%-- 
    Document   : ADPremiere
    Created on : Jan 3, 2023, 12:41:53 PM
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
        <link rel="stylesheet" href="styles/ADPremiere.css">
        <title>ABC Cinema | Premiere</title>
    </head>
    <body>
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
                        <li><a class="active" href="ADPremiere.jsp">
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

            <div class="watch-movie">

                <form>
                    <input type="text" name="search" placeholder="Search..">
                </form>
                <div class="movies">
                    <a href="ADPremiere-edit.jsp"><i id="add-btn" class="fa-solid fa-circle-plus"></i></a>
                    <div class="movie">
                        <img class="banner-01" src="assets/avatar.jpg" alt="banner">
                        <h2>Avatar 2</h2>
                        <div class="actions">
                            <h6>Yesterday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                    <div class="movie">
                        <img class="banner-01" src="assets/Batman.jpg" alt="banner">
                        <h2>The Batman</h2>
                        <div class="actions">
                            <h6>Tuesday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                    <div class="movie">
                        <img class="banner-01" src="assets/after ever happy.jpg" alt="banner">
                        <h2>After Ever Happy</h2>
                        <div class="actions">
                            <h6>Yesterday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                    <div class="movie">
                        <img class="banner-01" src="assets/black adam.jpg" alt="banner">
                        <h2>Black Adam</h2>
                        <div class="actions">
                            <h6>Yesterday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                    <div class="movie">
                        <img class="banner-01" src="assets/smile.jpg" alt="banner">
                        <h2>Smile</h2>
                        <div class="actions">
                            <h6>Yesterday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                    <div class="movie">
                        <img class="banner-01" src="assets/babylon.jpg" alt="banner">
                        <h2>Babylon</h2>
                        <div class="actions">
                            <h6>Yesterday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                    <div class="movie">
                        <img class="banner-01" src="assets/Jurasic world.jpg" alt="banner">
                        <h2>Jurasic World</h2>
                        <div class="actions">
                            <h6>Yesterday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                    <div class="movie">
                        <img class="banner-01" src="assets/thor.jpg" alt="banner">
                        <h2>Thor</h2>
                        <div class="actions">
                            <h6>Yesterday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                    <div class="movie">
                        <img class="banner-01" src="assets/violent night.jpg" alt="banner">
                        <h2>Violent Night</h2>
                        <div class="actions">
                            <h6>Yesterday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                    <div class="movie">
                        <img class="banner-01" src="assets/dhokha.jpg" alt="banner">
                        <h2>Dhokha</h2>
                        <div class="actions">
                            <h6>Yesterday</h6>
                            <div class="icons">
                                <a href="ADPremiere-edit.jsp"><i class="far fa-edit"></i></a>
                                <i class="fas fa-trash"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://kit.fontawesome.com/608ce7278f.js" crossorigin="anonymous"></script>
    </body>
</html>
