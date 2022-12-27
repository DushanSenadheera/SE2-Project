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
                    <p>action, adventure, sci-fi, fantasy, comedy, romantic, supernatural, horror, thriller, drama, crime, mystry</p>
                </div>
                <div class="duration">
                    <p>2h 30min</p>
                </div>
                <div class="cast">
                    <h4>Cast</h4>
                    <p>actor, actor, actress, actress, actor</p>
                </div>
                <div class="movie-details">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit assumenda nisi, iusto beatae eum odio expedita doloribus, vel corporis necessitatibus ad cupiditate eius animi ea!
                    </p>
                </div>
                <div class="cta-btns">
                    <button class="btn-buy">Buy Ticket</button>
                    <button class="btn-trailer">Watch Trailer</button>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
        <script src="scripts/script.js"></script> 
    </body>
</html>
