<%-- 
    Document   : ADPremiere-edit
    Created on : Jan 3, 2023, 12:54:05 PM
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
        <link rel="stylesheet" href="styles/ADPremiere-edit.css">
        <title>ABC Cinema | Premiere Edit</title>
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

            <div class="movie-edit">
                <div class="container">
                    <form action="">
                        <label for="mname">
                            <h3>Movie Name</h3>
                        </label>
                        <input type="text" id="mname" name="moviename" placeholder="Movie name here"><br>
                        <label for="m-details">
                            <label for="mname">
                                <h3>Movie Categary</h3>
                            </label>
                            <div class="movie-category">
                                <input type="checkbox" id="category1" name="movie" value="">
                                <label for="category1"> Action & Adventure </label><br>
                                <input type="checkbox" id="category2" name="movie" value="">
                                <label for="category2"> Comedy </label><br>
                                <input type="checkbox" id="category3" name="movie" value="">
                                <label for="category3"> Horror </label><br>
                                <input type="checkbox" id="category4" name="movie" value="">
                                <label for="category4"> Thriller </label><br>
                                <input type="checkbox" id="category5" name="movie" value="">
                                <label for="category5"> Fantasy </label><br>
                            </div>
                            <label for="cast">
                                <h3>Cast</h3>
                            </label>
                            <input type="text" id="cast" name="cast" placeholder="Actor 01, Actor 02, Actor 03 ...">
                            <label for="movie details">
                                <h3>Movie Details</h3>
                                <textarea id="m-details" name="m-details" placeholder="Description here" style="height:200px"></textarea>
                            </label>
                            <label for="banner-img">
                                <h3>Upload a banner</h3>
                                <input type="file" id="banner-upload" name="banner-img">
                            </label>
                            <label for="video">
                                <h3>Link</h3>
                            </label>
                            <input type="text" id="video" name="video" placeholder="URL"><br>
                            <div class="set-price">
                                <label for="price">
                                    <h3>Set Price</h3>
                                    <input type="text" id="price01" name="price" placeholder="XXXX">
                                    <input type="text" id="price02" name="price" placeholder="XXXX">
                                    <input type="text" id="price03" name="price" placeholder="ODC(H)">
                                    <input type="text" id="price04" name="price" placeholder="ODC(F)">
                                    <input type="text" id="price05" name="price" placeholder="Box">
                                </label>
                            </div>

                            <input type="submit" value="Cancel" id="Cancel-btn">
                            <input type="submit" value="Submit">
                            </form>
                            </div>
                            </div>
                            </div>

                            </body>
                            </html>
