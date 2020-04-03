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
          vex.dialog.confirm({
    message: '¿Esta seguro de eliminar esta visita?',
    className: 'vex-theme-wireframe',
        callback: function (value) {
        if (value) {
            location.href = 'ControladorAgenda?accion=eliminar&txtcodigo='+id;
            
        }
    }
})
}
function eliminarVisita(id){
    vex.dialog.confirm({
    message: '¿Esta seguro de cancelar esta visita?',
    className: 'vex-theme-wireframe',
        callback: function (value) {
        if (value) {
            vex.dialog.prompt({
    message: 'Por favor ingrese la razon por la cual cancela la visita',
    className: 'vex-theme-wireframe',
    placeholder: '',
    callback: function (value) {
        location.href = 'ControladorVisita?accion=eliminar&ccc='+id+'&txtdescription='+value;
    }
})
            
        }
    }
})
}
function cancelarregistroV(){
    return confirm("¿Desea salir sin registrar una visita?");
}
function actualizarcambios(){
    return confirm("¿Desea salir sin guardar los cambios?");
}