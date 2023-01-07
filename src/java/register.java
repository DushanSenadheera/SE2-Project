import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String mobile = request.getParameter("mobile");
        
        PrintWriter out = response.getWriter();
        
        Connection con = null;
        Statement st = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema","root","");
            st = con.createStatement();
            
            String qry = "insert into user(user_fname, user_lname, user_email, user_password, user_mobile) values('"+fname+"','"+lname+"','"+email+"','"+password+"','"+mobile+"')";
            st.executeUpdate(qry);
            response.sendRedirect(request.getContextPath() + "/register.jsp");
            
        }
        catch(Exception e){
            out.print(e);
        }
        
    }
}
