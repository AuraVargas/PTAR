
function consultar(Titulo,Descripcion,estado,fecha,id,inicio,fin){
    ide = id;
        document.getElementById("Titulo").innerHTML =Titulo;
        $("#ventana1").modal("hide");
        document.getElementById('descripcion').innerHTML=Descripcion;
        document.getElementById('fecha').innerHTML="Fecha: "+fecha+" hora: "+inicio+" - "+fin;
        document.getElementById('estado').innerHTML="Estado: "+estado;
        document.getElementById('editar').href="ControladorAgenda?accion=editar&codigo="+id+"&desde=1";
      };
function elim(){
          var con =confirm('¿Esta seguro de eliminar este evento?');
          if(con){
            location.href = 'ControladorAgenda?accion=elim&txtcodigo='+ide+'&desde=1';
          }
}; 
function eliminar(id){
          var con =confirm('¿Esta seguro de eliminar este evento?');
          if(con){
            location.href = 'ControladorAgenda?accion=eliminar&txtcodigo='+id;
          }
};