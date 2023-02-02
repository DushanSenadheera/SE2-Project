
<%@page import="java.math.BigInteger"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.security.MessageDigest" %>
<%@page import="org.apache.commons.codec.digest.DigestUtils" %>
<%@page import="org.jsoup.Jsoup" %>
<%@page import="org.jsoup.nodes.Document" %>
<%@page import="org.jsoup.nodes.Element" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/seatBooking.css">
        <title>ABC Cinema | Seat Booking</title>
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
          <%
            String user = (String) session.getAttribute("user");

            if (user == null) {
                response.sendRedirect(request.getContextPath() + "/signIn.jsp");
            }
        %>
        
        <div class="content">
            <div class="movie-details">
                <%
                        Connection conn = null;
                        Statement stmnt = null;
                        ResultSet rs = null;
                        
                        String movieName = request.getParameter("movieName");
                        String date = request.getParameter("date");
                        String time = request.getParameter("time");

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                            stmnt = conn.createStatement();

                            String qry = "select * from premiering_movies where movie_name = '" + movieName + "'";
                           

                            rs = stmnt.executeQuery(qry);
//                         

                            while (rs.next()) {
                    %>
                <div class="movie">
                    <img src="uploads/<%=rs.getString(7)%>" alt="">
                    <section>
                        <h2><%=rs.getString(2)%></h2>
                        <h6>By <%=rs.getString(3)%></h6>
                        <br>
                        <p class="catergories"> 
                            <%
                      String category = rs.getString(4);
                      String[] catArray = category.split(",");
                      
                          
                          
                          for(int i = 0; i<catArray.length; i++){
                              %><span><%= catArray[i] %></span><%
                          }
                      
                    %>
                        </p>
                        <br>
                        <h3>Cast</h3>
                        <p class="cast"><%=rs.getString(5)%></p>
                        <br>
                        <p><%=rs.getString(6)%></p>
                        </section>
                </div>  
            </div>
                    
            <div class="seat-booking">
                <div class="container">
                    <div class="seat-layout">
                        <div class="screen">Screen this way</div>
                        
                        <div class="row">
                            <div id="A1" class="seat" onclick="setSeat('A1'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A1</div>
                            <div id="A2" class="seat" onclick="setSeat('A2'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A2</div>
                            <div id="A3" class="seat" onclick="setSeat('A3'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A3</div>
                            <div id="A4" class="seat" onclick="setSeat('A4'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A4</div>
                            <div id="A5" class="seat" onclick="setSeat('A5'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A5</div>
                            <div id="A6" class="seat" onclick="setSeat('A6'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A6</div>
                            <div id="A7" class="seat" onclick="setSeat('A7'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A7</div>
                            <div id="A8" class="seat" onclick="setSeat('A8'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A8</div>
                            <div id="A9" class="seat" onclick="setSeat('A9'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A9</div>
                            <div id="A10" class="seat" onclick="setSeat('A10'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >A10</div>
                        </div>
                        <div class="row">
                            <div id="B1" class="seat" onclick="setSeat('B1'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B1</div>
                            <div id="B2" class="seat" onclick="setSeat('B2'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B2</div>
                            <div id="B3" class="seat" onclick="setSeat('B3'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B3</div>
                            <div id="B4" class="seat" onclick="setSeat('B4'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B4</div>
                            <div id="B5" class="seat" onclick="setSeat('B5'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B5</div>
                            <div id="B6" class="seat" onclick="setSeat('B6'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B6</div>
                            <div id="B7" class="seat" onclick="setSeat('B7'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B7</div>
                            <div id="B8" class="seat" onclick="setSeat('B8'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B8</div>
                            <div id="B9" class="seat" onclick="setSeat('B9'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B9</div>
                            <div id="B10" class="seat" onclick="setSeat('B10'); showSeats(); seatPrice(<%=rs.getString(12)%>);" >B10</div>
                        </div>
                        <br>
                        <div class="row">
                            <div id="C1" class="seat" onclick="setSeat('C1'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C1</div>
                            <div id="C2" class="seat" onclick="setSeat('C2'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C2</div>
                            <div id="C3" class="seat" onclick="setSeat('C3'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C3</div>
                            <div id="C4" class="seat" onclick="setSeat('C4'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C4</div>
                            <div id="C5" class="seat" onclick="setSeat('C5'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C5</div>
                            <div id="C6" class="seat" onclick="setSeat('C6'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C6</div>
                            <div id="C7" class="seat" onclick="setSeat('C7'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C7</div>
                            <div id="C8" class="seat" onclick="setSeat('C8'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C8</div>
                            <div id="C9" class="seat" onclick="setSeat('C9'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C9</div>
                            <div id="C10" class="seat" onclick="setSeat('C10'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >C10</div>
                        </div>
                        <div class="row">
                            <div id="D1" class="seat" onclick="setSeat('D1'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D1</div>
                            <div id="D2" class="seat" onclick="setSeat('D2'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D2</div>
                            <div id="D3" class="seat" onclick="setSeat('D3'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D3</div>
                            <div id="D4" class="seat" onclick="setSeat('D4'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D4</div>
                            <div id="D5" class="seat" onclick="setSeat('D5'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D5</div>
                            <div id="D6" class="seat" onclick="setSeat('D6'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D6</div>
                            <div id="D7" class="seat" onclick="setSeat('D7'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D7</div>
                            <div id="D8" class="seat" onclick="setSeat('D8'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D8</div>
                            <div id="D9" class="seat" onclick="setSeat('D9'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D9</div>
                            <div id="D10" class="seat" onclick="setSeat('D10'); showSeats(); seatPrice(<%=rs.getString(11)%>);" >D10</div>
                        </div>
                        <br>
                        <div class="row">
                            <div id="E1" class="seat" onclick="setSeat('E1'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E1</div>
                            <div id="E2" class="seat" onclick="setSeat('E2'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E2</div>
                            <div id="E3" class="seat" onclick="setSeat('E3'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E3</div>
                            <div id="E4" class="seat" onclick="setSeat('E4'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E4</div>
                            <div id="E5" class="seat" onclick="setSeat('E5'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E5</div>
                            <div id="E6" class="seat" onclick="setSeat('E6'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E6</div>
                            <div id="E7" class="seat" onclick="setSeat('E7'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E7</div>
                            <div id="E8" class="seat" onclick="setSeat('E8'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E8</div>
                            <div id="E9" class="seat" onclick="setSeat('E9'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E9</div>
                            <div id="E10" class="seat" onclick="setSeat('E10'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >E10</div>
                        </div>
                        <div class="row">
                            <div id="F1" class="seat" onclick="setSeat('F1'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F1</div>
                            <div id="F2" class="seat" onclick="setSeat('F2'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F2</div>
                            <div id="F3" class="seat" onclick="setSeat('F3'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F3</div>
                            <div id="F4" class="seat" onclick="setSeat('F4'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F4</div>
                            <div id="F5" class="seat" onclick="setSeat('F5'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F5</div>
                            <div id="F6" class="seat" onclick="setSeat('F6'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F6</div>
                            <div id="F7" class="seat" onclick="setSeat('F7'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F7</div>
                            <div id="F8" class="seat" onclick="setSeat('F8'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F8</div>
                            <div id="F9" class="seat" onclick="setSeat('F9'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F9</div>
                            <div id="F10" class="seat" onclick="setSeat('F10'); showSeats(); seatPrice(<%=rs.getString(10)%>);" >F10</div>
                        </div>
                    
                  <%
                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    %>
                        <div class="guide">
                            <section>
                                <div class="seat-available"></div>
                                <p>Available</p>
                            </section>
                            <section>
                                <div class="seat-sold"></div>
                                <p>Sold</p>
                            </section>
                            <section>
                                <div class="seat-selected"></div>
                                <p>Selected</p>
                            </section>
                        </div>
                    </div>
                </div>
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                            stmnt = conn.createStatement();

                            String qry2 = "select * from payment where movieName = '" + movieName + "' and date = '" + date + "' and time = '" + time + "'";

                            rs = stmnt.executeQuery(qry2);

                            while (rs.next()) {

                                String seats = rs.getString(4);
                                String[] seatArray = seats.split(",");

                                for (int i = 0; i < seatArray.length; i++) {
                                    %><span class="bookedSeats"><%= seatArray[i]%></span><%
                                    }

                                }
                            } catch (Exception e) {
                                out.print(e);
                            }


                    %>
                <div class="payment">
                    <div>
                         <span><input type="text" name="seatID" value="" id="seat-info"  disabled /></span>
                         <span>Total Price = LKR <input type="text" name="total" value="" id="total-titcket-priceDisplay"  disabled /></span>
                    </div>
                      <%
                        

                        try {
                          
                            String qry = "select * from user where user_email = '" + user + "' ";

                            rs = stmnt.executeQuery(qry);

                            while (rs.next()) {
                    %>
                    <form method="post" action="authorize_payment" class="formStyle">   
                        <input type="hidden" name="product" value="<%= movieName %>" />  
                        <input type="hidden" name="subtotal" value="0" />
                        <input type="hidden" name="shipping" value="0" />
                        <input type="hidden" name="total" value="" id="totaltitcketprice" />
                        <input type="hidden" name="tax" value="0" />
                        <input type="text" name="items" value="" id="seatInfo" class="display-none">
                        <input type="text" name="amount" id="totaltitcketprice" value="" class="display-none">  
                        <input type="text" name="first_name" value="<%= date %>" class="display-none">
                        <input type="text" name="last_name" value="<%= time %>" class="display-none">
                        <input type="text" name="email" value="<%=rs.getString(4)%>" class="display-none">
                        <input type="text" name="phone" value="<%=rs.getString(6)%>" class="display-none"></br>
                        <input type="submit" value="Checkout" class="payhere-payment">   
                    </form> 
                      <%
                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    %>
                </div>
            </div>
        </div>
         <div id="snackbar"><i class="fas fa-exclamation-circle"></i> Please select correct seats count!</div>
        <jsp:include page="components/footer.jsp" />
        <script src="scripts/seat.js"></script> 
        <script src="https://kit.fontawesome.com/56016c02ef.js" crossorigin="anonymous"></script>
    </body>
</html>
