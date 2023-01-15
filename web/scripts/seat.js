let selectedSeats = [];

// to check whether seat is already in selectedSeats or not
function checkSeatExist(userSelectedSeat) {
    // if seat was not found in array 'find' returns undefined
    const foundSeat = selectedSeats.find((selectedSeat) => selectedSeat == userSelectedSeat);
    // undefined means false in if operator
    if (foundSeat) {
        return true;
    } else {
        return false;
    }
}

// only return seat code
function getSeat(elementId) {
    const seatElement = document.getElementById(elementId);
    const seatCode = seatElement.innerText;
    return seatCode;
}

// set or remove seat based on whether it's available on current seat array
function setSeat(elementId) {
    const seatElement = document.getElementById(elementId);
    const seatCode = getSeat(elementId);
    if (!checkSeatExist(seatCode)) {
        // if not exist we can add seat to array
        selectedSeats.push(seatCode);
        // styling
        seatElement.classList.add('seat-selected');
    } else {
        // if seat exist we need to remove it as user selected on same seat at second time intending to remove it
        // 'filter' will return all seats except current selected one
        const seatsExceptSelected = selectedSeats.filter((selectedSeat) => selectedSeat != seatCode);
        selectedSeats = seatsExceptSelected;
        //styling
        seatElement.classList.remove('seat-selected');
    }
}

function showSeats() {
    console.log(selectedSeats);
    document.getElementById('seatInfo').value=selectedSeats;
}

let total = 0;

function seatPrice(seatPrice){
    let price = Number(seatPrice);
    let seats = document.getElementsByClassName('seat');
    
    total += price;
    
    document.getElementById('totaltitcketprice').value=total;
    console.log(total);
}

