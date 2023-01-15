const seat = document.getElementsByClassName('seat');
var seatarr = [];

document.addEventListener('click', seatbook());

function seatbook() {

    for (let i = 0; i < seat.length; i++) {
        seat[i].addEventListener('click', function () {
            this.classList.toggle('seatbooked');
            calculatePrice();
            setSeat();
        });
    }
}

function calculatePrice() {

    let ticketPrice = Number(document.getElementById('ticket-price').innerHTML);
    let adults = document.getElementById('adults').value;
    let children = document.getElementById('child').value;
    let total = 0;
    let seats = 0;

    for (let i = 0; i < seat.length; i++) {
        if (seat[i].classList.contains('seatbooked')) {
            seats += 1;
        }
    }
    
    total = (ticketPrice * adults) + ((ticketPrice / 2) * children);
    document.getElementById('total-titcket-price').innerHTML = total;

    validation(seats, adults, children);
}

function setSeat() {

    for (let i = 0; i < seat.length; i++) {
        if (seat[i].classList.contains('seatbooked')) {
            seatarr.push(seat[i].innerHTML);
        }
    }
//    getSeat();
}

function getSeat() {

    for (let i = 0; i < seatarr.length; i++) {
        console.log(seatarr[i]);
    }
    
    document.getElementById('seat-info').innerHTML = seatarr;
}

function validation(seats, adults, children) {

    let total = Number(adults) + Number(children);

    if (total < seats) {
        snackbar();
        removeSeat(); 
    }
}

function removeSeat() {
    for (let i = 0; i < seat.length; i++) {
        if (seat[i].classList.contains('seatbooked')) {
            seat[i].classList.remove('seatbooked');
        }
    }
}

function refreshPage() {
    window.location.reload();
}

function snackbar() {
    var snackbar = document.getElementById("snackbar");
    snackbar.className = "show";
    setTimeout(function () { snackbar.className = snackbar.className.replace("show", ""); }, 3000);
    //refreshPage();
}

function on() {
  
  document.getElementById("overlay").style.display = "block";
  getSeat();
}

function off() {
  document.getElementById("overlay").style.display = "none";
}











