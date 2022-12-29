<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/movieDescription.css">
        <title>ABC Cinema | Black Adam</title>
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
        <div class="background-poster">
            <div class="movie-description">
                <div class="title">
                    <h1>Black Adam</h1>
                    <h4>By First Last</h4>
                </div>
                <div class="catergories">
                    <p> <span>action</span> <span>adventure</span> <span>sci-fi</span> <span>fantasy</span> <span>comedy</span> <span>romantic</span> <span>supernatural</span> <span>horror</span> <span>thriller</span> <span>drama</span> <span>crime</span> <span>mystry</span></p>
                </div>
                <div class="duration">
                    <i class="far fa-clock"></i> 
                    <p>2h 30min</p>
                </div>
                <div class="cast">
                    <h4>Cast</h4>
                    <p>actor, actor, actress, actress, actor</p>
                </div>
                <div class="movie-details">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit assumenda nisi, iusto beatae eum odio expedita doloribus, vel corporis necessitatibus ad cupiditate eius animi ea! Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit assumenda nisi cupiditate eius animi ea! Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit assumenda
                    </p>
                </div>
                <div class="cta-btns">
                    
                    <div id="overlay" onclick="off()">
                        <iframe width="420" height="315" id="trailer"
                                src="https://www.youtube.com/watch?v=mkomfZHG5q4">
                        </iframe>
                    </div>

                    <div style="padding:20px">
                        <button class="btn-buy">Buy Ticket</button>
                        <button class="btn-trailer" onclick="on()">Watch Trailer</button>
                    </div>
                </div>
            </div>
        </div>
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
                <div class="movie">
                    <img src="assets/bp.jpg" alt="">
                    <h4>Movie Name</h4>
                    <p>Movie Description</p>
                </div>
                <div class="movie">
                    <img src="assets/tg.jpg" alt="">
                    <h4>Movie Name</h4>
                    <p>Movie Description</p>
                </div>
                <div class="movie">
                    <img src="assets/Poster.png" alt="">
                    <h4>Movie Name</h4>
                    <p>Movie Description</p>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
        <script src="https://kit.fontawesome.com/56016c02ef.js" crossorigin="anonymous"></script>
        <script src="scripts/navbarToggler.js"></script> 
        <script src="scripts/movieTrailerPlay.js"></script> 
    </body>
</html>
