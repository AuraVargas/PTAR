
function consultar(Titulo,Descripcion,estado,fecha,id,inicio,fin){
    ide = id;
        document.getElementById("Titulo").innerHTML =Titulo;
//        $("#ventana1").hide();
//        $('body').removeClass('modal-open');
        $("#ventana1").toggle();
        $(".modal-backdrop").remove();
        document.getElementById('descripcion').innerHTML=Descripcion;
        document.getElementById('fecha').innerHTML="Fecha: "+fecha+" hora: "+inicio+" - "+fin;
        document.getElementById('estado').innerHTML="Estado: "+estado;
        document.getElementById('editar').href="ControladorAgenda?accion=editar&codigo="+id+"&desde=1";
      };
function elim(){
          vex.dialog.confirm({
    message: '¿Esta seguro de eliminar este evento?',
    className: 'vex-theme-wireframe',
        callback: function (value) {
        if (value) {
            location.href = 'ControladorAgenda?accion=elim&txtcodigo='+ide+'&desde=1';
            
        }
    }
})
}; 
//function eliminar(id){
//          vex.dialog.confirm({
//    message: '¿Esta seguro de eliminar este evento?',
//    className: 'vex-theme-wireframe',
//        callback: function (value) {
//        if (value) {
//            location.href = 'ControladorAgenda?accion=eliminar&txtcodigo='+id;
//        }
//    }
//})
//}
