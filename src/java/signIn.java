import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(urlPatterns = {"/signIn"})
public class signIn extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();

        Connection conn = null;
        Statement stmnt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
            stmnt = conn.createStatement();

            String qry = "select * from user";
           
            rs = stmnt.executeQuery(qry);
           
            String userName = request.getParameter("email");
            String password = request.getParameter("password");

            while (rs.next()) {
                String eml = rs.getString(4);
                String psw = rs.getString(5);

                if (eml.equals(userName) && psw.equals(password)) {
                    response.sendRedirect(request.getContextPath() + "/index.jsp");
                } else {
                    out.println("Invalid access");
                }
            }

        } catch (Exception e) {
            out.print(e);
        }
    }
}
