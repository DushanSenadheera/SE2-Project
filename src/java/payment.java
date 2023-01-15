import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
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
        
        out.print("working");
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema","root","");
            st = con.createStatement();
            
            String qry = "insert into payment(user_email, user_mobile, user_seats, user_amount) values('"+email+"','"+mobile+"','"+checkboxString+"','"+price+"')";
            st.executeUpdate(qry);
            response.sendRedirect(request.getContextPath() + "/seatBooking.jsp");
            
        }
        catch(Exception e){
            out.print(e);
        }
        
    }
}
