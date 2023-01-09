package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.json.JSONObject;
import java.sql.*;
import com.google.gson.Gson;

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
            int mynum = 23;

//            Gson gson = new Gson();
//            String json = gson.toJson(mynum);
            String value = "some value";

            JSONObject json = new JSONObject();
            json.put("key", value);

            String jsonString = json.toString();

            request.setAttribute("jsonString", jsonString);


        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            const ctx = document.getElementById('myChart');\n");
      out.write("\n");
      out.write("//            fetch('ADdashboard.jsp')\n");
      out.write("//                    .then(response => response.json())\n");
      out.write("//                    .then(json => {\n");
      out.write("//                        console.log(json);\n");
      out.write("//                    });\n");
      out.write("\n");
      out.write("let jsonString = '");
      out.print( request.getAttribute("jsonString") );
      out.write("';\n");
      out.write("let json = JSON.parse(jsonString);\n");
      out.write("let value = json.key;\n");
      out.write(" console.log(json);\n");
      out.write("\n");
      out.write("            new Chart(ctx, {\n");
      out.write("                type: 'line',\n");
      out.write("                data: {\n");
      out.write("                    labels: ['red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],\n");
      out.write("                    datasets: [{\n");
      out.write("                            label: '# of Votes',\n");
      out.write("                            data: [mynum, 19, 3, 5, 2, 3],\n");
      out.write("                            borderWidth: 1\n");
      out.write("                        }]\n");
      out.write("                },\n");
      out.write("                options: {\n");
      out.write("                    scales: {\n");
      out.write("                        y: {\n");
      out.write("                            beginAtZero: true\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        ");
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
      out.write("                            <h5>");
out.println(json);
      out.write("</h5>\n");
      out.write("                        </li>\n");
      out.write("                    </div>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
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
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"details\">\n");
      out.write("                <a href=\"ADPremiere-edit.jsp\"><i id=\"add-btn\" class=\"fa-solid fa-circle-plus\"></i></a>\n");
      out.write("                <div class=\"sqrs\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"sqr-01\">\n");
      out.write("                        <h1>12</h1>\n");
      out.write("                        <h5>Movies</h5>\n");
      out.write("                        <button class=\"see-more-btn-01\">\n");
      out.write("                            <p>see more...</p>\n");
      out.write("                        </button>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"sqr-01\">\n");
      out.write("                        <h1>20</h1>\n");
      out.write("                        <h5>Users</h5>\n");
      out.write("                        <button class=\"see-more-btn-01\">\n");
      out.write("                            <p>see more...</p>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"sqr-01\">\n");
      out.write("                        <h1>120</h1>\n");
      out.write("                        <h5>Bookings</h5>\n");
      out.write("                        <button class=\"see-more-btn-01\">\n");
      out.write("                            <p>see more...</p>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"banner-management\">\n");
      out.write("                    <h6>Banner Management</h6>\n");
      out.write("                    <label for=\"b&m\">\n");
      out.write("                        <input type=\"file\" id=\"banner-upload\" name=\"b&m\" placeholder=\"Upload a banner\">\n");
      out.write("                    </label>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <canvas id=\"myChart\"></canvas>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/chart.js\"></script>\n");
      out.write("\n");
      out.write("\n");
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
