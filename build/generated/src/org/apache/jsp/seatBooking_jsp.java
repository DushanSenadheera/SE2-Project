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
      out.write("        <title>ABC Cinema | Seat Booking</title>\n");
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
                        String date = request.getParameter("date");
                        String time = request.getParameter("time");

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                            stmnt = conn.createStatement();

                            String qry = "select * from premiering_movies where movie_name = '" + movieName + "'";

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
      out.write("            </div>\n");
      out.write("                    \n");
      out.write("            <div class=\"seat-booking\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"seat-layout\">\n");
      out.write("                        <div class=\"screen\">Screen this way</div>\n");
      out.write("                        ");

                        
                           try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "");
                            stmnt = conn.createStatement();

                            String qry2 = "select * from payment where movie_name = '" + movieName + "' and date = '"+ date +"' and time = '"+ time +"'" ;

                            rs = stmnt.executeQuery(qry2);

                            while (rs.next()) {

                        
      out.write("\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div id=\"A1\" class=\"seat\" onload=\"isBooked()\"  onclick=\"setSeat('A1'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A1</div>\n");
      out.write("                            <div id=\"A2\" class=\"seat\" onclick=\"setSeat('A2'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A2</div>\n");
      out.write("                            <div id=\"A3\" class=\"seat\" onclick=\"setSeat('A3'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A3</div>\n");
      out.write("                            <div id=\"A4\" class=\"seat\" onclick=\"setSeat('A4'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A4</div>\n");
      out.write("                            <div id=\"A5\" class=\"seat\" onclick=\"setSeat('A5'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A5</div>\n");
      out.write("                            <div id=\"A6\" class=\"seat\" onclick=\"setSeat('A6'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A6</div>\n");
      out.write("                            <div id=\"A7\" class=\"seat\" onclick=\"setSeat('A7'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A7</div>\n");
      out.write("                            <div id=\"A8\" class=\"seat\" onclick=\"setSeat('A8'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A8</div>\n");
      out.write("                            <div id=\"A9\" class=\"seat\" onclick=\"setSeat('A9'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A9</div>\n");
      out.write("                            <div id=\"A10\" class=\"seat\" onclick=\"setSeat('A10'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >A10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div id=\"B1\" class=\"seat\" onclick=\"setSeat('B1'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B1</div>\n");
      out.write("                            <div id=\"B2\" class=\"seat\" onclick=\"setSeat('B2'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B2</div>\n");
      out.write("                            <div id=\"B3\" class=\"seat\" onclick=\"setSeat('B3'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B3</div>\n");
      out.write("                            <div id=\"B4\" class=\"seat\" onclick=\"setSeat('B4'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B4</div>\n");
      out.write("                            <div id=\"B5\" class=\"seat\" onclick=\"setSeat('B5'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B5</div>\n");
      out.write("                            <div id=\"B6\" class=\"seat\" onclick=\"setSeat('B6'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B6</div>\n");
      out.write("                            <div id=\"B7\" class=\"seat\" onclick=\"setSeat('B7'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B7</div>\n");
      out.write("                            <div id=\"B8\" class=\"seat\" onclick=\"setSeat('B8'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B8</div>\n");
      out.write("                            <div id=\"B9\" class=\"seat\" onclick=\"setSeat('B9'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B9</div>\n");
      out.write("                            <div id=\"B10\" class=\"seat\" onclick=\"setSeat('B10'); showSeats(); seatPrice(");
      out.print(rs.getString(12));
      out.write(");\" >B10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div id=\"C1\" class=\"seat\" onclick=\"setSeat('C1'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C1</div>\n");
      out.write("                            <div id=\"C2\" class=\"seat\" onclick=\"setSeat('C2'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C2</div>\n");
      out.write("                            <div id=\"C3\" class=\"seat\" onclick=\"setSeat('C3'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C3</div>\n");
      out.write("                            <div id=\"C4\" class=\"seat\" onclick=\"setSeat('C4'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C4</div>\n");
      out.write("                            <div id=\"C5\" class=\"seat\" onclick=\"setSeat('C5'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C5</div>\n");
      out.write("                            <div id=\"C6\" class=\"seat\" onclick=\"setSeat('C6'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C6</div>\n");
      out.write("                            <div id=\"C7\" class=\"seat\" onclick=\"setSeat('C7'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C7</div>\n");
      out.write("                            <div id=\"C8\" class=\"seat\" onclick=\"setSeat('C8'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C8</div>\n");
      out.write("                            <div id=\"C9\" class=\"seat\" onclick=\"setSeat('C9'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C9</div>\n");
      out.write("                            <div id=\"C10\" class=\"seat\" onclick=\"setSeat('C10'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >C10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div id=\"D1\" class=\"seat\" onclick=\"setSeat('D1'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D1</div>\n");
      out.write("                            <div id=\"D2\" class=\"seat\" onclick=\"setSeat('D2'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D2</div>\n");
      out.write("                            <div id=\"D3\" class=\"seat\" onclick=\"setSeat('D3'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D3</div>\n");
      out.write("                            <div id=\"D4\" class=\"seat\" onclick=\"setSeat('D4'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D4</div>\n");
      out.write("                            <div id=\"D5\" class=\"seat\" onclick=\"setSeat('D5'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D5</div>\n");
      out.write("                            <div id=\"D6\" class=\"seat\" onclick=\"setSeat('D6'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D6</div>\n");
      out.write("                            <div id=\"D7\" class=\"seat\" onclick=\"setSeat('D7'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D7</div>\n");
      out.write("                            <div id=\"D8\" class=\"seat\" onclick=\"setSeat('D8'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D8</div>\n");
      out.write("                            <div id=\"D9\" class=\"seat\" onclick=\"setSeat('D9'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D9</div>\n");
      out.write("                            <div id=\"D10\" class=\"seat\" onclick=\"setSeat('D10'); showSeats(); seatPrice(");
      out.print(rs.getString(11));
      out.write(");\" >D10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div id=\"E1\" class=\"seat\" onclick=\"setSeat('E1'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E1</div>\n");
      out.write("                            <div id=\"E2\" class=\"seat\" onclick=\"setSeat('E2'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E2</div>\n");
      out.write("                            <div id=\"E3\" class=\"seat\" onclick=\"setSeat('E3'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E3</div>\n");
      out.write("                            <div id=\"E4\" class=\"seat\" onclick=\"setSeat('E4'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E4</div>\n");
      out.write("                            <div id=\"E5\" class=\"seat\" onclick=\"setSeat('E5'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E5</div>\n");
      out.write("                            <div id=\"E6\" class=\"seat\" onclick=\"setSeat('E6'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E6</div>\n");
      out.write("                            <div id=\"E7\" class=\"seat\" onclick=\"setSeat('E7'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E7</div>\n");
      out.write("                            <div id=\"E8\" class=\"seat\" onclick=\"setSeat('E8'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E8</div>\n");
      out.write("                            <div id=\"E9\" class=\"seat\" onclick=\"setSeat('E9'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E9</div>\n");
      out.write("                            <div id=\"E10\" class=\"seat\" onclick=\"setSeat('E10'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >E10</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div id=\"F1\" class=\"seat\" onclick=\"setSeat('F1'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F1</div>\n");
      out.write("                            <div id=\"F2\" class=\"seat\" onclick=\"setSeat('F2'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F2</div>\n");
      out.write("                            <div id=\"F3\" class=\"seat\" onclick=\"setSeat('F3'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F3</div>\n");
      out.write("                            <div id=\"F4\" class=\"seat\" onclick=\"setSeat('F4'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F4</div>\n");
      out.write("                            <div id=\"F5\" class=\"seat\" onclick=\"setSeat('F5'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F5</div>\n");
      out.write("                            <div id=\"F6\" class=\"seat\" onclick=\"setSeat('F6'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F6</div>\n");
      out.write("                            <div id=\"F7\" class=\"seat\" onclick=\"setSeat('F7'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F7</div>\n");
      out.write("                            <div id=\"F8\" class=\"seat\" onclick=\"setSeat('F8'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F8</div>\n");
      out.write("                            <div id=\"F9\" class=\"seat\" onclick=\"setSeat('F9'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F9</div>\n");
      out.write("                            <div id=\"F10\" class=\"seat\" onclick=\"setSeat('F10'); showSeats(); seatPrice(");
      out.print(rs.getString(10));
      out.write(");\" >F10</div>\n");
      out.write("                        </div>\n");
      out.write("                        ");

                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    
      out.write("\n");
      out.write("                  ");

                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    
      out.write("\n");
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
      out.write("                    <form method=\"post\" action=\"authorize_payment\" class=\"formStyle\">   \n");
      out.write("                        <input type=\"hidden\" name=\"product\" value=\"");
      out.print( movieName );
      out.write("\" />  \n");
      out.write("                        <input type=\"hidden\" name=\"subtotal\" value=\"0\" />\n");
      out.write("                        <input type=\"hidden\" name=\"shipping\" value=\"0\" />\n");
      out.write("                        <input type=\"hidden\" name=\"total\" value=\"\" id=\"totaltitcketprice\" />\n");
      out.write("                        <input type=\"hidden\" name=\"tax\" value=\"0\" />\n");
      out.write("                        <input type=\"text\" name=\"items\" value=\"\" id=\"seatInfo\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"amount\" id=\"totaltitcketprice\" value=\"\" class=\"display-none\">  \n");
      out.write("                        <input type=\"text\" name=\"first_name\" value=\"");
      out.print( date );
      out.write("\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"last_name\" value=\"");
      out.print( time );
      out.write("\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"email\" value=\"");
      out.print(rs.getString(4));
      out.write("\" class=\"display-none\">\n");
      out.write("                        <input type=\"text\" name=\"phone\" value=\"");
      out.print(rs.getString(6));
      out.write("\" class=\"display-none\"></br>\n");
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
