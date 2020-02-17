/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var modal = document.getElementById('modal-events');
function cal(vari,eventos) {
var monthNames = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
ev = eventos; 
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
        var mes = monthNames[monthNumber];
        var c = new Date();
        var año = currentYear.toString();
        var numerodemes=monthNumber+1;
        if(i<10){
        var dia = '0'+i;
    }else{
        var dia = +i;
    }
        if(monthNumber<10){
        var fecha = año+'-0'+numerodemes+'-'+dia;
    }else{
        var fecha = año+'-'+numerodemes+'-'+dia;
    }
        dates.innerHTML += ` <div id="${i}" type="button" href="#ventana1" data-toggle="modal" onclick="fecha('${mes}',${i},${año},this.id,'${fecha}');lista('${fecha}');" class="calendar__date calendar__item">${i}</div>`;
        if (i == currentDay && monthNumber == c.getMonth()) {
                document.getElementById(i).className += " calendar__today";
            }
        if (vari.indexOf(fecha) > -1){
            document.getElementById(i).className += " calendar_event1";
        }
    }
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
}
function fecha(mes, dia, año,num,fecha) {
    document.getElementById(num).className += " activate";
    document.getElementById("uno").innerHTML="Eventos del dia: "+dia + " de " + mes + " del " + año;
    document.getElementById("sii").href = 'ControladorAgenda?accion=add&desde=1&fecha='+fecha;
    n = document.getElementsByClassName("activate");
    for (i =0; i< n.length; i++){
        if(n[i].id !=num){
            n[i].classList.remove("activate");
        }
    }
    
    
}
function lista(fecha){
    $(".eventolis").remove();
    for (i =0; i< ev.length; i++){
        
        if (ev[i][0]===fecha){
            modal.innerHTML += `<label class='eventolis' onclick="consultar('${ev[i][1]}','${ev[i][2]}','${ev[i][3]}','${ev[i][0]}','${ev[i][4]}')"href="#ventana2" type="button" data-toggle="modal">${ev[i][1]}</label><br class="eventolis">`;
        
        }
    };
    if(!$(".eventolis").length){
    modal.innerHTML += `<br class="eventolis"type="hidden"><h5 class='eventolis'>No se encuentran eventos registrados para este dia</h5><br class="eventolis">`;
    }
}
function anterior(){
   lastMonth();
}

