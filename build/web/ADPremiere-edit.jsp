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
        <%
            String user = (String) session.getAttribute("admin");

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
                        <li><a href="index.jsp">
                                <p>Log-out</p>
                            </a></li>
                    </ul>
                </menu>
            </div>
            <div class="movie-edit">
                <div class="container">
                    <form action="premierMovie" method="POST" enctype="multipart/form-data">
                        <label for="mname">
                            <h3>Movie Name</h3>
                        </label>
                        <input type="text"  name="moviename" placeholder="Movie name here" value=""><br>
                        <label for="mdirector">
                            <h3>Director name</h3>
                        </label>
                        <input type="text"  name="moviedirector" placeholder="Director name" value=""><br>
                        <label for="mname">
                            <h3>Movie Categary</h3>
                        </label>
                        <div class="movie-category">
                            <input type="checkbox"  name="movie" value="Action & Adventure">
                            <label for="movie"> Action & Adventure </label><br>
                            <input type="checkbox"  name="movie" value="Comedy">
                            <label for="movie"> Comedy </label><br>
                            <input type="checkbox"  name="movie" value="Horror">
                            <label for="movie"> Horror </label><br>
                            <input type="checkbox"  name="movie" value="Drama ">
                            <label for="movie"> Drama </label><br>
                            <input type="checkbox"  name="movie" value="Fantasy">
                            <label for="movie"> Fantasy </label><br>
                            <input type="checkbox"  name="movie" value="Sci-Fi">
                            <label for="movie"> Sci-Fi </label><br>
                            <input type="checkbox"  name="movie" value="Romantic">
                            <label for="movie"> Romantic </label><br>
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
                        
                        <label for="poster-img">
                            <h3>Upload a background</h3>
                            <input type="file" id="poster-upload" name="poster-img">
                        </label>
                        <label for="video">
                            <h3>Link</h3>
                        </label>
                        <input type="text" id="video" name="video" placeholder="URL"><br>
                        <div class="set-price">
                            <label for="price">
                                <h3>Set Price</h3>
                                <input type="number" id="price01" name="gold" placeholder="Gold">
                                <input type="number" id="price02" name="silver" placeholder="Silver">
                                <input type="number" id="price03" name="bronze" placeholder="Bronze">
                            </label>
                        </div>
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>