package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class editProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>ABC Cinema | Edit Profile</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/editProfile.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/navbar.jsp", out, false);
      out.write("\n");
      out.write("        ");

            
            String user = (String) session.getAttribute("user");
            
            if (user == null) {
                response.sendRedirect(request.getContextPath() + "/signIn.jsp");
            }

            Connection conn = null;
            Statement stmnt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                stmnt = conn.createStatement();

                String qry = "select * from user where user_email = '"+user+"'";

                rs = stmnt.executeQuery(qry);
                
                session.setAttribute("userEmail", rs.getString(4));

                while (rs.next()) {
        
      out.write("\n");
      out.write("        <div class=\"bg\">\n");
      out.write("            <div class=\"sign-in\">\n");
      out.write("                <div class=\"sign-in-form\">\n");
      out.write("                    <h1>Edit Profile</h1>\n");
      out.write("                    <form action=\"index.html\" method=\"POST\">\n");
      out.write("                        <div class=\"name\">\n");
      out.write("                            <input type=\"text\" name=\"fname\" value=\"");
      out.print(rs.getString(2));
      out.write("\" placeholder=\"First Name\" disabled>\n");
      out.write("                            <input type=\"text\" name=\"lname\" value=\"");
      out.print(rs.getString(3));
      out.write("\" placeholder=\"Last Name\" disabled>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <input type=\"email\" name=\"email\" value=\"");
      out.print(rs.getString(4));
      out.write("\" placeholder=\"Email\" disabled>\n");
      out.write("                        <br>\n");
      out.write("                        <input type=\"tel\" name=\"mobile\" value=\"");
      out.print(rs.getString(6));
      out.write("\" placeholder=\"Mobile\">\n");
      out.write("                        ");


                                }
                            } catch (Exception e) {
                                out.print(e);
                            }

                        
      out.write("\n");
      out.write("                    </form>\n");
      out.write("                    <section>\n");
      out.write("                        <form action=\"updateProfile\" method=\"POST\">\n");
      out.write("                            <input type=\"submit\" value=\"Update Profile\" class=\"sign-in-btn\">\n");
      out.write("                        </form>\n");
      out.write("                        <a href=\"changePassword.jsp\"><input type=\"button\" value=\"Change Password\" class=\"del-acc-btn\"></a>\n");
      out.write("                    </section>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/footer.jsp", out, false);
      out.write("\n");
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
