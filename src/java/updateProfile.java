
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
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/updateProfile"})
public class updateProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        String user = (String) session.getAttribute("user");

        PrintWriter out = response.getWriter();

        Connection con = null;
        Statement st = null;

        String mobile = request.getParameter("mobile");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
            st = con.createStatement();

            String qry = "update user set user_mobile='" + mobile + "' where user_email='" + user + "'";
            st.executeUpdate(qry);
            out.print("Data Updated Successfully");
            response.sendRedirect(request.getContextPath() + "/profile.jsp");

        } catch (Exception e) {
            out.print(e);
        }

    }
}
