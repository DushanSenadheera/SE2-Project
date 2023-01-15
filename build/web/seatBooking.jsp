<%@page import="java.math.BigInteger"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.security.MessageDigest" %>
<%@page import="org.apache.commons.codec.digest.DigestUtils" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/seatBooking.css">
        <title>JSP Page</title>
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

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                            stmnt = conn.createStatement();

                            String qry = "select * from premiering_movies where movie_name = '" + movieName + "' ";

                            rs = stmnt.executeQuery(qry);

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
                <%
                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    %>
            </div>
            <div class="seat-booking">
                <div class="options">
                    <div class="date">
                        <label for="date">Date</label>
                        <select name="date" id="date">
                            <option value="1">02 Jan</option>
                            <option value="2">03 Jan</option>
                            <option value="3">04 Jan</option>
                            <option value="4">05 Jan</option>
                            <option value="5">06 Jan</option>
                        </select>
                    </div>
                    <div class="time">
                        <label for="time">Time</label>
                        <select name="time" id="time">
                            <option value="1">9.00 AM</option>
                            <option value="2">2.00 PM</option>
                            <option value="3">5.00 PM</option>
                        </select>
                    </div>
                </div>
                <div class="container">
                    <div class="seat-layout">
                        <div class="screen">Screen this way</div>
                        <div class="row">
                            <div id="A1" class="seat" onclick="setSeat('A1'); showSeats(); seatPrice('1300');" >A1</div>
                            <div id="A2" class="seat" onclick="setSeat('A2'); showSeats(); seatPrice(1300);" >A2</div>
                            <div id="A3" class="seat" onclick="setSeat('A3'); showSeats(); seatPrice(1300);" >A3</div>
                            <div id="A4" class="seat" onclick="setSeat('A4'); showSeats(); seatPrice(1300);" >A4</div>
                            <div id="A5" class="seat" onclick="setSeat('A5'); showSeats(); seatPrice(1300);" >A5</div>
                            <div id="A6" class="seat" onclick="setSeat('A6'); showSeats(); seatPrice(1300);" >A6</div>
                            <div id="A7" class="seat" onclick="setSeat('A7'); showSeats(); seatPrice(1300);" >A7</div>
                            <div id="A8" class="seat" onclick="setSeat('A8'); showSeats(); seatPrice(1300);" >A8</div>
                            <div id="A9" class="seat" onclick="setSeat('A9'); showSeats(); seatPrice(1300);" >A9</div>
                            <div id="A10" class="seat" onclick="setSeat('A10'); showSeats(); seatPrice(1300);" >A10</div>
                        </div>
                        <div class="row">
                            <div class="seat">B1</div>
                            <div class="seat">B2</div>
                            <div class="seat">B3</div>
                            <div class="seat">B4</div>
                            <div class="seat">B5</div>
                            <div class="seat">B6</div>
                            <div class="seat">B7</div>
                            <div class="seat">B8</div>
                            <div class="seat">B9</div>
                            <div class="seat">B10</div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="seat">C1</div>
                            <div class="seat">C2</div>
                            <div class="seat">C3</div>
                            <div class="seat">C4</div>
                            <div class="seat">C5</div>
                            <div class="seat">C6</div>
                            <div class="seat">C7</div>
                            <div class="seat">C8</div>
                            <div class="seat">C9</div>
                            <div class="seat">C10</div>
                        </div>
                        <div class="row">
                            <div class="seat">D1</div>
                            <div class="seat">D2</div>
                            <div class="seat">D3</div>
                            <div class="seat">D4</div>
                            <div class="seat">D5</div>
                            <div class="seat">D6</div>
                            <div class="seat">D7</div>
                            <div class="seat">D8</div>
                            <div class="seat">D9</div>
                            <div class="seat">D10</div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="seat">E1</div>
                            <div class="seat">E2</div>
                            <div class="seat">E3</div>
                            <div class="seat">E4</div>
                            <div class="seat">E5</div>
                            <div class="seat">E6</div>
                            <div class="seat">E7</div>
                            <div class="seat">E8</div>
                            <div class="seat">E9</div>
                            <div class="seat">E10</div>
                        </div>
                        <div class="row">
                            <div class="seat">F1</div>
                            <div class="seat">F2</div>
                            <div class="seat">F3</div>
                            <div class="seat">F4</div>
                            <div class="seat">F5</div>
                            <div class="seat">F6</div>
                            <div class="seat">F7</div>
                            <div class="seat">F8</div>
                            <div class="seat">F9</div>
                            <div class="seat">F10</div>
                        </div>
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
                    <form method="post" action="https://sandbox.payhere.lk/pay/checkout">   
                        <input type="hidden" name="merchant_id" value="1221630">   
                        <input type="hidden" name="return_url" value="http://localhost:8080/SE2_Project/index.jsp">
                        <input type="hidden" name="cancel_url" value="">
                        <input type="hidden" name="notify_url" value="http://localhost:8080/SE2_Project/payment.jsp">  
                        <input type="text" name="order_id" value="<%=rs.getString(1)%>" class="display-none">
                        <input type="text" name="items" value="" id="seatInfo">
                        <input type="text" name="currency" value="LKR" class="display-none">
                        <input type="text" name="amount" id="totaltitcketprice" value="" >  
                        <input type="text" name="first_name" value="" class="display-none">
                        <input type="text" name="last_name" value="" class="display-none">
                        <input type="text" name="email" value="<%=rs.getString(4)%>" class="display-none">
                        <input type="text" name="phone" value="<%=rs.getString(6)%>" class="display-none"></br>
                        <input type="text" name="address" value="" class="display-none">
                        <input type="text" name="city" value="" class="display-none">
                        <input type="hidden" name="country" value="Sri Lanka"></br>
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
