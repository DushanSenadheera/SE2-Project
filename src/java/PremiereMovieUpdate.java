

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

@WebServlet(urlPatterns = {"/PremiereMovieUpdate"})
public class PremiereMovieUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String movieNameID = request.getParameter("movienameID");
        String movieName = request.getParameter("moviename");
        String movieDirector = request.getParameter("moviedirector");
        String movieCast = request.getParameter("cast");
        String movieDetails = request.getParameter("m-details");
        String movieLink = request.getParameter("video");
        String movieGold = request.getParameter("gold");
        String movieSilver = request.getParameter("silver");
        String movieBronze = request.getParameter("bronze");
        
        
        PrintWriter out = response.getWriter();

        Connection con = null;
        Statement st = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
            st = con.createStatement();

            String qry = "update premiering_movies set movie_name = '"+movieName+"' and movie_director = '"+movieDirector+"' and movie_cast = '"+movieCast+"' and movie_details = '"+movieDetails+"' where movie_name = '"+movieNameID+"'";
            st.executeUpdate(qry);
            out.print("Data Updated Successfully");
            response.sendRedirect(request.getContextPath() + "/ADPremiere.jsp");

        } catch (Exception e) {
            out.print(e);
        }

    }
}
