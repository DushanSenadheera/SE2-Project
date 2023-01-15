package org.apache.jsp.styles;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class upcoming_0020edit_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/ADPremiere-edit.css\">\n");
      out.write("        <title>ABC Cinema | Premiere Edit</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String user = (String) session.getAttribute("admin");

            if (user == null) {
                response.sendRedirect(request.getContextPath() + "/ADLogin.jsp");
            }
        
      out.write("\n");
      out.write("        <header>\n");
      out.write("            <nav>\n");
      out.write("                <img src=\"assets/logo header.png\" alt=\"header logo\" class=\"logo\">\n");
      out.write("                <ul>\n");
      out.write("                    <div class=\"nav-right\">\n");
      out.write("                        <li>\n");
      out.write("                            <h5>Admin</h5>\n");
      out.write("                        </li>\n");
      out.write("                    </div>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"container-main\">\n");
      out.write("            <div class=\"side-menu\">\n");
      out.write("                <menu>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"ADdashboard.jsp\">\n");
      out.write("                                <p>Dashboard</p>\n");
      out.write("                            </a></li>\n");
      out.write("                        <li><a class=\"active\" href=\"ADPremiere.jsp\">\n");
      out.write("                                <p>Premiere</p>\n");
      out.write("                            </a></li>\n");
      out.write("                        <li><a href=\"ADbookingjsp.jsp\">\n");
      out.write("                                <p>Bookings</p>\n");
      out.write("                            </a></li>\n");
      out.write("                        <li><a href=\"ADUpcoming.jsp\">\n");
      out.write("                                <p>Upcoming</p>\n");
      out.write("                            </a></li>\n");
      out.write("                        <li><a href=\"#\">\n");
      out.write("                                <p>Log-out</p>\n");
      out.write("                            </a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </menu>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"movie-edit\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    ");

                        String upMovie = (String) session.getAttribute("upMovie");

                        Connection conn = null;
                        Statement stmnt = null;
                        ResultSet rs = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                            stmnt = conn.createStatement();

                            String qry = "select * from upcoming_movies where movie_name = '" + upMovie + "'";

                            rs = stmnt.executeQuery(qry);

                            while (rs.next()) {


                    
      out.write("\n");
      out.write("                    <form action=\"\" method=\"POST\" enctype=\"multipart/form-data\">\n");
      out.write("                        <label for=\"mname\">\n");
      out.write("                            <h3>Movie Name</h3>\n");
      out.write("                        </label>\n");
      out.write("                        <input type=\"text\"  name=\"moviename\" placeholder=\"Movie name here\" value=\"");
      out.print(rs.getString(2));
      out.write("\"><br>\n");
      out.write("                        <label for=\"mdirector\">\n");
      out.write("                            <h3>Director name</h3>\n");
      out.write("                        </label>\n");
      out.write("                        <input type=\"text\"  name=\"moviedirector\" placeholder=\"Director name\" value=\"");
      out.print(rs.getString(3));
      out.write("\"><br>\n");
      out.write("                        <label for=\"cast\">\n");
      out.write("                            <h3>Cast</h3>\n");
      out.write("                        </label>\n");
      out.write("                        <input type=\"text\" id=\"cast\" name=\"cast\" placeholder=\"Actor 01, Actor 02, Actor 03 ...\" value=\"");
      out.print(rs.getString(5));
      out.write("\">\n");
      out.write("                        <label for=\"movie details\">\n");
      out.write("                            <h3>Movie Details</h3>\n");
      out.write("                            <textarea id=\"m-details\" name=\"m-details\" placeholder=\"Description here\" style=\"height:200px\" > ");
      out.print(rs.getString(2));
      out.write("</textarea>\n");
      out.write("                        </label>\n");
      out.write("                        <label for=\"video\">\n");
      out.write("                            <h3>Link</h3>\n");
      out.write("                        </label>\n");
      out.write("                        <input type=\"text\" id=\"video\" name=\"video\" placeholder=\"URL\" value=\"");
      out.print(rs.getString(9));
      out.write("\"><br>\n");
      out.write("                        <div class=\"set-price\">\n");
      out.write("                            <label for=\"price\">\n");
      out.write("                                <h3>Set Price</h3>\n");
      out.write("                                <input type=\"text\" id=\"price01\" name=\"gold\" placeholder=\"Gold\" value=\"");
      out.print(rs.getString(10));
      out.write("\">\n");
      out.write("                                <input type=\"text\" id=\"price02\" name=\"silver\" placeholder=\"Silver\" value=\"");
      out.print(rs.getString(11));
      out.write("\">\n");
      out.write("                                <input type=\"text\" id=\"price03\" name=\"bronze\" placeholder=\"Bronze\" value=\"");
      out.print(rs.getString(12));
      out.write("\">\n");
      out.write("                            </label> \n");
      out.write("                        </div>\n");
      out.write("                        ");


                                }
                            } catch (Exception e) {
                                out.print(e);
                            }

                        
      out.write("\n");
      out.write("                        <input type=\"submit\" value=\"Submit\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}