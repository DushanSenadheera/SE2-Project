const ctx = document.getElementById('myChart');

var data = JSON.parse(document.getElementById("data").value);

new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
        datasets: [{
                label: 'Week Summery',
                data: [data, 38, 21, 45, 61, 54],
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



