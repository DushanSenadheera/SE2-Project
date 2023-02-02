package net.codejava;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.paypal.base.rest.PayPalRESTException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@WebServlet("/authorize_payment")
public class AuthorizePaymentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public AuthorizePaymentServlet() {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String product = request.getParameter("product");
        String subtotal = request.getParameter("subtotal");
        String shipping = request.getParameter("shipping");
        String tax = request.getParameter("tax");
        String total = request.getParameter("total");
        
        PrintWriter out = response.getWriter();
        java.sql.Connection con = null;
        Statement st = null;
        
        
            String movieName = request.getParameter("product");
            String price = request.getParameter("total");
            String seats = request.getParameter("items");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String date = request.getParameter("first_name");
            String time = request.getParameter("last_name");
        
         try{
         Class.forName("com.mysql.jdbc.Driver");
            con = (java.sql.Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
            st = con.createStatement();

            String qry = "insert into payment(user_email, user_mobile, user_seats, user_amount, date, time, movieName) values('" + email + "','" + phone + "','" + seats + "','" + price + "', '"+date+"', '"+time+"', '"+movieName+"')";
            st.executeUpdate(qry);
         }
         catch (Exception e) {
            out.print(e);
        }
         
        
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

                String body = "You have succesfully booked the "+seats+" seats for "+movieName+" movie at "+time+" on "+date;
                message.setText(body);

                Transport.send(message);

                out.print("Email sent succesfull");
            } catch (MessagingException e) {
                throw new RuntimeException(e);
            }

        OrderDetail orderDetail = new OrderDetail(product, subtotal, shipping, tax, total);

        try {
            PaymentServices paymentServices = new PaymentServices();
            String approvalLink = paymentServices.authorizePayment(orderDetail);

            response.sendRedirect(approvalLink);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

}
