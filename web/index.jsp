<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ABC Cinema | Home</title>
        <script src="https://kit.fontawesome.com/56016c02ef.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="styles/index.css">
    </head>
    <body>
        <jsp:include page="components/navbar.jsp" />
        <main>
            <div class="landing">
                <div class="landing-content"></div>
                <div class="landing-text">
                    <h1>Feel the <span>Next</span> <br>
                        level <span>Movie</span> Experience
                    </h1>
                    <a href="#"><button class="explore-btn">Explore</button></a>
                    <a href="#"><button class="buy-ticket-btn">Buy Tickets</button></a>
                    <form action="" method="get" name="search-bar">
                        <input type="search" name="search" id="search" placeholder="Search..." class="search-bar">
                    </form>
                </div>
                <div class="landing-vid">
                    <video src="assets/bgvid.mp4" autoplay muted loop></video>
                </div>
            </div>
        </main>
        <jsp:include page="components/footer.jsp" />
        <script src="scripts/script.js"></script> 
    </body>
</html>
