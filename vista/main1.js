
$(document).ready(function(){

    tablaPersonas = $("#tablaPersonas").DataTable({
        "columnDefs":[{
        "targets": -1,
        "data":null,
        "defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-success btnEditar '>Editar</button><button class='btn btn-danger btnBorrar' >Borrar</button></div></div>"  
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
    matricula = parseInt(fila.find('td:eq(0)').text());
    nombre = fila.find('td:eq(1)').text();
    semestre = fila.find('td:eq(2)').text();
    correo = fila.find('td:eq(3)').text();
    $("#matricula").val(matricula);
    $("#nombre").val(nombre);
    $("#semestre").val(semestre);
    $("#correo").val(correo);
    opcion = 2; //editar
    
    $(".modal-header").css("background-color", "#4e73df");
    $(".modal-header").css("color", "white");
    $(".modal-title").text("Editar Persona");            
    $("#modalCRUD").modal("show");  
    
});
$("#btnGuardar").click(function(e){   
    e.preventDefault(); 
    matricula = $.trim($("#matricula").val());
    nombre = $.trim($("#nombre").val());
    plan = $.trim($("#plan-academico").val());
    correo = $.trim($("#correo").val());
    semestre = $.trim($("#semestre").val());
    activo = $.trim($("#activo").val());
    $.ajax({
        type : 'POST',
        url:'../vista/bd/crud.php',
        data: {
            matricula : matricula,
            nombre : nombre,
            plan : plan,
            correo : correo,
            semestre : semestre,
            activo: activo,
            opcion: opcion
        },
        dataType: 'JSON',
        success: function(data){
            console.log(data);
            matricula = "" +data[0].AL_MATRICULA;
            nombre = "" + data[0].AL_NOM_ALUMNO;
            semestre = "" + data[0].AL_SEMESTRE;
            correo = "" + data[0].AL_CORREO;
            
            if(opcion == 1){
                tablaPersonas.row.add([matricula,nombre,semestre,correo]).draw();
            }else if (opcion == 2){
                tablaPersonas.row(fila).data([matricula,nombre,semestre,correo]).draw();
            }  
        }
        
    });
    
    $("#modalCRUD").modal("hide");  
});    
//botón BORRAR
$(document).on("click", ".btnBorrar", function(){
    fila = $(this);
    matricula = $(this).closest("tr").find('td:eq(0)').text();
    opcion = 3; //borrar
    var respuesta = confirm("¿Está seguro de eliminar el registro: "+matricula+"?");
    if(respuesta){
        $.ajax({
            url: "../vista/bd/crud.php",
            type: "POST",
            dataType: "json",
            data: {opcion:opcion, matricula:matricula},
            success: function(){
                tablaPersonas.row(fila.parents('tr')).remove().draw(); 
                tablaPersonas.ajax.reload();   
            }
        });
        setTimeout(() => {
            window.location.reload();
        }, 2500);
    } 
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
    return dia +" de " + res +' de '+anio;}
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
    return doc;}
function head1() {
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
    return doc;}
function body_ant_generales(programa, matricula, semestre, grupo, fecha , nombre , sexo, correo,telcasa , telmovil,fechanac , lugarnac , estadocivil , domicilioa , tienehijos, cuantos){
     //Rectangulo superior
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 48, 184.5,72.5);
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
     doc.setFontSize(11);
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
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4);
     doc.rect(13.5, 95, 184.5,6);
     
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(44,93.5,'Correo Electrónico');
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(44,99,correo);
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(110,93.5,'Teléfono (casa)');
 
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(114,99,telcasa);
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(160,93.5,'Teléfono (Celular)');
 
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(164,99,telmovil)
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4);
     doc.rect(13.5, 90, 90,11);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4);
     doc.rect(13.5, 90, 138,11);
      //Rectangulo Datos generales s4
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4);
     doc.rect(13.5, 101, 184.5,5);
       //Rectangulo Datos generales s7
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4);
     doc.rect(13.5, 101, 40,10);
 
     doc.setFont('Arial','bold');
     doc.setFontSize(9);
     doc.text(15,105,'Fecha de Nacimiento');
 
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(17,109.5,fechanac)
 
       //Rectangulo Datos generales s7
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4);
     doc.rect(13.5, 101, 110,10);
 
     doc.setFont('Arial','bold');
     doc.setFontSize(9);
     doc.text(78,105,'Lugar de Nacimiento');
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(78,109.5,lugarnac)
     //Rectangulo Datos generales s7
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4);
     doc.rect(13.5, 101, 184.5,10);
     doc.setFont('Arial','bold');
     doc.setFontSize(9);
     doc.text(150,105,'Estado Civil');
 
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(155,109.5,estadocivil);
 
         //Rectangulo Datos generales s7
         doc.setDrawColor(255,149,96);
         doc.setLineWidth(.4);
         doc.rect(13.5, 111, 125,5);
 
            //Rectangulo Datos generales s7
            doc.setDrawColor(255,149,96);
            doc.setLineWidth(.4);
            doc.rect(13.5, 111, 125,9.5);
 
            doc.setFont('Arial','bold');
            doc.setFontSize(10);
            doc.text(55,114.5,'Domicilio Actual');
 
            doc.setFont('Times New Roman','');
            doc.setFontSize(10);
            doc.text(55,119,domicilioa);
 
            doc.setFont('Arial','bold');
            doc.setFontSize(10);
            doc.text(145,114.5,'Hijos');
 
            doc.setFont('Times New Roman','');
            doc.setFontSize(10);
            doc.text(146,119,tienehijos);
 
            doc.setFont('Arial','bold');
            doc.setFontSize(10);
            doc.text(171,114.5,'¿Cuántos?');
            doc.setFont('Times New Roman','');
            doc.setFontSize(10);
            doc.text(175,119,cuantos);
 
            doc.setDrawColor(255,149,96);
            doc.setLineWidth(.4);
            doc.rect(13.5, 111, 150,9.5);

            doc.setDrawColor(255,149,96);
            doc.setLineWidth(.4);
            doc.rect(13.5, 111, 184.5,5);
    return doc;}
function body_ant_escolares(escolaridad,especialidad,nom_inst,promedio,beca,tipobeca,cual,vive_con){
     //Rectangulo superior ant escolares
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 125, 184.5,61);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 125, 184.5,7);
 
     doc.setFont('Arial','bold');
     doc.setFontSize(11);
     doc.text(82,130,'Antecedentes Escolares');
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 125, 184.5,13);
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(15,136,'¿Último grado de estudios?');
 
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(75,136,escolaridad);
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(120,136,"Especialidad");
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 132, 58,6);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 132, 95,6);
     
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 132, 134,6);
 
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(158,136,especialidad);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 132, 184.5,12);
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(80,142,'Nombre de la Institución de Procedencia');
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 132, 184.5,18);
 
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(96,149,nom_inst);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 132, 184.5,24);
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(15,154,'Promedio General del Bachillerato');
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 150, 68,6);
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(90,154,promedio);
     doc.setFont('Times New Roman','');
     doc.setFontSize(10);
     doc.text(160,154,beca);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 150, 93,6);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 150, 140,6);
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(110,154,'Has estado becado');
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(95,160,'Tipo de Beca');
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(16,166,"Federal (  )");
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(40,166,"Estatal (  )");
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(65,166,"Institucional (  )");
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(98,166,"Deportiva (  )");
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(160,166,"Otra (  )");
 
     doc.setFont('Arial','bold');
     doc.setFontSize(10);
     doc.text(150,172,"¿Cuál? ");
 
     if (tipobeca == 'Federal') {
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(30.8,166,"x");
         
     }else if (tipobeca == 'Estatal') {
 
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(54,166,"x");
         
     }else if (tipobeca == 'Institucional') {
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(88,166,"x");
 
     }else if (tipobeca == 'Deportiva') {
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(116.5,166,"x");
 
     }else if (tipobeca == 'Otro') {
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(169.5,166,"x");  
 
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(166,172,cual);  
         
         
     }

     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 132, 184.5,30);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 162, 23,12);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 162, 47,12);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 162, 83,12);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 132, 184.5,48);
 
     doc.setDrawColor(255,149,96);
     doc.setLineWidth(.4); 
     doc.rect(13.5, 132, 184.5,54);
 
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(70,178,'En el transcurso de tus estudios vivirás con:');
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(16,184,"Familia (   )");
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(40,184,"Parientes (   )");
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(70,184,"Compañeros (   )");
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(110,184,"Solo (   )");
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(140,184,"Cambiarás de residencia (  )");
     if(vive_con =='Familia' ){
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(31,184,"x");
     }else if(vive_con == 'Parientes'){
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(58.6,184,"x");
     }else if(vive_con == 'Compañeros'){
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(94.5,184,"x");
     }else if(vive_con == 'Solo'){
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(120.5,184,"x");
 
     }else if(vive_con == 'Cambiaras De Residencia'){
         doc.setFont('Times New Roman','');
         doc.setFontSize(10);
         doc.text(184,184,"x");
     }
 
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 162, 125,12);
 
 
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 132, 184.5,42);
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 180, 24,6);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 180,91,6);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 180,54,6);
    
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 180,117,6);

    return doc;}
function body_ante_gen_salud( pro_salud,angs_especifique, tiposangre,alergias,tipo_alergia,dis_sensorial,dis_motora,esp_motora,dis_sensorial,tipo_dis_temporal){
    //Rectangulo superior ant gen salud
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 191, 184.5,72.5);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 191, 184.5,8);

    doc.setFont('Arial','bold');
    doc.setFontSize(11);
    doc.text(70,196,'Antecedentes Generales de Salud');

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(15,203,'¿Presentas algún problema de \n salud que requiera cuidado o \n manejo especial?');
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 191, 184.5,22);
    
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 199, 55,14);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(125,203,'Si (  )');

    if(pro_salud == "Si"){
        doc.setFont('Times New Roman','');
        doc.setFontSize(10);
        doc.text(130.5,203,'x');

        doc.setFont('Times New Roman','');
        doc.setFontSize(10);
        doc.text(95,207,angs_especifique);
    }else if(pro_salud == "No"){
        doc.setFont('Times New Roman','');
        doc.setFontSize(10);
        doc.text(191,203,'x');
    }

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(70,208,'Especifique');

    doc.setLineWidth(.3);
    doc.setDrawColor(0,0,0);
    doc.line(90, 209, 170, 209);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 199, 166,14);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(184,203,'No (  )');

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(15,216.5,'Tipo de sangre');

    doc.setFont('Times New Roman','');
    doc.setFontSize(10);
    doc.text(80,216.5,tiposangre);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 191, 184.5,28);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 213, 35,6);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 219, 184.5,6);
    doc.setFont('Arial','bold');
    doc.setFontSize(11);
    doc.text(95,223,'Alergias');

    doc.setFont('Arial','bold');
    doc.setFontSize(11);
    doc.text(45,229,'Si (  )');

    doc.setFont('Arial','bold');
    doc.setFontSize(11);
    doc.text(144,229,'No (  )');
    if(alergias == "Si"){
        doc.setFont('Times New Roman','');
        doc.setFontSize(10);
        doc.text(51,229,'x');
    }else if( alergias == "No"){
        doc.setFont('Times New Roman','');
        doc.setFontSize(10);
        doc.text(152,229,'x');
    }
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 225, 184.5,6);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 225, 80,6);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(15,234.8,'Medicamentos (  )');
    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(13.5, 231, 40,6);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(60,234.8,'Alimentos (  )');

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(13.5, 231, 80,6);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(110,234.8,'Animales (  )');
    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(13.5, 231,145,6);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(177,234.8,'Otros (  )');
    if (tipo_alergia == 'Medicamentos') {
        doc.setFont('Arial','');
        doc.setFontSize(10);
        doc.text(41.5,234.8,'x');
    } else if(tipo_alergia == "Alimentos" ) {
        doc.setFont('Arial','');
        doc.setFontSize(10);
        doc.text(79.3,234.8,'x');
        
    }else if(tipo_alergia == "Animales" ) {   
        doc.setFont('Arial','');
        doc.setFontSize(10);
        doc.text(128,234.8,'x');

    }else if(tipo_alergia == "Otros" ) {
        doc.setFont('Arial','');
        doc.setFontSize(10);
        doc.text(188.5,234.8,'x');
    }

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(13.5, 231, 184.5,6);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(15,241.8,'Especifique:');

    doc.setLineWidth(.3);
    doc.setDrawColor(0,0,0);
    doc.line(39, 242, 195, 242);

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(13.5, 237, 184.5,6);

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(13.5, 231, 184.5,22);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(15,248,'Presenta alguna \n Discapacidad');

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(13.5, 243, 30,10);

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(70,246,'Sensorial');

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(145,246,'Motora (  )');

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(43.5, 243, 154.5,5);

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(43.5, 243, 70,10);

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(43.5, 248, 47,5);

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(43.5, 248, 23,5);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(70,252,'Auditiva (  )');

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(47,252,'Visual (  )');

    if (dis_sensorial == 'Auditiva') {
        doc.setFont('Arial','');
        doc.setFontSize(11);
        doc.text(86,252,'x');        
    } else if(dis_sensorial == 'Visual' ) {
        
        doc.setFont('Arial','');
        doc.setFontSize(11);
        doc.text(59.5,252,'x');
        
    }else if(dis_sensorial == 'Tactil' ) {

        doc.setFont('Arial','');
        doc.setFontSize(11);
        doc.text(106.5,252,'x');
    }

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(50,256,'Temporal');

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(95,252,'Táctil (  )');

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(120,252,'Especifique:');
    if (esp_motora != 'Ninguna') {
        doc.setFont('Times New Roman','');
        doc.setFontSize(10);
        doc.text(145,252,esp_motora);
    }
    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(13.5, 253, 184.5,5);

    doc.setDrawColor(255,149,96);    
    doc.setLineWidth(.4); 
    doc.rect(13.5, 253, 100,10.5);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(140,256,'Por su tipo es:');

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(125,262,'Parcial (   ) ');

    if(tipo_dis_temporal == 'Parcial' ){
        doc.setFont('Arial','');
        doc.setFontSize(11);
        doc.text(139.5,262,'x');
    }else if(tipo_dis_temporal == 'Total'){
        doc.setFont('Arial','');
        doc.setFontSize(11);
        doc.text(171,262,'x');
    }

    if(dis_sensorial == 'Transitoria' ){
        doc.setFont('Arial','');
        doc.setFontSize(11);
        doc.text(46,262,'x');       
    }else if(dis_sensorial == 'Definitiva'){
        doc.setFont('Arial','');
        doc.setFontSize(11);
        doc.text(79,262,'x');
    }

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(160,262,'Total (   ) ');

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(25,262,'Transitoria (   )');

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(59,262,'Definitiva (    )');

    doc.setLineWidth(1.1);
    doc.setDrawColor(218,42,18);
    doc.line(13, 280, 198,280);

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(187,285,'1');

    if (dis_motora == 'Si') {
        doc.setFont('Arial','');
        doc.setFontSize(11);
        doc.text(157.5,246,'x');
    }
    
    return doc;}
function body_ant_laborales( trabajas,nom_empresa,horario,dep_economica,esp_economica,ing_familiar,ing_personal,esc_padre,est_padre,ocup_padre,esc_madre,est_madre,ocup_madre,dom_familiar){
//Rectangulo superior
doc.setDrawColor(255,149,96);
doc.setLineWidth(.4); 
doc.rect(13.5, 48, 184.5,82);
//Rectangulo Datos generales

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 48, 184.5,7);
// Titulo
doc.setFont('Arial','bold');
doc.setFontSize(11);
doc.text(83,53,'Antecedentes Laborales');

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(85,59.5,'Nombre de la Empresa');

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(180,59.5,'Horario');

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 55, 184.5,6);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 61, 184.5,6);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 61, 18,6);

doc.setFont('Arial','bold');
doc.setFontSize(11);
doc.text(25,59.5,'Trabajas');

doc.setFont('Arial','bold');
doc.setFontSize(10);
doc.text(15,65,'Si (  )');

if(trabajas == 'Si'){

    doc.setFont('Arial','');
    doc.setFontSize(11);
    doc.text(20.5,65,'x');

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(85,65,nom_empresa);

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(180,65,horario);
}else if(trabajas =='No'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(41.5,65,'x');    
}
doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(35,65,'No (  )');

doc.setFont('Arial','bold');
doc.setFontSize(10);
doc.text(15,72,'Depende económicamente de:');

doc.setFont('Arial','');
doc.setFontSize(8);
doc.text(85,69.5,'A cuánto asciende el ingreso \n \t mensual familiar');

doc.setFont('Arial','');
doc.setFontSize(8);
doc.text(135,69.5,'En caso de ser económicamente independiente a\n \t cuánto asciende tu ingreso');

doc.setFont('Arial','bold');
doc.setFontSize(8);
doc.text(15,77,'Padre\n (  )');

if (dep_economica == 'Padre') {
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(16.5,80.3,'x');
    
}else if(dep_economica == 'Madre') {
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(27.5,80.3,'x');
} 
if(dep_economica == 'Desimismo') {
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(45,80.5,'x');  
}else if(dep_economica == 'Otros') {
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(59,83,esp_economica);
    
}
doc.setFont('Arial','bold');
doc.setFontSize(8);
doc.text(26,77,'Madre\n (  )');

doc.setFont('Arial','bold');
doc.setFontSize(8);
doc.text(37,77,'De sí mismo\n \t(  )');

doc.setFont('Arial','bold');
doc.setFontSize(8);
doc.text(55,77,'Otros: Especifica');

//linea superior
doc.setLineWidth(.4);
doc.setDrawColor(0,0,0);
doc.line(56, 85, 78,85);

    //linea superior
doc.setLineWidth(.4);
doc.setDrawColor(0,0,0);
doc.line(85, 84, 120,84);

doc.setLineWidth(.4);
doc.setDrawColor(0,0,0);
doc.line(140, 84, 180,84);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 67, 184.5,7);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 74, 184.5,14);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 74, 66,14);
//
doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 74, 12,14);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 74, 23,14);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 74, 41,14);
//
doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 74, 109,14);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 67, 66,7);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 67, 109,7);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 55, 37,12);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 55, 160,12);

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(88,80,'$');

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(88,80,'$');

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(90,80,ing_familiar);


doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(140,80,'$');

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(143,80,ing_personal);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 88, 184.5,6);

// Titulo
doc.setFont('Arial','bold');
doc.setFontSize(10);
doc.text(80,92,'Grado máximo de estudios de:');

 // Titulo
doc.setFont('Arial','bold');
doc.setFontSize(11);
doc.text(48,98,'Padre');

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(20,103.5,'Prim. (  )   Sec. (  )   Prep. (   )   Tec. (   )   Lic. (   ) \n\t\t No escolarizado (   ) ');
if(esc_padre == 'Prim'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(30,103.5,'x');
}else if(esc_padre == 'Sec'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(43,103.5,'x');
}else if(esc_padre == 'Pre'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(59,103.5,'x');
}else if(esc_padre == 'Tec'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(74,103.5,'x');

}else if(esc_padre == 'Lic'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(87.5,103.5,'x');

}else if(esc_padre == 'No esc'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(60.5,107,'x');
}

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(115,103.5,'Prim. (  )   Sec. (  )   Prep. (   )   Tec. (   )   Lic. (   ) \n\t\t No escolarizado (   ) ');
if(esc_madre == 'Prim'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(125,103.5,'x');

}else if(esc_madre == 'Sec'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(139,103.5,'x');

}else if(esc_madre == 'Pre'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(154,103.5,'x');

}else if(esc_madre == 'Tec'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(169,103.5,'x');

}else if(esc_madre == 'Lic'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(183,103.5,'x');

}else if(esc_madre == 'No esc'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(155.5,107,'x');

}
   // Titulo
doc.setFont('Arial','bold');
doc.setFontSize(11);
doc.text(145,98,'Madre');

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 94, 184.5,6);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 94, 94,6);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 100, 184.5,9);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 100, 94,9);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 109, 184.5,6);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 109, 94,6);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 115, 94,9);

doc.setDrawColor(255,149,96);
doc.setLineWidth(.4);
doc.rect(13.5, 115, 184.5,9);

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(40,112,'Vive (   )      Finado (   )');
if (est_padre == 'Vive') {
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(49,112,'x');
}else if( est_padre == 'Finado'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(70.5,112,'x');
}

doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(132,112,'Vive (   )      Finada (   )');

if (est_madre == 'Vive') {
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(141.5,112,'x');
    
}else if( est_madre == 'Finada'){
    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(162,112,'x');
}
  // Titulo
doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(43,118,'Ocupación:');

// Titulo
doc.setFont('Times New Roman','');
doc.setFontSize(10);
doc.text(43,122,ocup_padre);

// Titulo
doc.setFont('Arial','');
doc.setFontSize(10);
doc.text(140,118,'Ocupación:');
// Titulo
doc.setFont('Times New Roman','');
doc.setFontSize(10);
doc.text(140,122,ocup_madre);
// Titulo
doc.setFont('Arial','bold');
doc.setFontSize(11);
doc.text(15,128,'Domicilio:');

// Titulo
doc.setFont('Times New Roman','');
doc.setFontSize(11);
doc.text(70,128,dom_familiar);
    return doc;}
function body_localizacion(nom_tutor,tel_casa_t,tel_celular_t,domicilio_alum,latitude,logitude){
    // Titulo
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(20,138,'Información que obligatoriamente tiene que proporcionar la/el estudiante y verificada por la/el tutor');
    //Rectangulo superior ant escolares
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 124, 40,6);
    // codigo final del documento
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(15,145,'En caso de accidente avisar a: Nombre del padre/madre/tutor (a) ');
    
    doc.setFont('Times New Roman','');
    doc.setFontSize(11);
    doc.text(29,152,nom_tutor);

    doc.setFont('Arial','bold');
    doc.setFontSize(11);
    doc.text(18,160,'Domicilio:');

    doc.setFont('Times New Roman','');
    doc.setFontSize(11);
    doc.text(55,160,domicilio_alum);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 135, 184.5,85);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 162, 35,58);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 135, 184.5,6);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 141, 184.5,15);

    doc.setFont('Arial','bold');
    doc.setFontSize(11);
    doc.text(15,185,'Croquis');
    //Nombre y Firma del Tutor(a)

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(155,265,'Nombre y Firma del Tutor(a)');

    doc.setLineWidth(.4);
    doc.setDrawColor(0,0,0);
    doc.line(138, 260, 198,260);

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(55,185,'http://localhost/ficha/vista/vistas/visual_map.php'+'?lati='+latitude+'&long='+logitude);
    

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 156, 184.5,6);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(13.5, 156, 35,6);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(138, 141,60,5);
 
    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(138, 146,60,5);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(138, 146,15,5);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(138, 151,60,5);

    doc.setDrawColor(255,149,96);
    doc.setLineWidth(.4); 
    doc.rect(138, 151,20,5);
    
    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(165,145,'Telefono');

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(140,149,'Casa:');

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(158,149,tel_casa_t);

    doc.setFont('Arial','bold');
    doc.setFontSize(10);
    doc.text(140,154,'Celular:');

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(164,154.5,tel_celular_t);
    
    doc.setLineWidth(1.1);
    doc.setDrawColor(218,42,18);
    doc.line(13, 280, 198,280);

    doc.setFont('Arial','');
    doc.setFontSize(10);
    doc.text(187,285,'2');

    return doc;}   
function genPDF(
    id , programa, matricula, semestre, grupo, fecha , nombre , sexo, correo,telcasa , telmovil,fechanac , lugarnac , estadocivil , domicilioa , tienehijos, cuantos,
    escolaridad,especialidad,nom_inst,promedio,beca,tipobeca,cual,vive_con,
    pro_salud,angs_especifique, tiposangre,alergias,tipo_alergia,dis_sensorial,dis_motora,esp_motora,dis_sensorial,tipo_dis_temporal,
    trabajas,nom_empresa,horario,dep_economica,esp_economica,ing_familiar,ing_personal,esc_padre,est_padre,ocup_padre,esc_madre,est_madre,ocup_madre,dom_familiar,
    nom_tutor,tel_casa_t,tel_celular_t,domicilio_alum,latitude,logitude
    ) {
     //FICHA DE IDENTIFICACIÓN DE LA/EL TUTORADO
    doc = head();
    doc = body_ant_generales(programa, matricula, semestre, grupo, fecha , nombre , sexo, correo,telcasa , telmovil,fechanac , lugarnac , estadocivil , domicilioa , tienehijos, cuantos);
    doc = body_ant_escolares(escolaridad,especialidad,nom_inst,promedio,beca,tipobeca,cual,vive_con);
    doc = body_ante_gen_salud(pro_salud,angs_especifique, tiposangre,alergias,tipo_alergia,dis_sensorial,dis_motora,esp_motora,dis_sensorial,tipo_dis_temporal);
    doc.addPage();
    doc = head1();
    doc = body_ant_laborales( trabajas,nom_empresa,horario,dep_economica,esp_economica,ing_familiar,ing_personal,esc_padre,est_padre,ocup_padre,esc_madre,est_madre,ocup_madre,dom_familiar);
    doc = body_localizacion(nom_tutor,tel_casa_t,tel_celular_t,domicilio_alum,latitude,logitude);
    setTimeout(() => {
        doc.save('FichadeIdentificacion'+ id +'.pdf');
    }, 4000);   
}
$(document).ready(function(){

    
    tablaPersonas1 = $("#tablaPersonas2").DataTable({
        "columnDefs":[{
        "targets": -1,
        "data":null,
        "defaultContent": "<div class='text-center'><div class='btn-group'><button class='btn btn-danger generarPDF'><i class='bi bi-cloud-arrow-down-fill'></i>  <svg xmlns='http://www.w3.org/2000/svg' width='30' height='30' fill='currentColor' class='bi bi-cloud-arrow-down-fill' viewBox='0 0 16 16'> <path d='M8 2a5.53 5.53 0 0 0-3.594 1.342c-.766.66-1.321 1.52-1.464 2.383C1.266 6.095 0 7.555 0 9.318 0 11.366 1.708 13 3.781 13h8.906C14.502 13 16 11.57 16 9.773c0-1.636-1.242-2.969-2.834-3.194C12.923 3.999 10.69 2 8 2zm2.354 6.854-2 2a.5.5 0 0 1-.708 0l-2-2a.5.5 0 1 1 .708-.708L7.5 9.293V5.5a.5.5 0 0 1 1 0v3.793l1.146-1.147a.5.5 0 0 1 .708.708z'/></svg>    </button><button id='btnMapaindividual' type='button' class='btn text-light btnMapa' data-toggle='modal'><i class='bi bi-geo-alt-fill'></i><svg xmlns='http://www.w3.org/2000/svg' width='30' height='30' fill='currentColor' class='bi bi-geo-alt-fill text-primary' viewBox='0 0 16 16'><path d='M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z'/></svg>"   
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
    auxtemp =0;
    auxtempinfo = 0;
    auxtempmapa = 0;
    dimesion =0;
    var map;
    var marcadores = [];
    $(document).on("click", "#btnMapa", function(){
        opcion = 2;
        $(".modal-header").css("background-color", "#4e73df");
        $(".modal-header").css("color", "white");
        $(".modal-title").css(" text-align", "center");
        $(".modal-title").text("Geolocalizacion");     
        $("#modalCRUD").modal("show"); 
        $("#modalCRUD").on('shown.bs.modal', function () {    
            if (auxtemp < 1 ) {
                if (auxtempmapa < 1) {
                    var itsoehla = 20.20508;
                    var itsoehlong =-99.2226;
                    var lati = 20.21688898553249;
                    var long =-99.20135962073277;
                    var platform = new H.service.Platform({apikey: "uATgVUvD_u3aL87IpdbDu-cUs1zNodOcJnF8YWfvJV0"});
                    var defaultLayers = platform.createDefaultLayers();
                    //Step 2: initialize a map - this map is centered over Europe
                    var map = new H.Map(document.getElementById('map'),
                        defaultLayers.vector.normal.map,{
                        center: {lat:lati, lng:long},
                        zoom: 10,
                    pixelRatio: window.devicePixelRatio || 1});
                    // add a resize listener to make sure that the map occupies the whole container
                    window.addEventListener('resize', () => map.getViewPort().resize());
                    //Step 3: make the map interactive
                    // MapEvents enables the event system
                    // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
                    // Create the default UI components
                    var ui = H.ui.UI.createDefault(map, defaultLayers);
                    var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));   
                    auxtempmapa++;
                }
            $.ajax({
                url: "bd/intento1.php",
                type: "POST",
                dataType: "json",
                data: {opcion:opcion},
                success: function(data){
                    opcion = 5;
                    console.log(data);  
                    tam = data.length;
                    dimesion =tam;
                    for (var i = 0; i < tam; i++) {
                        //recolar informacion de los usuarios por medio del json para crear variables independiestes
                        var lat = data[i].ANLO_LATITUDE;
                        var lon = data[i].ANLO_LOGITUDE;
                        var matricula = data[i].ANLO_AL_MATRICULA;
                        //Generacion de los maracador de usuarios individualment
                        const micasa = new H.map.Marker({lat: lat, lng: lon});
                        //agregramos el marcador en un arreglo dimensional agregamos con el metodo push
                        marcadores.push(micasa);
                        //asignamos la data que trarera individualmente la informacion del usuario
                        marcadores[i].setData(matricula);
                        marcadores[i].addEventListener("tap",
                        event =>{
                            let id = event.target.getData()
                            $(".modal-header1").css("background-color", "#4e73df");
                            $(".modal-header1").css("color", "white");
                            $(".modal-title1").text(event.target.getData());            
                            $("#modalUsuario").modal("show");  
                            $.ajax({
                                url: "bd/intento1.php",
                                type: "POST",
                                dataType: "json",
                                data: {opcion:opcion, id:id},
                                success: function(data){
                                    console.log(data);
                                    if(auxtempinfo < 1 ){
                                        var nom__alumno = document.createElement("label");
                                        var calle__alumno = document.createElement("label");
                                        var municipio__alumno = document.createElement("label");
                                        var nom__tutor = document.createElement("label");
                                        var num__casa =  document.createElement("label");
                                        var num__movil =  document.createElement("label");
                                        var br = document.createElement("br");
                                        br.setAttribute('id','id__br');
                                        
                                        var br1 = document.createElement("br");
                                        br1.setAttribute('id','id__br1');
                                        
                                        var br2 = document.createElement("br");
                                        br2.setAttribute('id','id__br2');
                                        
                                        var br3 = document.createElement("br");
                                        br3.setAttribute('id','id__br3');
                                        
                                        var br4 = document.createElement("br");
                                        br4.setAttribute('id','id__br4');

                                        nom__alumno.setAttribute('id','id__nombre');
                                        nom__alumno.innerHTML ="Alumn@: " + data[0].ANG_NOMBRE;
                                    
                                        calle__alumno.setAttribute('id','id__calle');
                                        calle__alumno.innerHTML = "Calle: " + data[0].ANLO_CALLE;
                                        
                                        municipio__alumno.setAttribute('id','id__municipio');
                                        municipio__alumno.innerHTML = "Municipio: " + data[0].ANLO_MUNICIPIO;

                                        nom__tutor.setAttribute('id','id__nomTutor');
                                        nom__tutor.innerHTML = "Tutor: " + data[0].ANLO_NOM_TUTOR;

                                        num__casa.setAttribute('id','id__numcasa');
                                        num__casa.innerHTML = "No. de Casa: " + data[0].ANLO_TEL_CASA;

                                        num__movil.setAttribute('id','id__numMovil');
                                        num__movil.innerHTML = "No. de Celular: " + data[0].ANLO_TEL_MOVIL;

                                        document.getElementById('body').appendChild(nom__alumno);
                                        document.getElementById('body').appendChild(br);
                                        document.getElementById('body').appendChild(calle__alumno);
                                        document.getElementById('body').appendChild(br1);
                                        document.getElementById('body').appendChild(municipio__alumno);
                                        document.getElementById('body').appendChild(br2);
                                        document.getElementById('body').appendChild(nom__tutor);
                                        document.getElementById('body').appendChild(br3);
                                        document.getElementById('body').appendChild(num__casa);
                                        document.getElementById('body').appendChild(br4);
                                        document.getElementById('body').appendChild(num__movil);
                                        auxtempinfo ++;
                                    }
                                }
                            });
                            jQuery('#modalUsuario').on('hidden.bs.modal', function (event) {
                                auxtempinfo--;
                                var a = document.getElementById('id__nombre');
                                var b = document.getElementById('id__calle');
                                var c = document.getElementById('id__municipio');
                                var d = document.getElementById('id__br');
                                var e = document.getElementById('id__br1');
                                var f = document.getElementById('id__br2');
                                var g = document.getElementById('id__br3');
                                var h = document.getElementById('id__br4');
                                var i = document.getElementById('id__nomTutor');
                                var j = document.getElementById('id__numcasa');
                                var k = document.getElementById('id__numMovil');
                                if(a && b && c && d && e && f && g && h && i && j && k){            
                                    padre = a.parentNode;
                                    padre.removeChild(a);
                                    padre1 = b.parentNode;
                                    padre1.removeChild(b);
                                    padre2 = c.parentNode;
                                    padre2.removeChild(c);
                                    padre3 = d.parentNode;
                                    padre3.removeChild(d);
                                    padre4 = e.parentNode;
                                    padre4.removeChild(e);
                                    padre5 = f.parentNode;
                                    padre5.removeChild(f);
                                    padre6 = g.parentNode;
                                    padre6.removeChild(g);
                                    padre7 = h.parentNode;
                                    padre7.removeChild(h);
                                    padre8 = i.parentNode;
                                    padre8.removeChild(i);
                                    padre9 = j.parentNode;
                                    padre9.removeChild(j);
                                    padre10 = k.parentNode;
                                    padre10.removeChild(k);
                                    }
                            });
                            const bubble = new H.ui.InfoBubble(event.target.getGeometry(), {
                                content: event.target.getData()});
                                ui.addBubble(bubble);
                            }, false);
                             //por utimo agregamos al mapa el objeto marcadores para  poder visualizar el ma 
                        unsolomarcador = 0;
                        if (unsolomarcador <1) {
                            map.addObject(marcadores[i]);  
                            unsolomarcador++;
                        }
                    }
                }
            });
            auxtemp++;
            console.log(auxtemp);
        }
        });
    });
    jQuery('#modalCRUD').on('hidden.bs.modal', function (event) {
        auxtemp--;
        for (let i = 0; i < dimesion; i++) {
           marcadores.pop(i);
        
        }
        var a = document.getElementById('id__nombre');
        var b = document.getElementById('id__calle');
        var c = document.getElementById('id__municipio');
        var d = document.getElementById('id__br');
        var e = document.getElementById('id__br1');
        var f = document.getElementById('id__br2');
        var g = document.getElementById('id__br3');
        var h = document.getElementById('id__br4');
        var i = document.getElementById('id__nomTutor');
        var j = document.getElementById('id__numcasa');
        var k = document.getElementById('id__numMovil');
        if(a && b && c && d && e && f && g && h && i && j && k){            
            padre = a.parentNode;
            padre.removeChild(a);
            padre1 = b.parentNode;
            padre1.removeChild(b);
            padre2 = c.parentNode;
            padre2.removeChild(c);
            padre3 = d.parentNode;
            padre3.removeChild(d);
            padre4 = e.parentNode;
            padre4.removeChild(e);
            padre5 = f.parentNode;
            padre5.removeChild(f);
            padre6 = g.parentNode;
            padre6.removeChild(g);
            padre7 = h.parentNode;
            padre7.removeChild(h);
            padre8 = i.parentNode;
            padre8.removeChild(i);
            padre9 = j.parentNode;
            padre9.removeChild(j);
            padre10 = k.parentNode;
            padre10.removeChild(k);
            }
    });
//botón BORRAR
$(document).on("click", ".generarPDF", function(){    
    id = parseInt($(this).closest("tr").find('td:eq(0)').text());
    fila = $(this).closest("tr");
    nombre = fila.find('td:eq(1)').text();
    opcion = 4; //borrar
    //alerta dinamica con Swal
    Swal.fire({
        title: '¿Desea exportar PDF?',
        text: nombre,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Descargar!'
    }).then((result) => {
        if (result.isConfirmed) {
            //si el administrador confirma procede a descargar el pdf gener
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
                            //antecedentes generales
                            programa = data[0].ANG_PROG_EDUCATIVO;
                            matricula = data[0].ANG_MATRICULA;
                            semestre = data[0].ANG_SEMESTRE;
                            grupo = data[0].ANG_GRUPO;
                            fecha_apli = data[0].ANG_FECHA_APL;
                            sexo = data[0].ANG_SEXO;
                            correo = data[0].ANG_CORREO;
                            telcasa = data[0].ANG_TELCASA;
                            telmovil = data[0].ANG_TELMOVIL;
                            fechanac = data[0].ANG_FECHA_NAC;
                            lugarnac = data[0].ANG_LUGAR_NAC;
                            estadocivil = data[0].ANG_EST_CIVIL;
                            domicilioa =  data[0].ANG_DOMICILIO;
                            hijos = data[0].ANG_HIJOS,
                            cuantos =  data[0].ANG_CUANTOS,
                            //antecedentes escolares
                            escolaridad = data[0].AE_TIPO_ESC;
                            especialidad = data[0].AE_ESPECIALIDAD;
                            nom_inst = data[0].AE_NOM_ESC;
                            promedio = data[0].AE_PROMEDIO;
                            beca = data[0].AE_BECA;
                            tipobeca = data[0].AE_TIPO_BECA;
                            cual =  data[0].AE_OTRO_TB;
                            vive_con = data[0].AE_VIVE_CON;
                            //antecedentes Generales de salud
                            pro_salud = data[0].ANGS_PRO_SALUD
                            angs_especifique = data[0].ANGS_ESPECIFIQUE;
                            tiposangre = data[0].ANGS_TIP_SANGRE;
                            alergias = data[0].ANGS_ALERGIAS;
                            tipo_alergia = data[0].ANGS_TIP_ALERGIA;
                            dis_sensorial = data[0].ANGS_DIS_SENSORIAL;
                            dis_motora = data[0].ANGS_DIS_MOTORA;
                            esp_motora  = data[0].ANGS_ESP_DIS_MOTORA;
                            dis_temporal = data[0].ANGS_DIS_TEMPORAL;
                            tipo_dis_temporal = data[0].ANGS_TIPO_DIS;
                            //Datos de lo calizacion
                            trabajas = data[0].ANL_TRABAJO;
                            nom_empresa = data[0].ANL_NOM_TRABAJO;
                            horario = data[0].ANL_HORARIO;
                            dep_economica = data[0].ANL_DEP_ECONO;
                            esp_economica = data[0].ANL_ESP_DEP;
                            ing_familiar = data[0].ANL_ING_MEN_FAMILIAR;
                            ing_personal = data[0].ANL_ING_MEN_PERSONAL;
                            esc_padre = data[0].ANL_ESC_PADRE;
                            esc_madre = data[0].ANL_ESC_MADRE;
                            est_padre = data[0].ANL_EST_DEF_PA;
                            est_madre = data[0].ANL_EST_DEF_MA;
                            ocup_padre = data[0].ANL_OC_PADRE;
                            ocup_madre = data[0].ANL_OC_MADRE;
                            dom_familiar = data[0].ANL_DOMICILIO;
                            //antecedentes de localizacion
                            nom_tutor = data[0].ANLO_NOM_TUTOR;
                            tel_casa_t = data[0].ANLO_TEL_CASA;
                            tel_celular_t = data[0].ANLO_TEL_MOVIL;
                            calle = data[0].ANLO_CALLE;
                            municipio = data[0].ANLO_MUNICIPIO;
                            estado =  data[0].ANLO_ESTADO;
                            latitude = data[0].ANLO_LATITUDE;
                            logitude = data[0].ANLO_LOGITUDE;
                            domicilio_alum = calle +','+municipio+','+estado;
                            img_mapa = data[0].ANLO_MAP_IMG;


                            //generacion de pdf de la ficha de identificacion
                                genPDF(id,programa,matricula,semestre,grupo,
                                    fecha_apli,nombre,sexo,correo,telcasa,
                                    telmovil,fechanac,lugarnac,estadocivil,
                                    domicilioa,hijos,cuantos,escolaridad,especialidad
                                    ,nom_inst,promedio,beca,tipobeca,cual,vive_con,
                                    pro_salud,angs_especifique,tiposangre,alergias,
                                    tipo_alergia,dis_sensorial,dis_motora,esp_motora,dis_temporal,tipo_dis_temporal,
                                    trabajas,nom_empresa,horario,dep_economica,esp_economica,ing_familiar,ing_personal,
                                    esc_padre,est_padre,ocup_padre,esc_madre,est_madre,ocup_madre,dom_familiar,
                                    nom_tutor,tel_casa_t,tel_celular_t,domicilio_alum,latitude,logitude);
                        }   
                    }
                });
            }
        });
    
});
auxtempmain=0;
//variable auxiliar que permite que el mapa no se este ciclando 
$(document).on("click", "#btnMapaindividual", function(){
    // ecuentra la fila selecciona  por el usuario
    fila = $(this).closest("tr");
    //captura la opcion de consulta 
    opcion = 7;
    //con ayuda de la anterior variable fila obtenemos la matricula del estudiante 
    matricula = parseInt(fila.find('td:eq(0)').text());
    //alerta dinamica para que solo los que cumplan una condiccion sea solo posible visualizar el mapa mientras no?
    Swal.fire({
        //Datos del frame
        title: '¿Visualizar alumno en mapa con matricula?',
        text: matricula,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Ok!'
        // 
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                position: "top-end",
                icon: "success",
                title: "Visualización Exitosa!",
                showConfirmButton: false,
                timer: 2500})
           // Swal.fire(
             //   'Visualización Exitosa!',
               // 'El mapa a cargado correctamente',
               // 'success'
               // );
                $.ajax({
                    url: "bd/intento1.php",
                    type: "POST",
                    dataType: "json",
                    data: {opcion:opcion, id:matricula},
                    success: function(data){
                        console.log(data);
                        let aux = data.length;
                        console.log(aux);
                        if(aux<1){
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'No hay reportes de localización del alumno',
                                footer: '<a>Alumno sin registro de localizacion</a>',
                                showConfirmButton: false,
                                timer: 2500});
                        }else{         
                            if(auxtempmain < 1 ){
                                latitude = data[0].ANLO_LATITUDE;
                                logitude = data[0].ANLO_LOGITUDE;
                                $(".modal-header1").css("background-color", "#4e73df");
                                $(".modal-header1").css("color", "white");
                                $(".modal-title1").text("Localización Individual");            
                                $("#modalmapaindividual").modal("show"); 
                                $("#modalmapaindividual").on('shown.bs.modal', function () {    
                                   
                                        var itsoehla = 20.20508;
                                        var itsoehlong =-99.2226;
                                        var lati = 20.21688898553249;
                                        var long =-99.20135962073277;
                                        var platform = new H.service.Platform({apikey: "uATgVUvD_u3aL87IpdbDu-cUs1zNodOcJnF8YWfvJV0"});
                                        var defaultLayers = platform.createDefaultLayers();
                                        //Step 2: initialize a map - this map is centered over Europe
                                        var map = new H.Map(document.getElementById('bodymapa'),
                                            defaultLayers.vector.normal.map,{
                                            center: {lat:lati, lng:long},
                                            zoom: 13,
                                        pixelRatio: window.devicePixelRatio || 1});
                                        // add a resize listener to make sure that the map occupies the whole container
                                        window.addEventListener('resize', () => map.getViewPort().resize());
                                        //Step 3: make the map interactive
                                        // MapEvents enables the event system
                                        // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
                                        // Create the default UI components
                                        var ui = H.ui.UI.createDefault(map, defaultLayers);
                                        var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));   
                                        
                                        auxtempmain++;
                                        const routerService = platform.getRoutingService();
                                        const ITSOEH = new H.map.Marker({lat: itsoehla, lng: itsoehlong});
                                        ITSOEH.setData('<div><a href="http://www.itsoeh.edu.mx/"  target="_blank">ITSOEH</a></div>');
                                        ITSOEH.addEventListener("pointermove",event =>{const bubble = new H.ui.InfoBubble(
                                        event.target.getGeometry(),
                                        {
                                        content: event.target.getData()
                                        });
                                        ui.addBubble(bubble);}, false);
                                        map.addObject(ITSOEH);

                                        const marker = new H.map.Marker({lat:latitude , lng :logitude});
                                        marker.setData('<div>'+matricula+'</div>');
                                        marker.addEventListener("tap",
                                        event =>{ 
                                            let id = event.target.getData()
                                            opcion = 7;
                                            auxinfo =0;
                                            $(".modal-header2").css("background-color", "#4e73df");
                                            $(".modal-header2").css("color", "white");
                                            $(".modal-title2").text(event.target.getData());            
                                            $("#modalUsuarioindividual").modal("show");
                                            $.ajax({
                                                url: "bd/intento1.php",
                                                type: "POST",
                                                dataType: "json",
                                                data: {opcion:opcion, id:matricula},
                                                success: function(data){
                                                    if (auxinfo < 1) {
                                                        var nom__alumno = document.createElement("label");
                                                        var calle__alumno = document.createElement("label");
                                                        var municipio__alumno = document.createElement("label");
                                                        var nom__tutor = document.createElement("label");
                                                        var num__casa =  document.createElement("label");
                                                        var num__movil =  document.createElement("label");
                                                        var br = document.createElement("br");
                                                        br.setAttribute('id','id__br');
                                                        
                                                        var br1 = document.createElement("br");
                                                        br1.setAttribute('id','id__br1');
                                                        
                                                        var br2 = document.createElement("br");
                                                        br2.setAttribute('id','id__br2');
                                                        
                                                        var br3 = document.createElement("br");
                                                        br3.setAttribute('id','id__br3');
                                                        
                                                        var br4 = document.createElement("br");
                                                        br4.setAttribute('id','id__br4');
    
                                                        nom__alumno.setAttribute('id','id__nombre');
                                                        nom__alumno.innerHTML ="Alumn@: " + data[0].ANG_NOMBRE;
                                                    
                                                        calle__alumno.setAttribute('id','id__calle');
                                                        calle__alumno.innerHTML = "Calle: " + data[0].ANLO_CALLE;
                                                        
                                                        municipio__alumno.setAttribute('id','id__municipio');
                                                        municipio__alumno.innerHTML = "Municipio: " + data[0].ANLO_MUNICIPIO;
    
                                                        nom__tutor.setAttribute('id','id__nomTutor');
                                                        nom__tutor.innerHTML = "Tutor: " + data[0].ANLO_NOM_TUTOR;
    
                                                        num__casa.setAttribute('id','id__numcasa');
                                                        num__casa.innerHTML = "No. de Casa: " + data[0].ANLO_TEL_CASA;
    
                                                        num__movil.setAttribute('id','id__numMovil');
                                                        num__movil.innerHTML = "No. de Celular: " + data[0].ANLO_TEL_MOVIL;
    
                                                        document.getElementById('body1').appendChild(nom__alumno);
                                                        document.getElementById('body1').appendChild(br);
                                                        document.getElementById('body1').appendChild(calle__alumno);
                                                        document.getElementById('body1').appendChild(br1);
                                                        document.getElementById('body1').appendChild(municipio__alumno);
                                                        document.getElementById('body1').appendChild(br2);
                                                        document.getElementById('body1').appendChild(nom__tutor);
                                                        document.getElementById('body1').appendChild(br3);
                                                        document.getElementById('body1').appendChild(num__casa);
                                                        document.getElementById('body1').appendChild(br4);
                                                        document.getElementById('body1').appendChild(num__movil);  
                                                        auxinfo++;   
                                                    }
                                                   
                                                    jQuery('#modalUsuarioindividual').on('hidden.bs.modal', function (event) {
                                                        auxtempinfo--;
                                                        var a = document.getElementById('id__nombre');
                                                        var b = document.getElementById('id__calle');
                                                        var c = document.getElementById('id__municipio');
                                                        var d = document.getElementById('id__br');
                                                        var e = document.getElementById('id__br1');
                                                        var f = document.getElementById('id__br2');
                                                        var g = document.getElementById('id__br3');
                                                        var h = document.getElementById('id__br4');
                                                        var i = document.getElementById('id__nomTutor');
                                                        var j = document.getElementById('id__numcasa');
                                                        var k = document.getElementById('id__numMovil');
                                                        if(a && b && c && d && e && f && g && h && i && j && k){            
                                                            padre = a.parentNode;
                                                            padre.removeChild(a);
                                                            padre1 = b.parentNode;
                                                            padre1.removeChild(b);
                                                            padre2 = c.parentNode;
                                                            padre2.removeChild(c);
                                                            padre3 = d.parentNode;
                                                            padre3.removeChild(d);
                                                            padre4 = e.parentNode;
                                                            padre4.removeChild(e);
                                                            padre5 = f.parentNode;
                                                            padre5.removeChild(f);
                                                            padre6 = g.parentNode;
                                                            padre6.removeChild(g);
                                                            padre7 = h.parentNode;
                                                            padre7.removeChild(h);
                                                            padre8 = i.parentNode;
                                                            padre8.removeChild(i);
                                                            padre9 = j.parentNode;
                                                            padre9.removeChild(j);
                                                            padre10 = k.parentNode;
                                                            padre10.removeChild(k);
                                                            }
                                                    });

                                                }
                                            });
                                            const bubble = new H.ui.InfoBubble(
                                            event.target.getGeometry(), {
                                                content: event.target.getData()
                                            });
            
                                                ui.addBubble(bubble);
                                            }, false);
                                        map.addObject(marker);
                                        const routingline = new H.geo.LineString();
                                        const params ={
                                        mode : "fastest;car;traffic:enabled",
                                        waypoint0: latitude + ","+ logitude,
                                        waypoint1: itsoehla + ","+ itsoehlong,
                                        representation : "display"
                                        };
                                        routerService.calculateRoute(params, 
                                        success=>{
                                            ruta = success.response.route[0].shape;
                                            ruta.forEach(points =>{
                                            let parts = points.split(",");
                                            routingline.pushPoint({
                                            lat: parts[0],
                                            lng: parts[1]
                                            });
                        
                                        });
                                            const rutaestatica = new H.map.Polyline(routingline,{
                                            style:{
                                                lineWidth:5
                                            }
                                            }
                                            );
                                            map.addObject(rutaestatica);  
                                            
                                            console.log(success.response.route[0].shape);
                                        },
                                        error=>{console.log(error);}); 
                            });

            
                            jQuery('#modalmapaindividual').on('hidden.bs.modal', function (e) {
                               window.location.reload();
                            });
                        }
                    }
                    }
                });
            }
        });
   
});
});



