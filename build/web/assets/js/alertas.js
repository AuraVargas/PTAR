/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function cancelaredicion(){
    return confirm("¿Desea salir sin guardar cambios?");
//    window.location.href = "https://www.youtube.com/watch?v=zODmu06pqvg"
}
function cancelarregistro(){
    return confirm("¿Segur@ de salir sin registrarte?");
}
function cancelarregistroA(){
    var a= confirm("¿Desea salir sin registrar en la agenda?");
    if (a){
        document.location = "ControladorAgenda?accion=listar"
    }
}
function eliminarregistroA(id){
    var con =confirm('¿Esta seguro de eliminar este evento?');
          if(con){
            location.href = 'ControladorAgenda?accion=eliminar&txtcodigo='+id;
          }
}
function eliminarVisita(id){
    var con =confirm('¿Esta seguro de eliminar esta visita?');
          if(con){
            location.href = 'ControladorVisita?accion=eliminar&ccc='+id;
          }
    
}
function cancelarregistroV(){
    return confirm("¿Desea salir sin registrar una visita?");
}
function actualizarcambios(){
    return confirm("¿Desea salir sin guardar los cambios?");
}