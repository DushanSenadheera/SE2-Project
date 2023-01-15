<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
                        <li><a href="#">
                                <p>Log-out</p>
                            </a></li>
                    </ul>
                </menu>
            </div>
            <div class="movie-edit">
                <div class="container">
                    <%
                        String movieName = request.getParameter("movieName");

                        Connection conn = null;
                        Statement stmnt = null;
                        ResultSet rs = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                            stmnt = conn.createStatement();

                            String qry = "select * from upcomming_movies where upmovie_name = '" + movieName + "'";

                            rs = stmnt.executeQuery(qry);

                            while (rs.next()) {


                    %>
                    <form action="" method="POST" enctype="multipart/form-data">
                        <label for="mname">
                            <h3>Movie Name</h3>
                        </label>
                        <input type="text"  name="moviename" placeholder="Movie name here" value="<%=rs.getString(2)%>"><br>
                        <label for="mdirector">
                            <h3>Director name</h3>
                        </label>
                        <input type="text"  name="moviedirector" placeholder="Director name" value="<%=rs.getString(3)%>"><br>
                        <label for="cast">
                            <h3>Cast</h3>
                        </label>
                        <input type="text" id="cast" name="cast" placeholder="Actor 01, Actor 02, Actor 03 ..." value="<%=rs.getString(5)%>">
                        <label for="movie details">
                            <h3>Movie Details</h3>
                            <textarea id="m-details" name="m-details" placeholder="Description here" style="height:200px" > <%=rs.getString(2)%></textarea>
                        </label>
                        <label for="video">
                            <h3>Link</h3>
                        </label>
                        <input type="text" id="video" name="video" placeholder="URL" value="<%=rs.getString(9)%>"><br>
                        <%

                                }
                            } catch (Exception e) {
                                out.print(e);
                            }

                        %>
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

