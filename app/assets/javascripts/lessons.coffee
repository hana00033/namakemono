# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.draw_graph1 = -> 
    ctx = document.getElementById("myChart1").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ["取得単位", "総単位"],
            datasets: [{
                label: '# of Votes',
                data: gon.data1
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)'
                ],
            }]
        },
    })

window.draw_graph2 = -> 
    ctx = document.getElementById("myChart2").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: gon.name1,
            datasets: [{
                data: gon.absence1,
                backgroundColor:"#FF9872"
            }]
        },
        options: {
            responsive: true,
            legend: {
                display: false 
            },
            title: {     
                display: true,  
                fontSize: 18,  
                text: '欠席数' 
            },
            scales: {
                yAxes: [{ 
                    ticks: {                     
                        min: 0,               
                        max: 5, 
                        fontSize: 18, 
                        stepSize: 0.5              
                    }
                }] 
            }
        }
    })

window.draw_graph3 = -> 
    ctx = document.getElementById("myChart3").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: gon.name2,
            datasets: [{
                data: gon.absence2,
                backgroundColor:"#FF9872"
            }]
        },
        options: {
            responsive: true,
            legend: {
                display: false 
            },
            title: {     
                display: true,  
                fontSize: 18,  
                text: '欠席数' 
            },
            scales: {
                yAxes: [{ 
                    ticks: {                     
                        min: 0,               
                        max: 5, 
                        fontSize: 18, 
                        stepSize: 0.5              
                    }
                }] 
            }
        }
    })

window.draw_graph4 = -> 
    ctx = document.getElementById("myChart4").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: gon.name3,
            datasets: [{
                data: gon.absence3,
                backgroundColor:"#FF9872"
            }]
        },
        options: {
            responsive: true,
            legend: {
                display: false 
            },
            title: {     
                display: true,  
                fontSize: 18,  
                text: '欠席数' 
            },
            scales: {
                yAxes: [{ 
                    ticks: {                     
                        min: 0,               
                        max: 5, 
                        fontSize: 18, 
                        stepSize: 0.5              
                    }
                }] 
            }
        }
    })

window.draw_graph5 = -> 
    ctx = document.getElementById("myChart5").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: gon.name4,
            datasets: [{
                data: gon.absence4,
                backgroundColor:"#FF9872"
            }]
        },
        options: {
            responsive: true,
            legend: {
                display: false 
            },
            title: {     
                display: true,  
                fontSize: 18,  
                text: '欠席数' 
            },
            scales: {
                yAxes: [{ 
                    ticks: {                     
                        min: 0,               
                        max: 5, 
                        fontSize: 18, 
                        stepSize: 0.5              
                    }
                }] 
            }
        }
    })

window.draw_graph6 = -> 
    ctx = document.getElementById("myChart6").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: gon.name5,
            datasets: [{
                data: gon.absence5,
                backgroundColor:"#FF9872"
            }]
        },
        options: {
            responsive: true,
            legend: {
                display: false 
            },
            title: {     
                display: true,  
                fontSize: 18,  
                text: '欠席数' 
            },
            scales: {
                yAxes: [{ 
                    ticks: {                     
                        min: 0,               
                        max: 5, 
                        fontSize: 18, 
                        stepSize: 0.5              
                    }
                }] 
            }
        }
    })

window.draw_graph7 = -> 
    ctx = document.getElementById("myChart7").getContext('2d')
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: gon.name6,
            datasets: [{
                data: gon.absence6,
                backgroundColor:"#FF9872"
            }]
        },
        options: {
            responsive: true,
            legend: {
                display: false 
            },
            title: {     
                display: true,  
                fontSize: 18,  
                text: '欠席数' 
            },
            scales: {
                yAxes: [{ 
                    ticks: {                     
                        min: 0,               
                        max: 5, 
                        fontSize: 18, 
                        stepSize: 0.5              
                    }
                }] 
            }
        }
    })