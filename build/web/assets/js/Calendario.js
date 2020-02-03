/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var monthNames = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];

var currentDate = new Date();
var currentDay = currentDate.getDate();
var monthNumber = currentDate.getMonth();
var currentYear = currentDate.getFullYear();

var dates = document.getElementById('dates');
var month = document.getElementById('month');
var year = document.getElementById('year');

var prevMonthDOM = document.getElementById('prev-month');
var nextMonthDOM = document.getElementById('next-month');

month.textContent = monthNames[monthNumber];
year.textContent = currentYear.toString();

prevMonthDOM.addEventListener('click', () => lastMonth());
nextMonthDOM.addEventListener('click', () => nextMonth());



const writeMonth = (month) => {

    for (var i = startDay(); i > 0; i--) {
        if (monthNumber == 0) {
            dates.innerHTML += ` <div onclick="anterior()" class="calendar__date calendar__item calendar__last-days">
            ${getTotalDays(monthNumber - 1) - (i - 1)}
        </div>`;
        } else {
            dates.innerHTML += ` <div onclick="anterior()" class="calendar__date calendar__item calendar__last-days">
            ${getTotalDays(monthNumber - 1) - (i - 1)}
        </div>`
        }
    }

    for (var i = 1; i <= getTotalDays(month); i++) {
        mes = monthNames[monthNumber];
        año = currentYear.toString();
        if (i == 5) {
            dates.innerHTML += ` <div id="${i}" onclick="fecha('${mes}',${i},${año},this.id)" id=${i} id="aa" class="calendar__date calendar__item calendar_event1">${i}</div>`;
        } else if (i == 6) {
            dates.innerHTML += ` <div id="${i}" onclick="fecha('${mes}',${i},${año},this.id)" id=${i} class="calendar__date calendar__item calendar_event2">${i}</div>`;
        } else if (i == 8) {
            dates.innerHTML += ` <div id="${i}" onclick="fecha('${mes}',${i},${año},this.id)" id=${i} class="calendar__date calendar__item calendar_event3">${i}</div>`;
        } else if (i == 9) {
            dates.innerHTML += ` <div id="${i}" onclick="fecha('${mes}',${i},${año},this.id)" id=${i} class="calendar__date calendar__item calendar_event4">${i}</div>`;
        } else if (i == 10) {
            dates.innerHTML += ` <div id="${i}" onclick="fecha('${mes}',${i},${año},this.id)" id=${i} class="calendar__date calendar__item calendar_event5">${i}</div>`;
        } else if (i == 11) {
            dates.innerHTML += ` <div id="${i}" onclick="fecha('${mes}',${i},${año},this.id)" id=${i} class="calendar__date calendar__item calendar_event6">${i}</div>`;
        } else {
            if (i == currentDay) {
                dates.innerHTML += ` <div id="${i}" onclick="fecha('${mes}',${i},${año},this.id)" id=${i} class="calendar__date calendar__item calendar__today">${i}</div>`;
            } else {
                dates.innerHTML += ` <div id="${i}" onclick="fecha('${mes}',${i},${año},this.id)"id=${i} class="calendar__date calendar__item">${i}</div>`;
            }
        }
    }
}

function fecha(mes, dia, año,num) {
    document.getElementById(num).className += " activate";
    document.getElementById("uno").innerHTML=mes + "/" + dia + "/" + año;
    n = document.getElementsByClassName("activate");
    for (i =0; i< n.length; i++){
        if(n[i].id !=num){
            n[i].classList.remove("activate");
        }
    }
    
}
function anterior(){
   lastMonth();
}


const getTotalDays = month => {
    if (month === -1)
        month = 11;

    if (month == 0 || month == 2 || month == 4 || month == 6 || month == 7 || month == 9 || month == 11) {
        return  31;

    } else if (month == 3 || month == 5 || month == 8 || month == 10) {
        return 30;

    } else {

        return isLeap() ? 29 : 28;
    }
}

const isLeap = () => {
    return ((currentYear % 100 !== 0) && (currentYear % 4 === 0) || (currentYear % 400 === 0));
}

const startDay = () => {
    var start = new Date(currentYear, monthNumber, 1);
    return ((start.getDay() - 1) === -1) ? 6 : start.getDay() - 1;
}

const lastMonth = () => {
    if (monthNumber !== 0) {
        monthNumber--;
    } else {
        monthNumber = 11;
        currentYear--;
    }

    setNewDate();
}

const nextMonth = () => {
    if (monthNumber !== 11) {
        monthNumber++;
    } else {
        monthNumber = 0;
        currentYear++;
    }

    setNewDate();
}

const setNewDate = () => {
    currentDate.setFullYear(currentYear, monthNumber, currentDay);
    month.textContent = monthNames[monthNumber];
    year.textContent = currentYear.toString();
    dates.textContent = '';
    writeMonth(monthNumber);
}

writeMonth(monthNumber);
