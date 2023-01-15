package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.math.BigInteger;
import java.sql.*;
import javax.servlet.http.HttpSession;
import java.security.MessageDigest;
import org.apache.commons.codec.digest.DigestUtils;

public final class seatBooking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/seatBooking.css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/navbar.jsp", out, false);
      out.write("\n");
      out.write("          ");

            String user = (String) session.getAttribute("user");

            if (user == null) {
                response.sendRedirect(request.getContextPath() + "/signIn.jsp");
            }
        
      out.write("\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <div class=\"movie-details\">\n");
      out.write("                ");

                        Connection conn = null;
                        Statement stmnt = null;
                        ResultSet rs = null;
                        
                        String movieName = request.getParameter("movieName");

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                            stmnt = conn.createStatement();

                            String qry = "select * from premiering_movies where movie_name = '" + movieName + "' ";

                            rs = stmnt.executeQuery(qry);

                            while (rs.next()) {
                    
      out.write("\n");
      out.write("                <div class=\"movie\">\n");
      out.write("                    <img src=\"uploads/");
      out.print(rs.getString(7));
      out.write("\" alt=\"\">\n");
      out.write("                    <section>\n");
      out.write("                        <h2>");
      out.print(rs.getString(2));
      out.write("</h2>\n");
      out.write("                        <h6>By ");
      out.print(rs.getString(3));
      out.write("</h6>\n");
      out.write("                        <br>\n");
      out.write("                        <p class=\"catergories\"> \n");
      out.write("                            ");

                      String category = rs.getString(4);
                      String[] catArray = category.split(",");
                      
                          
                          
                          for(int i = 0; i<catArray.length; i++){
                              
      out.write("<span>");
      out.print( catArray[i] );
      out.write("</span>");

                          }
                      
                    
      out.write("\n");
      out.write("                        </p>\n");
      out.write("                        <br>\n");
      out.write("                        <h3>Cast</h3>\n");
      out.write("                        <p class=\"cast\">");
      out.print(rs.getString(5));
      out.write("</p>\n");
      out.write("                        <br>\n");
      out.write("                        <p>");
      out.print(rs.getString(6));
      out.write("</p>\n");
      out.write("                        </section>\n");
      out.write("                </div>  \n");
      out.write("                ");

                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"seat-booking\">\n");
      out.write("                <div class=\"options\">\n");
      out.write("                    <div class=\"date\">\n");
      out.write("                        <label for=\"date\">Date</label>\n");
      out.write("                        <select name=\"date\" id=\"date\">\n");
      out.write("                            <option value=\"1\">02 Jan</option>\n");
      out.write("                            <option value=\"2\">03 Jan</option>\n");
      out.write("                            <option value=\"3\">04 Jan</option>\n");
      out.write("                            <option value=\"4\">05 Jan</option>\n");
      out.write("                            <option value=\"5\">06 Jan</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"time\">\n");
      out.write("                        <label for=\"time\">Time</label>\n");
      out.write("                        <select name=\"time\" id=\"time\">\n");
      out.write("                            <option value=\"1\">9.00 AM</option>\n");
      out.write("                            <option value=\"2\">2.00 PM</option>\n");
      out.write("                            <option value=\"3\">5.00 PM</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"seat-layout\">\n");
      out.write("                        <div class=\"screen\">Screen this way</div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div id=\"A1\" class=\"seat\" onclick=\"setSeat('A1'); showSeats(); seatPrice('1300');\" >A1</div>\n");
      out.write("                            <div id=\"A2\" class=\"seat\" onclick=\"setSeat('A2'); showSeats(); seatPrice(1300);\" >A2</div>\n");
      out.write("                            <div id=\"A3\" class=\"seat\" onclick=\"setSeat('A3'); showSeats(); seatPrice(1300);\" >A3</div>\n");
      out.write("                            <div id=\"A4\" class=\"seat\" onclick=\"setSeat('A4'); showSeats(); seatPrice(1300);\" >A4</div>\n");
      out.write("                            <div id=\"A5\" class=\"seat\" onclick=\"setSeat('A5'); showSeats(); seatPrice(1300);\" >A5</div>\n");
      out.write("                            <div id=\"A6\" class=\"seat\" onclick=\"setSeat('A6'); showSeats(); seatPrice(1300);\" >A6</div>\n");
      out.write("                            <div id=\"A7\" class=\"seat\" onclick=\"setSeat('A7'); showSeats(); seatPrice(1300);\" >A7</div>\n");
      out.write("                            <div id=\"A8\" class=\"seat\" onclick=\"setSeat('A8'); showSeats(); seatPrice(1300);\" >A8</div>\n");
      out.write("                            <div id=\"A9\" class=\"seat\" onclick=\"setSeat('A9'); showSeats(); seatPrice(1300);\" >A9</div>\n");
      out.write("                            <div id=\"A10\" class=\"seat\" onclick=\"setSeat('A10'); showSeats(); seatPrice(1300);\" >A10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"seat\">B1</div>\n");
      out.write("                            <div class=\"seat\">B2</div>\n");
      out.write("                            <div class=\"seat\">B3</div>\n");
      out.write("                            <div class=\"seat\">B4</div>\n");
      out.write("                            <div class=\"seat\">B5</div>\n");
      out.write("                            <div class=\"seat\">B6</div>\n");
      out.write("                            <div class=\"seat\">B7</div>\n");
      out.write("                            <div class=\"seat\">B8</div>\n");
      out.write("                            <div class=\"seat\">B9</div>\n");
      out.write("                            <div class=\"seat\">B10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"seat\">C1</div>\n");
      out.write("                            <div class=\"seat\">C2</div>\n");
      out.write("                            <div class=\"seat\">C3</div>\n");
      out.write("                            <div class=\"seat\">C4</div>\n");
      out.write("                            <div class=\"seat\">C5</div>\n");
      out.write("                            <div class=\"seat\">C6</div>\n");
      out.write("                            <div class=\"seat\">C7</div>\n");
      out.write("                            <div class=\"seat\">C8</div>\n");
      out.write("                            <div class=\"seat\">C9</div>\n");
      out.write("                            <div class=\"seat\">C10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"seat\">D1</div>\n");
      out.write("                            <div class=\"seat\">D2</div>\n");
      out.write("                            <div class=\"seat\">D3</div>\n");
      out.write("                            <div class=\"seat\">D4</div>\n");
      out.write("                            <div class=\"seat\">D5</div>\n");
      out.write("                            <div class=\"seat\">D6</div>\n");
      out.write("                            <div class=\"seat\">D7</div>\n");
      out.write("                            <div class=\"seat\">D8</div>\n");
      out.write("                            <div class=\"seat\">D9</div>\n");
      out.write("                            <div class=\"seat\">D10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"seat\">E1</div>\n");
      out.write("                            <div class=\"seat\">E2</div>\n");
      out.write("                            <div class=\"seat\">E3</div>\n");
      out.write("                            <div class=\"seat\">E4</div>\n");
      out.write("                            <div class=\"seat\">E5</div>\n");
      out.write("                            <div class=\"seat\">E6</div>\n");
      out.write("                            <div class=\"seat\">E7</div>\n");
      out.write("                            <div class=\"seat\">E8</div>\n");
      out.write("                            <div class=\"seat\">E9</div>\n");
      out.write("                            <div class=\"seat\">E10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"seat\">F1</div>\n");
      out.write("                            <div class=\"seat\">F2</div>\n");
      out.write("                            <div class=\"seat\">F3</div>\n");
      out.write("                            <div class=\"seat\">F4</div>\n");
      out.write("                            <div class=\"seat\">F5</div>\n");
      out.write("                            <div class=\"seat\">F6</div>\n");
      out.write("                            <div class=\"seat\">F7</div>\n");
      out.write("                            <div class=\"seat\">F8</div>\n");
      out.write("                            <div class=\"seat\">F9</div>\n");
      out.write("                            <div class=\"seat\">F10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"guide\">\n");
      out.write("                            <section>\n");
      out.write("                                <div class=\"seat-available\"></div>\n");
      out.write("                                <p>Available</p>\n");
      out.write("                            </section>\n");
      out.write("                            <section>\n");
      out.write("                                <div class=\"seat-sold\"></div>\n");
      out.write("                                <p>Sold</p>\n");
      out.write("                            </section>\n");
      out.write("                            <section>\n");
      out.write("                                <div class=\"seat-selected\"></div>\n");
      out.write("                                <p>Selected</p>\n");
      out.write("                            </section>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"payment\">\n");
      out.write("                    <div>\n");
      out.write("                         <span><input type=\"text\" name=\"seatID\" value=\"\" id=\"seat-info\"  disabled /></span>\n");
      out.write("                         <span>Total Price = LKR <input type=\"text\" name=\"total\" value=\"\" id=\"total-titcket-priceDisplay\"  disabled /></span>\n");
      out.write("                    </div>\n");
      out.write("                      ");

                        

                        try {
                          
                            String qry = "select * from user where user_email = '" + user + "' ";

                            rs = stmnt.executeQuery(qry);

                            while (rs.next()) {
                    
      out.write("\n");
      out.write("                    <form method=\"post\" action=\"https://sandbox.payhere.lk/pay/checkout\">   \n");
      out.write("                        <input type=\"hidden\" name=\"merchant_id\" value=\"1221630\">   \n");
      out.write("                        <input type=\"hidden\" name=\"return_url\" value=\"http://localhost:8080/SE2_Project/payment.jsp\">\n");
      out.write("                        <input type=\"hidden\" name=\"cancel_url\" value=\"\">\n");
      out.write("                        <input type=\"hidden\" name=\"notify_url\" value=\"\">  \n");
      out.write("                        <input type=\"text\" name=\"order_id\" value=\"\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"items\" value=\"\" id=\"seatInfo\">\n");
      out.write("                        <input type=\"text\" name=\"currency\" value=\"LKR\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"amount\" id=\"totaltitcketprice\" value=\"\" class=\"display-none\">  \n");
      out.write("                        <input type=\"text\" name=\"first_name\" value=\"\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"last_name\" value=\"\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"email\" value=\"");
      out.print(rs.getString(4));
      out.write("\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"phone\" value=\"");
      out.print(rs.getString(6));
      out.write("\" class=\"display-none\"></br>\n");
      out.write("                        <input type=\"text\" name=\"address\" value=\"\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"city\" value=\"\" class=\"display-none\">\n");
      out.write("                        <input type=\"hidden\" name=\"country\" value=\"Sri Lanka\"></br>\n");
      out.write("                        <input type=\"submit\" value=\"Checkout\" class=\"payhere-payment\">   \n");
      out.write("                    </form> \n");
      out.write("                      ");

                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("         <div id=\"snackbar\"><i class=\"fas fa-exclamation-circle\"></i> Please select correct seats count!</div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/footer.jsp", out, false);
      out.write("\n");
      out.write("        <script src=\"scripts/seat.js\"></script> \n");
      out.write("        <script src=\"https://kit.fontawesome.com/56016c02ef.js\" crossorigin=\"anonymous\"></script>\n");
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
