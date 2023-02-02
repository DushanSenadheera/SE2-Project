/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

@WebServlet(urlPatterns = {"/movieDelete"})
public class movieDelete extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        String user = (String) session.getAttribute("user");

        PrintWriter out = response.getWriter();
        
        Connection con = null;
        Statement st = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema","root","");
            st = con.createStatement();
            
            String qry = "delete from premiering_movies where movie_name='"+user+"'";
            st.execute(qry);
            out.print("Account Deleted Successfully!");
            session.removeAttribute("user");
            response.sendRedirect(request.getContextPath() + "/ADPremiere.jsp");
            
        }
        catch(Exception e){
            out.print(e);
        }
        
    }

    
}
