<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>


<%
    String email = request.getParameter("email");
    String movieName = request.getParameter("movieName");
    String date = request.getParameter("first_name");
    String time = request.getParameter("last_name");
    String price = request.getParameter("amount");
    int no = Integer.parseInt(request.getParameter("amount"));
    String mobile = request.getParameter("phone");
    String[] checkboxValues = request.getParameterValues("items");
    String checkboxString = String.join(",", checkboxValues);
%>


        <html>
            <head>
                <title></title>
                <link rel="stylesheet" href="styles/payment.css">
            </head>
            <body>
                
                <% 
    
    String merchant_secret = "MzI0NDY2NTIxOTMxNTU2MDk0Mjg4NjM4MjMxMzMyODcyNjg2ODU=";
    
    Connection con = null;
    Statement st = null;

    

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
        st = con.createStatement();

        String qry = "insert into payment(user_email, user_mobile, user_seats, user_amount, date, time, movieName) values('" + email + "','" + mobile + "','" + checkboxString + "','" + price + "', '"+date+"', '"+time+"', '"+movieName+"')";
        st.executeUpdate(qry);  
        
        
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session2;
        session2 = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("dcsenadheera777@gmail.com", "lvtkrolbrtfujcfu");
            }
        });

        try {
            Message message = new MimeMessage(session2);
            
            String from = request.getParameter("email");
            message.setFrom(new InternetAddress(from));
            
            String to = "dcsenadheera777@gmail.com";
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            
            String subject = "ABC Cinema | Seat Booking";
            message.setSubject(subject);
            
            String body = "You have succesfully booked "+checkboxString+" seats for "+movieName+" movie on "+date+" at "+time;
            message.setText(body);

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }    
        

    } catch (Exception e) {
        out.print(e);
    }
%>
                
                <form method="post" action="https://sandbox.payhere.lk/pay/checkout" name="paymentform" class="paymentStyle" >   
                        <input type="hidden" name="merchant_id" value="1221630">   
                        <input type="hidden" name="return_url" value="http://localhost:8080/SE2_Project/seatBookingHistory.jsp">
                        <input type="hidden" name="cancel_url" value="http://localhost:8080/SE2_Project/seatBookingHistory.jsp">
                        <input type="hidden" name="notify_url" value="http://localhost:8080/SE2_Project/seatBookingHistory.jsp">  
                        <input type="text" name="order_id" value="" class="display-none">
                        <input type="text" name="items" value="<%= checkboxString %>" id="seatInfo">
                        <input type="text" name="currency" value="LKR" class="display-none">
                        <input type="text" name="amount" value="<%= no %>" >  
                        <input type="text" name="first_name" value="" class="display-none">
                        <input type="text" name="last_name" value="" class="display-none">
                        <input type="text" name="email" value="<%= email %>" class="display-none">
                        <input type="text" name="phone" value="<%= mobile %>" class="display-none"></br>
                        <input type="text" name="address" value="" class="display-none">
                        <input type="text" name="city" value="" class="display-none">
                        <input type="hidden" name="country" value="Sri Lanka"></br>
                        <input type="submit" value="Checkout" class="payhere-payment">   
                    </form>     
                        <script src="scripts/Payhere.js"></script> 
            </body>
        </html>
         






