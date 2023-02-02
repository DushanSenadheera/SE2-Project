package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.json.JSONObject;
import java.sql.*;

public final class ADdashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"styles/ADdashboard.css\">\n");
      out.write("        <title>ABC Cinema | Dashboard</title>\n");
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
      out.write("                        <li><a class=\"active\" href=\"ADdashboard.jsp\">\n");
      out.write("                                <p>Dashboard</p>\n");
      out.write("                            </a></li>\n");
      out.write("                        <li><a href=\"ADPremiere.jsp\">\n");
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
      out.write("            <div class=\"details\">\n");
      out.write("                ");

                    int value = 21;

                    JSONObject json = new JSONObject();
                    json.put("key", value);

                    String jsonString = json.toString();

                    request.setAttribute("jsonString", jsonString);

                
      out.write("\n");
      out.write("                <div>\n");
      out.write("                    <canvas id=\"myChart\"></canvas>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/chart.js\"></script>\n");
      out.write("        <script src=\"scripts/charts.js\"></script> \n");
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
