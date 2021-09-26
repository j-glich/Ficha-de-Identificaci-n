
$(document).ready(function(){
    tablaPersonas = $("#tablaPersonas").DataTable({
        "columnDefs":[{
        "targets": -1,
        "data":null,
        "defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-success btnBorrar'>Editar</button><button class='btn btn-danger btnBorrar'>Borrar</button></div></div>"  
    }],
        
    "language": {
            "lengthMenu": "Mostrar _MENU_ registros",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            "infoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sSearch": "Buscar:",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast":"Último",
                "sNext":"Siguiente",
                "sPrevious": "Anterior"
            },
            "sProcessing":"Procesando...",
        }
    });
    
$("#btnNuevo").click(function(){
    $("#formPersonas").trigger("reset");
    $(".modal-header").css("background-color", "#1cc88a");
    $(".modal-header").css("color", "white");
    $(".modal-title").text("Nuevo Alumno");            
    $("#modalCRUD").modal("show");        
    id=null;
    opcion = 1; //alta
});    
    
var fila; //capturar la fila para editar o borrar el registro
    
//botón EDITAR    
$(document).on("click", ".btnEditar", function(){
    fila = $(this).closest("tr");
    id = parseInt(fila.find('td:eq(0)').text());
    nombre = fila.find('td:eq(1)').text();
    pais = fila.find('td:eq(2)').text();
    edad = parseInt(fila.find('td:eq(3)').text());
    
    $("#nombre").val(nombre);
    $("#pais").val(pais);
    $("#edad").val(edad);
    opcion = 2; //editar
    
    $(".modal-header").css("background-color", "#4e73df");
    $(".modal-header").css("color", "white");
    $(".modal-title").text("Editar Persona");            
    $("#modalCRUD").modal("show");  
    
});

//botón BORRAR
$(document).on("click", ".btnBorrar", function(){    
    fila = $(this);
    id = parseInt($(this).closest("tr").find('td:eq(0)').text());
    opcion = 3 //borrar
    var respuesta = confirm("¿Está seguro de eliminar el registro: "+id+"?");
    if(respuesta){
        $.ajax({
            url: "bd/crud.php",
            type: "POST",
            dataType: "json",
            data: {opcion:opcion, id:id},
            success: function(){
                tablaPersonas.row(fila.parents('tr')).remove().draw();
            }
        });
    }   
});
    
$("#formPersonas").submit(function(e){
    e.preventDefault();   
    matricula = $.trim($("#matricula").val());
    nombre = $.trim($("#nombre").val());
    plan = $.trim($("#plan-academico").val());
    correo = $.trim($("#correo").val());
    semestre = $.trim($("#semestre").val());
    activo = $.trim($("#activo").val());
    $.ajax({
        url: "bd/crud.php",
        type: "POST",
        dataType: "json",
        data: { 
            matricula : matricula,
            nombre : nombre, 
            plan : plan, 
            correo : correo, 
            semestre : semestre,
            activo : activo,
            opcion : opcion
        },
        success: function(data){  
            console.log(data);
            //id = data[0].id;            
           // nombre = data[0].nombre;
           // pais = data[0].pais;
           // edad = data[0].edad;
           // if(opcion == 1){
             //   tablaPersonas.row.add([id,nombre,pais,edad]).draw();}
           // else{
             //   tablaPersonas.row(fila).data([id,nombre,pais,edad]).draw();}            
        }        
    });
    $("#modalCRUD").modal("hide");    
    
});    
});
function getDate(){
    let ahora = new Date();
    var dia = ahora.getDate();
    var mes= ahora.getMonth();
    let res;
    if(mes == 0){
        res= "Enero";
    }else if(mes==1){
        res= "Febrero";
    }else if(mes==2){
        res= "Marzo";
    }else if(mes==3){
        res= "Abril";
    }else if(mes==4){
        res= "Mayo";
    }else if(mes==5){
        res= "Junio";
    }else if(mes==6){
        res= "Julio";
    }else if(mes==7){
        res= "Agosto";
    }else if(mes==8){
        res= "Septiembre";
    }else if(mes==9){
        res= "Octubre";
    }else if(mes==10){
        res= "Noviembre";
    }else if(mes==11){
        res= "Diciembre";
    }
    var anio = ahora.getUTCFullYear();
    return dia +" de " + res +' de '+anio;
}
function head() {
    var doc = new jsPDF();
    doc.setFont('Arial','bold');
    doc.setFontSize(15);
    doc.text(18,16,'Instituto Tecnológico Superior del Occidente del Estado de Hidalgo');
    //linea superior
    doc.setLineWidth(1.1);
    doc.setDrawColor(218,42,18);
    doc.line(15, 19, 198,19);
    //Rectangulo superior
    doc.setDrawColor(0,0,0);
    doc.setLineWidth(.4);
    doc.rect(14, 22, 183,20);
    //Rectangulo Logo
    doc.setDrawColor(0,0,0);
    doc.setLineWidth(.4);
    doc.rect(14, 22, 44.5,20);
    //Logo Escolar
    var logo = new Image();
    logo.src = '../vista/img/sdf.jpg';
    doc.addImage(logo, 'JPEG', 15, 23,43,18);
    //linea Intermedia
    doc.setLineWidth(1.1);
    doc.setLineWidth(.4);
    doc.setDrawColor(0,0,0);
    doc.line(58.5, 31.5, 197,31.5);
    //rectangulo intermedio
    doc.setDrawColor(0,0,0);
    doc.setLineWidth(.2);
    doc.rect(58.5,22,90,20);
    // Titulo
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(62,27,'FICHA DE IDENTIFICACIÓN DE LA/EL TUTORADO');
       // Titulo
    doc.setFont('Arial MT','bold');
    doc.setFontSize(12);
    doc.text(65,38,'Fecha de emisión: ' + getDate());
    //rectangulo intermedio2
    doc.setDrawColor(0,0,0);
    doc.setLineWidth(.4);
    doc.rect(148.5,22,25,20);
    //Eqiqueta codigo
    doc.setFont('Arial','');
    doc.setFontSize(12);
    doc.text(155,28,'Código');
    //Eqiqueta codigo
    doc.setFont('Arial','');
    doc.setFontSize(12);
    doc.text(155,37,'Versión');
    //Codigo
    doc.setFont('Arial','');
    doc.setFontSize(12);
    doc.text(175,28,'P-T-01-F-11');
    //Codigo
    doc.setFont('Arial','');
    doc.setFontSize(16);
    doc.text(183,38,'00');
    return doc;
}
function genPDF(id , programa, matricula, semestre, grupo, fecha , nombre , sexo) {
     //FICHA DE IDENTIFICACIÓN DE LA/EL TUTORADO
    doc = head();
     //Rectangulo superior
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 48, 184.5,60);
    //Rectangulo Datos generales
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 48, 184.5,7);
    // Titulo
    doc.setFont('Arial','bold');
    doc.setFontSize(11);
    doc.text(62,53,'FICHA DE IDENTIFICACIÓN DE LA/EL TUTORADO');
    //Rectangulo Datos generales
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 55, 184.5,9);
    //Eqiqueta codigo
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(23,58.5,'Programa \nEducativo:');
    //Rectangulo Datos generales
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 55, 35,9);
      //Rectangulo Datos generales
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 55, 133,9);
     //Eqiqueta codigo
    doc.setFont('Times New Roman','');
    doc.setFontSize(10);
    doc.text(58,60,programa);
    //Eqiqueta codigo
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(149,60,'Matricula');
    //Rectangulo Matricula
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 55, 154,9);
    //Eqiqueta codigo
    doc.setFont('Times New Roman','');
    doc.setFontSize(10);
    doc.text(170,60,matricula);

    //Rectangulo Datos generales
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 64, 184.5,7);
    //Rectangulo Datos generales s1
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 64, 24,7);
    //
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(19,69,'Semestre:');
    //Rectangulo Datos generales s2
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 64, 60,7);
    //
    doc.setFont('Times New Roman','');
    doc.setFontSize(10);
    doc.text(54,69,semestre);
     //Rectangulo Datos generales s3
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 64, 90,7);
    //
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(79,69,'Grupo:');
    //Rectangulo Datos generales s3
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 64, 115,7);
    //
    doc.setFont('Times New Roman','');
    doc.setFontSize(10);
    doc.text(114,69,grupo);
    //Rectangulo Datos generales s4
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 64, 140,7);
    //
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(135,69,'Fecha:');
    //fecha
    doc.setFont('Times New Roman','');
    doc.setFontSize(10);
    doc.text(163,69,fecha);
    //Rectangulo Datos generales s4
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 71, 184.5,7);
    //Datos Generales
    doc.setFont('Arial','bold');
    doc.setFontSize(16);
    doc.text(91,76,'Datos Generales');
    //Rectangulo Datos generales s4
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 78, 184.5,6);
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 78, 160,6);
     //Datos Generales nombre
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(69,82,'Nombre de la/el estudiante:');
    //nombre
    doc.setFont('Times New Roman','');
    doc.setFontSize(10);
    doc.text(74,88,nombre);
    //
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(180,82,'Sexo');
    
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 84, 184.5,6);
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4);
    doc.rect(13.5, 84, 160,6);
    doc.setFont('Times New Roman','');
    doc.setFontSize(10);
    doc.text(184,88,sexo);


    doc.save('FichadeIdentificacion'+ id +'.pdf');
}
$(document).ready(function(){
    tablaPersonas = $("#tablaPersonas2").DataTable({
        "columnDefs":[{
        "targets": -1,
        "data":null,
        "defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-danger generarPDF'>Exportar PDF</button></div></div>"   
    }], 
    "language": {
            "lengthMenu": "Mostrar _MENU_ registros",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            "infoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sSearch": "Buscar:",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast":"Último",
                "sNext":"Siguiente",
                "sPrevious": "Anterior"
            },
            "sProcessing":"Procesando...",
        }
    });

//botón BORRAR
$(document).on("click", ".generarPDF", function(){    
    id = parseInt($(this).closest("tr").find('td:eq(0)').text());
    fila = $(this).closest("tr");
    nombre = fila.find('td:eq(1)').text();
    opcion = 4; //borrar

    Swal.fire({
        title: '¿Desea exportar PDF de :?',
        text: nombre,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Descargar!'
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire(
                'Descarga Exitosa!',
                'Your file has been download.',
                'success'
                );
                $.ajax({
                    url: "bd/intento1.php",
                    type: "POST",
                    dataType: "json",
                    data: {opcion:opcion, id:id},
                    success: function(data){
                        console.log(data);
                        let aux = data.length;
                        if(aux<1){
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Alumno sin ficha de Identificacion!',
                                footer: '<a href="">Why do I have this issue?</a>'
                            });
                        }else{
                            programa = data[0].ANG_PRO_EDUCATIVO;
                            matricula = data[0].ANG_MATRICULA;
                            semestre = data[0].ANG_SEMESTRE;
                            grupo = data[0].ANG_GRUPO;
                            fecha_apli = data[0].ANG_FEC_APL;
                            sexo = data[0].ANG_SEXO;
                            
                            genPDF(id,programa,matricula,semestre,grupo,fecha_apli,nombre,sexo);
                        }   
                    }
                });
            }
        });
});

});



