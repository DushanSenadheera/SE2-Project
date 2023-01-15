const ctx = document.getElementById('myChart');

let jsonString = '<%= request.getAttribute("jsonString")%>';
let json = JSON.parse(jsonString);
let value = json.key;
let num = 23;
console.log(value);

new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
                label: '# of Votes',
                data: [value, 19, 3, 5, 2, 3],
                borderWidth: 1
            }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});



