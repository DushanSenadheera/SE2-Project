<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ABC Cinema | Home</title>
        <link rel="stylesheet" href="styles/index.css">
    </head>
    <body>
        <jsp:include page="components/navbarLanding.jsp" />
        <main>
            <div class="landing" id="home">
                <div class="landing-content"></div>
                <div class="landing-text">
                    <h1>Feel the <span>Next</span> <br>
                        level <span>Movie</span> Experience
                    </h1>
                    <a href="#explore"><button class="explore-btn">Explore</button></a>
                    <a href="#explore"><button class="buy-ticket-btn">Buy Tickets</button></a>
                    <form action="" method="get" name="search-bar">
                        <input type="search" name="search" id="search" placeholder="Search..." class="search-bar">
                    </form>
                </div>
                <div class="landing-vid">
                    <video src="assets/bgvid.mp4" autoplay muted loop></video>
                </div>
            </div>
            <br>
            <div class="slideshow-container">
                <div class="mySlides1">
                    <img src="assets/theater-banner.png" style="width:100%">
                </div>

                <div class="mySlides1">
                    <img src="assets/theater-banner.png" style="width:100%">
                </div>

                <div class="mySlides1">
                    <img src="assets/theater-banner.png" style="width:100%">
                </div>

                <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
                <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
            </div>
            <br>
            <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
            </div>
            <br>
            <div class="premiering" id="explore">
                <h3>Premiere Now</h3>
                <div class="premiering-movies">
                    <a href="movieDescription.jsp">
                        <div class="movie">
                            <img src="assets/Poster.png" alt="">
                            <h4>Movie Name</h4>
                            <p>Movie Description</p>
                        </div>
                    </a>
                    <a href="movieDescription.jsp">
                        <div class="movie">
                            <img src="assets/bp.jpg" alt="">
                            <h4>Movie Name</h4>
                            <p>Movie Description</p>
                        </div>
                    </a>
                    <a href="movieDescription.jsp">
                        <div class="movie">
                            <img src="assets/tg.jpg" alt="">
                            <h4>Movie Name</h4>
                            <p>Movie Description</p>
                        </div>
                    </a>
                    <a href="movieDescription.jsp">
                        <div class="movie">
                            <img src="assets/Poster.png" alt="">
                            <h4>Movie Name</h4>
                            <p>Movie Description</p>
                        </div>
                    </a>
                </div>
            </div>
            <br>
            <div class="cooming-soon">
                <h3>Cooming Soon</h3>
                <div class="premiering-movies">
                    <a href="movieDescription.jsp">
                        <div class="movie">
                            <img src="assets/jw.jpg" alt="">
                            <h4>Movie Name</h4>
                            <p>Movie Description</p>
                        </div>
                    </a>
                    <a href="movieDescription.jsp">
                        <div class="movie">
                            <img src="assets/transformers.jpg" alt="">
                            <h4>Movie Name</h4>
                            <p>Movie Description</p>
                        </div>
                    </a>
                    <a href="movieDescription.jsp">
                        <div class="movie">
                            <img src="assets/avatar.jpg" alt="">
                            <h4>Movie Name</h4>
                            <p>Movie Description</p>
                        </div>
                    </a>
                    <a href="movieDescription.jsp">
                        <div class="movie">
                            <img src="assets/fx.webp" alt="">
                            <h4>Movie Name</h4>
                            <p>Movie Description</p>
                        </div>
                    </a>
                </div>
            </div>
            <br>
            <div class="slideshow-container">
                <div class="mySlides2">
                    <img src="assets/movie-banner.png" style="width:100%">
                </div>

                <div class="mySlides2">
                    <img src="assets/movie-banner.png" style="width:100%">
                </div>

                <div class="mySlides2">
                    <img src="assets/movie-banner.png" style="width:100%">
                </div>
                <a class="prev" onclick="plusSlides(-1, 1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1, 1)">&#10095;</a>
            </div>
            <br>
            <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
            </div>
            <br>
            <div class="about-us" id="about">
                <h3>Get To Know</h3>
                <br>
                <section>
                    <div class="about-img">
                        <img src="assets/about1.png" alt="">
                    </div>
                    <div class="about-content">
                        <h5>Title</h5>
                        <br>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi accusantium delectus expedita. Optio praesentium ipsam suscipit cum quod perspiciatis corrupti.</p>
                    </div>
                </section>
                <br>
                <section id="about-us-reverse">
                    <div class="about-content">
                        <h5>Title</h5>
                        <br>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi accusantium delectus expedita. Optio praesentium ipsam suscipit cum quod perspiciatis corrupti.</p>
                    </div>
                    <div class="about-img">
                        <img src="assets/about2.png" alt="">
                    </div>
                </section>
                <br>
                <section>
                    <div class="about-img">
                        <img src="assets/about3.png" alt="">
                    </div>
                    <div class="about-content">
                        <h5>Title</h5>
                        <br>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi accusantium delectus expedita. Optio praesentium ipsam suscipit cum quod perspiciatis corrupti.</p>
                    </div>
                </section>
            </div>
            <br>
            <div class="contact-us" id="contact">
                <h3>Get In Touch</h3>
                <div class="contact-us-content">
                    <div class="contact-info">
                        <ul>
                            <li><i class="fas fa-phone-alt"></i><span>011 412 1234, 076 212 1234</span></li>
                            <li><i class="fas fa-envelope"></i><span>abccinema@mail.com</span></li>
                            <li><i class="fas fa-map-marker-alt"></i><span>No. 12/3, street Road, City</span></li>
                        </ul>
                    </div>
                    <div class="contact-form">
                        <form class="contact-form-inputs" method="POST" action="emailSend">
                            <section>
                                <input type="text" placeholder="First Name" name="fname">
                                <input type="text" placeholder="Last Name" name="lname">
                            </section>
                            <input type="email" placeholder="Email" name="email">
                            <br>
                            <textarea name="message" id="message" rows="12" cols="85" placeholder="Message"></textarea>
                            <br>
                            <input type="submit" value="Submit" id="msg-submit-btn">
                        </form>
                    </div>
                </div>
            </div>
            <br>
        </main>
        <jsp:include page="components/footer.jsp" />
        <script src="scripts/bannerSlider.js"></script> 
    </body>
</html>
