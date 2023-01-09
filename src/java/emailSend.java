import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.*;

@WebServlet(urlPatterns = {"/emailSend"})
public class emailSend extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session;
        session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("dcsenadheera777@gmail.com", "lvtkrolbrtfujcfu");
            }
        });

        try {
            Message message = new MimeMessage(session);
            
            String from = request.getParameter("email");
            message.setFrom(new InternetAddress(from));
            
            String to = "dcsenadheera777@gmail.com";
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            
            String subject = "ABC Cinema | Customer message";
            message.setSubject(subject);
            
            String body = request.getParameter("message");
            message.setText(body);

            Transport.send(message);

            out.print("Email sent succesfull");
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }
}
