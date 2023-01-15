
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
import java.sql.*;

@WebServlet(urlPatterns = {"/passwordUpdate"})
public class passwordUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        String user = (String) session.getAttribute("user");

        PrintWriter out = response.getWriter();

        Connection con = null;
        Statement st = null;
        ResultSet rs = null;

        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmNewPassword = request.getParameter("confirmNewPassword");

        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
            st = con.createStatement();

            String qry = "select user_password from user where user_email = '" + user + "'";

            rs = st.executeQuery(qry);

            rs.next();
            String userPassword = rs.getString(1);

            if (newPassword.equals(confirmNewPassword) && userPassword.equals(oldPassword)) {
                String qry2 = "update user set user_password ='" + newPassword + "' where user_email ='" + user + "' and user_password = '" + userPassword + "'";
                st.executeUpdate(qry2);
                out.print("Data Updated Successfully!");
                response.sendRedirect(request.getContextPath() + "/profile.jsp");
            } else if (!newPassword.equals(confirmNewPassword)) {
                out.print("New password doesn't match!");
            } else if (!oldPassword.equals(userPassword)) {
                out.print("Incorrect old password!");
            }

        } catch (Exception e) {
            out.print(e);
        }
    }
}
