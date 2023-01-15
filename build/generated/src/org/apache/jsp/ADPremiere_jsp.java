package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

public final class ADPremiere_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/ADPremiere.css\">\n");
      out.write("        <title>ABC Cinema | Premiere</title>\n");
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
      out.write("            <div class=\"watch-movie\">\n");
      out.write("                <form>\n");
      out.write("                    <input type=\"text\" name=\"search\" placeholder=\"Search..\">\n");
      out.write("                </form>\n");
      out.write("                <div class=\"movies\">\n");
      out.write("                    <a href=\"ADPremiere-edit.jsp\"><i id=\"add-btn\" class=\"fa-solid fa-circle-plus\"></i></a>\n");
      out.write("                        ");

                            Connection conn = null;
                            Statement stmnt = null;
                            ResultSet rs = null;

                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                                stmnt = conn.createStatement();

                                String qry = "select * from premiering_movies";

                                rs = stmnt.executeQuery(qry);

                                while (rs.next()) {
                                
                                
                        
      out.write("\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        ");
 session.setAttribute("preMovie", rs.getString(2)); 
      out.write("\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/");
      out.print(rs.getString(8));
      out.write("\" alt=\"banner\">\n");
      out.write("                        <h2>");
      out.print(rs.getString(2));
      out.write("</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>");
      out.print(rs.getString(3));
      out.write("</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"premiere edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    ");


                            }
                        } catch (Exception e) {
                            out.print(e);
                        }

                    
      out.write("\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/Batman.jpg\" alt=\"banner\">\n");
      out.write("                        <h2>The Batman</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>Tuesday</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"ADPremiere-edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/after ever happy.jpg\" alt=\"banner\">\n");
      out.write("                        <h2>After Ever Happy</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>Yesterday</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"ADPremiere-edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/black adam.jpg\" alt=\"banner\">\n");
      out.write("                        <h2>Black Adam</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>Yesterday</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"ADPremiere-edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/smile.jpg\" alt=\"banner\">\n");
      out.write("                        <h2>Smile</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>Yesterday</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"ADPremiere-edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/babylon.jpg\" alt=\"banner\">\n");
      out.write("                        <h2>Babylon</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>Yesterday</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"ADPremiere-edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/Jurasic world.jpg\" alt=\"banner\">\n");
      out.write("                        <h2>Jurasic World</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>Yesterday</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"ADPremiere-edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/thor.jpg\" alt=\"banner\">\n");
      out.write("                        <h2>Thor</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>Yesterday</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"ADPremiere-edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/violent night.jpg\" alt=\"banner\">\n");
      out.write("                        <h2>Violent Night</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>Yesterday</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"ADPremiere-edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"movie\">\n");
      out.write("                        <img class=\"banner-01\" src=\"assets/dhokha.jpg\" alt=\"banner\">\n");
      out.write("                        <h2>Dhokha</h2>\n");
      out.write("                        <div class=\"actions\">\n");
      out.write("                            <h6>Yesterday</h6>\n");
      out.write("                            <div class=\"icons\">\n");
      out.write("                                <a href=\"ADPremiere-edit.jsp\"><i class=\"far fa-edit\"></i></a>\n");
      out.write("                                <i class=\"fas fa-trash\"></i>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://kit.fontawesome.com/608ce7278f.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
