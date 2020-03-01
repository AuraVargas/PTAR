/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var modal = document.getElementById('modal-events');

var monthNames = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];

var currentDate = new Date();
var currentDay = currentDate.getDate();
var monthNumber = currentDate.getMonth();
var currentYear = currentDate.getFullYear();
EscribirMeses(monthNames);
EscribirAños(currentYear);

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
        dates.innerHTML += ` <div id="${i}" href="#ventana1" data-toggle="modal" onclick="fecha('${mes}',${i},${año},this.id,'${fecha}');lista('${fecha}');" class="calendar__date calendar__item">${i}</div>`;
        if (i == currentDay && monthNumber == c.getMonth()) {
                document.getElementById(i).className += " calendar__today";
            }
            var prueba = vari.indexOf(fecha);
        if (prueba > -1){
            if(ev[prueba][7]==2){
                document.getElementById(i).className += " calendar_event2";
            }else if(ev[prueba][7]==3){
                document.getElementById(i).className += " calendar_event3";
            }else if(ev[prueba][7]==4){
                document.getElementById(i).className += " calendar_event4";
            }else if(ev[prueba][7]==5){
                document.getElementById(i).className += " calendar_event5";
            }else if(ev[prueba][7]==6){
                document.getElementById(i).className += " calendar_event6";
            }else{
                document.getElementById(i).className += " calendar_event1";
            }
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

function fecha(mes, dia, año,num,fecha) {
    document.getElementById(num).className += " activate";
    document.getElementById("uno").innerHTML="Eventos del dia: "+dia + " de " + mes + " del " + año;
    document.getElementById("sii").href = 'ControladorAgenda?accion=add&desde=1&fecha='+fecha;
    fecha2 = fecha;
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
            modal.innerHTML += `<label class='eventolis' onclick="consultar('${ev[i][1]}','${ev[i][2]}','${ev[i][3]}','${ev[i][0]}','${ev[i][4]}','${ev[i][5]}','${ev[i][6]}','${ev[i][7]}')"href="#ventana2" type="button" data-toggle="modal">${ev[i][1]}</label><br class="eventolis">`;
        
        }
    };
    if(!$(".eventolis").length){
    modal.innerHTML += `<br class="eventolis"type="hidden"><h5 class='eventolis'>No se encuentran eventos registrados para este dia</h5><br class="eventolis">`;
    }
}
function anterior(){
   lastMonth();
}
function nuevoMes(mes,año){
    monthNumber=mes;
    var año = document.getElementById('year').innerHTML;
    $('#contenido').toggle();
     $('#dias').toggle();
     $('#dates').toggle();
    setNewDate();
}
function nuevoAño(año){
    
    currentYear=año;
    $('#years').toggle();
     $('#dias').toggle();
     $('#dates').toggle();
    setNewDate();
}

function EscribirAños(año){
    for(i =0; i< 12; i++){
    document.getElementById("years").innerHTML+= ` <div onclick="nuevoAño(${año+i})" id="a${i}" class="calendar__item años meses">
            ${año+i}
        </div>`;
    };
    $('#years').toggle();
     };
function EscribirMeses(monthNames){
    
    for(i =0; i< monthNames.length; i++){
    document.getElementById("contenido").innerHTML+= ` <div onclick="nuevoMes(${i})" class="calendar__item meses">
            ${monthNames[i]}
        </div>`;
    };
     $('#contenido').toggle();
     };

function mostraraños(){
    if ($('#contenido').is(":visible")) {
        $('#contenido').toggle();
        
    }
    else{
        $('#dias').toggle();
    $('#dates').toggle();
    }
    $('#years').toggle();
    
     
};
function meses(){
    if ($('#years').is(":visible")) {
        $('#years').toggle();
        
        
    }else{
    
     $('#dias').toggle();
     $('#dates').toggle();
 }
 $('#contenido').toggle();
}
function sumaraños(){
    
    var año = new Number(document.getElementById('a11').innerHTML);
    $(".años").remove();
    for(i =0; i< 12; i++){
    document.getElementById("years").innerHTML+= ` <div onclick="nuevoAño(${año+i})" id="a${i}" class="calendar__item años meses">
            ${año+i}
        </div>`;
    }
    };
    
function restaraños(){
    var año = new Number(document.getElementById('a0').innerHTML);
    $(".años").remove();
    for(i =11; i> -1; i--){
    document.getElementById("years").innerHTML+= ` <div onclick="nuevoAño(${año-i})" id="a${11-i}" class="calendar__item años meses">
            ${año-i}
        </div>`;
    }
    };

function cambiar(opcion){
//    alert(opcion);
var con =confirm('¿Cambiar el color del evento en el calendario?');
          if(con){
    location.href = 'ControladorAgenda?accion=actcolor&color='+opcion+'&fecha='+fecha2;
          }
}