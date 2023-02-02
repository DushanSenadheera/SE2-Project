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

        String movieNameUp = request.getParameter("movieNameUp");
             
                
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                stmnt = conn.createStatement();

                
               String qry = "select * from upcomming_movies where upmovie_name = '" + movieNameUp + "' ";
                            rs = stmnt.executeQuery(qry);
                

                while (rs.next()) {


        %>
        <div class="background-poster">
            <img src="uploads/<%=rs.getString(8)%>" />
            <div class="movie-description">
                <div class="title">
                    <h1><%=rs.getString(2)%></h1>
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
                        <iframe width="420" height="315" id="trailer"
                                src="<%=rs.getString(9)%>">
                        </iframe>
                    </div>

                    <div style="padding:20px">
                        <button class="btn-trailer" onclick="on()">Watch Trailer</button>
                    </div>
                </div>
            </div>
        </div>
        <%

                }
            } catch (Exception e) {
                out.print(e);
            }

        %>

        <jsp:include page="components/footer.jsp" />
        <script src="https://kit.fontawesome.com/56016c02ef.js" crossorigin="anonymous"></script>
        <script src="scripts/navbarToggler.js"></script> 
        <script src="scripts/movieTrailerPlay.js"></script> 
    </body>
</html>


