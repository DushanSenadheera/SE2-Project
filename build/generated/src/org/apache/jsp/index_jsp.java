package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <title>ABC Cinema | Home</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/index.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/navbarLanding.jsp", out, false);
      out.write("\r\n");
      out.write("        <main>\r\n");
      out.write("            <div class=\"landing\" id=\"home\">\r\n");
      out.write("                <div class=\"landing-content\"></div>\r\n");
      out.write("                <div class=\"landing-text\">\r\n");
      out.write("                    <h1>Feel the <span>Next</span> <br>\r\n");
      out.write("                        level <span>Movie</span> Experience\r\n");
      out.write("                    </h1>\r\n");
      out.write("                    <a href=\"#explore\"><button class=\"explore-btn\">Explore</button></a>\r\n");
      out.write("                    <a href=\"#explore\"><button class=\"buy-ticket-btn\">Buy Tickets</button></a>\r\n");
      out.write("                    <form action=\"\" method=\"get\" name=\"search-bar\">\r\n");
      out.write("                        <input type=\"search\" name=\"search\" id=\"search\" placeholder=\"Search...\" class=\"search-bar\">\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"landing-vid\">\r\n");
      out.write("                    <video src=\"assets/bgvid.mp4\" autoplay muted loop></video>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            <div class=\"slideshow-container\">\r\n");
      out.write("                <div class=\"mySlides1\">\r\n");
      out.write("                    <img src=\"assets/theater-banner.png\" style=\"width:100%\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"mySlides1\">\r\n");
      out.write("                    <img src=\"assets/theater-banner.png\" style=\"width:100%\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"mySlides1\">\r\n");
      out.write("                    <img src=\"assets/theater-banner.png\" style=\"width:100%\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <a class=\"prev\" onclick=\"plusSlides(-1, 0)\">&#10094;</a>\r\n");
      out.write("                <a class=\"next\" onclick=\"plusSlides(1, 0)\">&#10095;</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            <div style=\"text-align:center\">\r\n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(1)\"></span>\r\n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(2)\"></span>\r\n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(3)\"></span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            <div class=\"premiering\" id=\"explore\">\r\n");
      out.write("                <h3>Premiere Now</h3>\r\n");
      out.write("                <div class=\"premiering-movies\">\r\n");
      out.write("                    <a href=\"movieDescription.jsp\">\r\n");
      out.write("                        <div class=\"movie\">\r\n");
      out.write("                            <img src=\"assets/Poster.png\" alt=\"\">\r\n");
      out.write("                            <h4>Movie Name</h4>\r\n");
      out.write("                            <p>Movie Description</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"movieDescription.jsp\">\r\n");
      out.write("                        <div class=\"movie\">\r\n");
      out.write("                            <img src=\"assets/bp.jpg\" alt=\"\">\r\n");
      out.write("                            <h4>Movie Name</h4>\r\n");
      out.write("                            <p>Movie Description</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"movieDescription.jsp\">\r\n");
      out.write("                        <div class=\"movie\">\r\n");
      out.write("                            <img src=\"assets/tg.jpg\" alt=\"\">\r\n");
      out.write("                            <h4>Movie Name</h4>\r\n");
      out.write("                            <p>Movie Description</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"movieDescription.jsp\">\r\n");
      out.write("                        <div class=\"movie\">\r\n");
      out.write("                            <img src=\"assets/Poster.png\" alt=\"\">\r\n");
      out.write("                            <h4>Movie Name</h4>\r\n");
      out.write("                            <p>Movie Description</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            <div class=\"cooming-soon\">\r\n");
      out.write("                <h3>Cooming Soon</h3>\r\n");
      out.write("                <div class=\"premiering-movies\">\r\n");
      out.write("                    <a href=\"movieDescription.jsp\">\r\n");
      out.write("                        <div class=\"movie\">\r\n");
      out.write("                            <img src=\"assets/jw.jpg\" alt=\"\">\r\n");
      out.write("                            <h4>Movie Name</h4>\r\n");
      out.write("                            <p>Movie Description</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"movieDescription.jsp\">\r\n");
      out.write("                        <div class=\"movie\">\r\n");
      out.write("                            <img src=\"assets/transformers.jpg\" alt=\"\">\r\n");
      out.write("                            <h4>Movie Name</h4>\r\n");
      out.write("                            <p>Movie Description</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"movieDescription.jsp\">\r\n");
      out.write("                        <div class=\"movie\">\r\n");
      out.write("                            <img src=\"assets/avatar.jpg\" alt=\"\">\r\n");
      out.write("                            <h4>Movie Name</h4>\r\n");
      out.write("                            <p>Movie Description</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"movieDescription.jsp\">\r\n");
      out.write("                        <div class=\"movie\">\r\n");
      out.write("                            <img src=\"assets/fx.webp\" alt=\"\">\r\n");
      out.write("                            <h4>Movie Name</h4>\r\n");
      out.write("                            <p>Movie Description</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            <div class=\"slideshow-container\">\r\n");
      out.write("                <div class=\"mySlides2\">\r\n");
      out.write("                    <img src=\"assets/movie-banner.png\" style=\"width:100%\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"mySlides2\">\r\n");
      out.write("                    <img src=\"assets/movie-banner.png\" style=\"width:100%\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"mySlides2\">\r\n");
      out.write("                    <img src=\"assets/movie-banner.png\" style=\"width:100%\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <a class=\"prev\" onclick=\"plusSlides(-1, 1)\">&#10094;</a>\r\n");
      out.write("                <a class=\"next\" onclick=\"plusSlides(1, 1)\">&#10095;</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            <div style=\"text-align:center\">\r\n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(1)\"></span>\r\n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(2)\"></span>\r\n");
      out.write("                <span class=\"dot\" onclick=\"currentSlide(3)\"></span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            <div class=\"about-us\" id=\"about\">\r\n");
      out.write("                <h3>Get To Know</h3>\r\n");
      out.write("                <br>\r\n");
      out.write("                <section>\r\n");
      out.write("                    <div class=\"about-img\">\r\n");
      out.write("                        <img src=\"assets/about1.png\" alt=\"\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"about-content\">\r\n");
      out.write("                        <h5>Title</h5>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi accusantium delectus expedita. Optio praesentium ipsam suscipit cum quod perspiciatis corrupti.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </section>\r\n");
      out.write("                <br>\r\n");
      out.write("                <section id=\"about-us-reverse\">\r\n");
      out.write("                    <div class=\"about-content\">\r\n");
      out.write("                        <h5>Title</h5>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi accusantium delectus expedita. Optio praesentium ipsam suscipit cum quod perspiciatis corrupti.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"about-img\">\r\n");
      out.write("                        <img src=\"assets/about2.png\" alt=\"\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </section>\r\n");
      out.write("                <br>\r\n");
      out.write("                <section>\r\n");
      out.write("                    <div class=\"about-img\">\r\n");
      out.write("                        <img src=\"assets/about3.png\" alt=\"\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"about-content\">\r\n");
      out.write("                        <h5>Title</h5>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi accusantium delectus expedita. Optio praesentium ipsam suscipit cum quod perspiciatis corrupti.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </section>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            <div class=\"contact-us\" id=\"contact\">\r\n");
      out.write("                <h3>Get In Touch</h3>\r\n");
      out.write("                <div class=\"contact-us-content\">\r\n");
      out.write("                    <div class=\"contact-info\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><i class=\"fas fa-phone-alt\"></i><span>011 412 1234, 076 212 1234</span></li>\r\n");
      out.write("                            <li><i class=\"fas fa-envelope\"></i><span>abccinema@mail.com</span></li>\r\n");
      out.write("                            <li><i class=\"fas fa-map-marker-alt\"></i><span>No. 12/3, street Road, City</span></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"contact-form\">\r\n");
      out.write("                        <form class=\"contact-form-inputs\">\r\n");
      out.write("                            <section>\r\n");
      out.write("                                <input type=\"text\" placeholder=\"First Name\">\r\n");
      out.write("                                <input type=\"text\" placeholder=\"Last Name\">\r\n");
      out.write("                            </section>\r\n");
      out.write("                            <input type=\"email\" placeholder=\"Email\">\r\n");
      out.write("                            <br>\r\n");
      out.write("                            <textarea name=\"message\" id=\"message\" rows=\"12\" cols=\"85\" placeholder=\"Message\"></textarea>\r\n");
      out.write("                            <br>\r\n");
      out.write("                            <input type=\"button\" value=\"Submit\" id=\"msg-submit-btn\">\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("        </main>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "components/footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <script src=\"scripts/bannerSlider.js\"></script> \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
