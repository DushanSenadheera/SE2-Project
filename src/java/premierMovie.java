
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
import java.sql.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.InputStream;
import static java.lang.System.out;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

@MultipartConfig
@WebServlet(urlPatterns = {"/premierMovie"})
public class premierMovie extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String movieName = request.getParameter("moviename");
        String movieDirector = request.getParameter("moviedirector");
        
        String[] checkboxValues = request.getParameterValues("movie");
        String checkboxString = String.join(",", checkboxValues);
        
        String movieCast = request.getParameter("cast");
        String movieDetails = request.getParameter("m-details");
        
        Part filePart = request.getPart("banner-img");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        InputStream fileContent = filePart.getInputStream();
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        File file = new File(uploadPath + File.separator + fileName);
        try (InputStream input = fileContent) {
            Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        }
        
        Part filePart2 = request.getPart("poster-img");
        String fileName2 = Paths.get(filePart2.getSubmittedFileName()).getFileName().toString();
        InputStream fileContent2 = filePart2.getInputStream();
        String uploadPath2 = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir2 = new File(uploadPath2);
        if (!uploadDir2.exists()) {
            uploadDir2.mkdir();
        }
        File file2 = new File(uploadPath2 + File.separator + fileName2);
        try (InputStream input = fileContent2) {
            Files.copy(input, file2.toPath(), StandardCopyOption.REPLACE_EXISTING);
        }
        
        String movieLink = request.getParameter("video");
        
        int movieGold = Integer.parseInt(request.getParameter("gold"));
        int movieSilver = Integer.parseInt(request.getParameter("silver"));
        int movieBronze = Integer.parseInt(request.getParameter("bronze"));

        PrintWriter out = response.getWriter();

        Connection con = null;
        Statement st = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
            st = con.createStatement();

            String qry = "insert into premiering_movies(movie_name,movie_director,movie_category,movie_cast,movie_details,movie_banner,movie_poster,movie_link,movie_gold,movie_silver,movie_bronze) values('" + movieName + "','" + movieDirector + "','" + checkboxString + "','" + movieCast + "','" + movieDetails + "','" + fileName + "','" + fileName2 + "','" + movieLink + "','" + movieGold + "','" + movieSilver + "','" + movieBronze + "')";
            st.executeUpdate(qry);
            
            out.print("Data Inserted Successfully");
            response.sendRedirect("ADPremiere.jsp");

        } catch (Exception e) {
            out.print(e); 
        }

    }

}
