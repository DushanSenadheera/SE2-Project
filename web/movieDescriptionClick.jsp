<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/movieDescription.css">
        <title>ABC Cinema | Black Adam</title>
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
        <%
            Connection conn = null;
            Statement stmnt = null;
            ResultSet rs = null;

        String movieName = request.getParameter("movieName");
             
                
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                stmnt = conn.createStatement();

                
               String qry = "select * from premiering_movies where movie_name = '" + movieName + "' ";
                            rs = stmnt.executeQuery(qry);
                

                while (rs.next()) {


        %>
        
        <div class="background-poster">
            <form action="seatBooking.jsp">
        <input type="hidden" id="movieName" name="movieName" value="<%=rs.getString(2)%>">
            <img src="uploads/<%=rs.getString(8)%>" />
            <div class="movie-description">
                <div class="title">
                    <h2><%=rs.getString(2)%></h2>
                    <h4>By <%=rs.getString(3)%></h4>
                </div>
                <div class="catergories">

                    <%
                      String category = rs.getString(4);
                      String[] catArray = category.split(",");
                      
                          
                          
                          for(int i = 0; i<catArray.length; i++){
                              %><span><%= catArray[i] %></span><%
                          }
                      
                    %>
                </div>
                <div class="duration">
                    <i class="far fa-clock"></i> 
                    <p>2h 30min</p>
                </div>
                <div class="cast">
                    <h4>Cast</h4>
                    <p><%=rs.getString(5)%></p>
                </div>
                <div class="movie-details">
                    <p>
                        <%=rs.getString(6)%>
                    </p>
                </div>
                <div class="cta-btns">

                    <div id="overlay" onclick="off()">
                        <iframe id="trailer" width="560" height="315" src="<%=rs.getString(9)%>" ></iframe>
                    </div>

                    <div style="padding:20px">
                        <input type="submit" value="Buy Ticket" class="btn-buy">
                        <input type="button" value="Watch Trailer" class="btn-trailer" onclick="on()">
                    </div>
                </div>
            </div>
           </form>
        </div>
        
        
        <%

                }
            } catch (Exception e) {
                out.print(e);
            }

        %>
<!--        <div class="premiering" id="explore">
            <h3>Premiere Now</h3>
            <div class="premiering-movies">
                <a href="movieDescription.jsp">
                    <div class="movie">
                        <img src="assets/Poster.png" alt="">
                        <h4>Movie Name</h4>
                        <p>Movie Description</p>
                    </div>
                </a>
                <div class="movie">
                    <img src="assets/bp.jpg" alt="">
                    <h4>Movie Name</h4>
                    <p>Movie Description</p>
                </div>
                <div class="movie">
                    <img src="assets/tg.jpg" alt="">
                    <h4>Movie Name</h4>
                    <p>Movie Description</p>
                </div>
                <div class="movie">
                    <img src="assets/Poster.png" alt="">
                    <h4>Movie Name</h4>
                    <p>Movie Description</p>
                </div>
            </div>
        </div>-->
        <jsp:include page="components/footer.jsp" />
        <script src="https://kit.fontawesome.com/56016c02ef.js" crossorigin="anonymous"></script>
        <script src="scripts/navbarToggler.js"></script> 
        <script src="scripts/movieTrailerPlay.js"></script> 
    </body>
</html>

