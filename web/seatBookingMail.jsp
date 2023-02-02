<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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
            
            String body = request.getParameter("message");
            message.setText(body);

            Transport.send(message);

            out.print("Email sent succesfull");
            response.sendRedirect(request.getContextPath() + "/seatBookingHistory.jsp");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }    
        %>
    </body>
</html>
