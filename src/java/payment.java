
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/payment"})
public class payment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String price = request.getParameter("amount");
        String mobile = request.getParameter("phone");
        String[] checkboxValues = request.getParameterValues("items");
        String checkboxString = String.join(",", checkboxValues);

        PrintWriter out = response.getWriter();

        Connection con = null;
        Statement st = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
            st = con.createStatement();

            String qry = "insert into payment(user_email, user_mobile, user_seats, user_amount) values('" + email + "','" + mobile + "','" + checkboxString + "','" + price + "')";
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

                String body = request.getParameter("message");
                message.setText(body);

                Transport.send(message);

                out.print("Email sent succesfull");
                response.sendRedirect(request.getContextPath() + "/seatBookingHistory.jsp");
            } catch (MessagingException e) {
                throw new RuntimeException(e);
            }
//            response.sendRedirect(request.getContextPath() + "/seatBooking.jsp");

        } catch (Exception e) {
            out.print(e);
        }

    }
}
