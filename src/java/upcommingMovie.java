
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
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

@MultipartConfig
@WebServlet(urlPatterns = {"/upcommingMovie"})
public class upcommingMovie extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String upmovieName = request.getParameter("moviename");
        String upmovieDirector = request.getParameter("moviedirector");
        
        String[] checkboxValues = request.getParameterValues("movie");
        String checkboxString = String.join(",", checkboxValues);
        
        String upmovieCast = request.getParameter("cast");
        String upmovieDetails = request.getParameter("m-details");
        
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
        
        String upmovieLink = request.getParameter("video");

        PrintWriter out = response.getWriter();

        Connection con = null;
        Statement st = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
            st = con.createStatement();

            String qry = "insert into upcomming_movies(upmovie_name,upmovie_director,upmovie_category,upmovie_cast,upmovie_details,upmovie_banner,upmovie_poster,upmovie_link) values('" + upmovieName + "','" + upmovieDirector + "','" + checkboxString + "','" + upmovieCast + "','" + upmovieDetails + "','" + fileName + "','" + fileName2 + "','" + upmovieLink + "')";
            st.executeUpdate(qry);

            out.print("Data Inserted Successfully");
            response.sendRedirect(request.getContextPath() + "/ADUpcoming.jsp");

        } catch (Exception e) {
            out.print(e);
        }
    }
}
