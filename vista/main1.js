
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
$("#btnGuardar").click(function(){  
    matricula = $("#matricula").val();
    nombre = $("#nombre").val();
    plan = $("#plan-academico").val();
    correo = $("#correo").val();
    semestre = $("#semestre").val();
    activo = $("#activo").val();
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
            matricula = data[0].AL_MATRICULA;
            nombre = data[0].AL_NOM_ALUMNO;
            semestre = data[0].AL_SEMESTRE;
            correo = data[0].ALCORREO;
            
            if(opcion == 1){
                tablaPersonas.row.add([matricula,nombre,semestre,correo]).draw();
            }else{
                tablaPersonas.row(fila).data([matricula,nombre,semestre,correo]).draw();
            }  
        }
        
    });
    $("#modalCRUD").modal("hide");  
});    
//botón BORRAR
$(document).on("click", ".btnBorrar", function(){    
    fila = $(this);
    matricula = parseInt($(this).closest("tr").find('td:eq(0)').text());
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
            }
        });
    } 
    location.reload();  
});
});
var doc = new jsPDF();
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
            return doc;
}
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

    return doc;
}
function genPDF(
    id , programa, matricula, semestre, grupo, fecha , nombre , sexo, correo,telcasa , telmovil,fechanac , lugarnac , estadocivil , domicilioa , tienehijos, cuantos,
    escolaridad,especialidad,nom_inst,promedio,beca,tipobeca,cual,vive_con,
    pro_salud,angs_especifique, tiposangre,alergias,tipo_alergia

    ) {
     //FICHA DE IDENTIFICACIÓN DE LA/EL TUTORADO
    doc = head();
    doc = body_ant_generales(programa, matricula, semestre, grupo, fecha , nombre , sexo, correo,telcasa , telmovil,fechanac , lugarnac , estadocivil , domicilioa , tienehijos, cuantos);
    doc = body_ant_escolares(escolaridad,especialidad,nom_inst,promedio,beca,tipobeca,cual,vive_con);
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
    doc.addPage();
    doc = head();
    setTimeout(() => {
        doc.save('FichadeIdentificacion'+ id +'.pdf');
    }, 1000);
   
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
    auxtemp =0;
    auxtempinfo = 0;
    $(document).on("click", "#btnMapa", function(){
        opcion = 2;
        $(".modal-header").css("background-color", "#4e73df");
        $(".modal-header").css("color", "white");
        $(".modal-title").css(" text-align", "center");
        $(".modal-title").text("Geolocalizacion");     
        $("#modalCRUD").modal("show");  
        $("#modalCRUD").on('shown.bs.modal', function () {    
            if (auxtemp < 1 ) {
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
            
            $.ajax({
                url: "bd/intento1.php",
                type: "POST",
                dataType: "json",
                data: {opcion:opcion},
                success: function(data){
                    opcion = 5;
                    var marcadores = [];
                    console.log(data);  
                    tam = data.length;
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
                                        var br = document.createElement("br");
                                        br.setAttribute('id','id__br');
                                        var br1 = document.createElement("br");
                                        br1.setAttribute('id','id__br1');

                                        
                                        nom__alumno.setAttribute('id','id__nombre');
                                        nom__alumno.innerHTML ="Alumn@: " + data[0].ANG_NOMBRE + "<br />";
                                        
                                        calle__alumno.setAttribute('id','id__calle');
                                        calle__alumno.innerHTML = "Calle: " + data[0].ANLO_CALLE + "<br />";
                                        
                                        municipio__alumno.setAttribute('id','id__municipio');
                                        municipio__alumno.innerHTML = "Municipio: " + data[0].ANLO_MUNICIPIO + "<br />";

                                        document.getElementById('body').appendChild(nom__alumno);
                                        document.getElementById('body').appendChild(br);
                                        document.getElementById('body').appendChild(calle__alumno);
                                        document.getElementById('body').appendChild(br1);
                                        document.getElementById('body').appendChild(municipio__alumno);
                                        auxtempinfo ++;
                                    }
                                }
                            });
                            jQuery('#modalUsuario').on('hidden.bs.modal', function (e) {
                                auxtempinfo--;
                                var a = document.getElementById('id__nombre');
                                var b = document.getElementById('id__calle');
                                var c = document.getElementById('id__municipio');
                                var d = document.getElementById('id__br');
                                var e = document.getElementById('id__br1');
                                if(a && b && c && d && e){            
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
                                        
                                    }
                            });
                           
                            const bubble = new H.ui.InfoBubble(event.target.getGeometry(), {
                                 content: event.target.getData()});
                             ui.addBubble(bubble);
                            }, false);
                             //por utimo agregamos al mapa el objeto marcadores para  poder visualizar el ma    
                        map.addObject(marcadores[i]);  
                     }
                }
            });
            auxtemp++;
            console.log(auxtemp);
        }
        });
    });
    jQuery('#modalCRUD').on('hidden.bs.modal', function (e) {
        auxtemp--;
        var a = document.getElementById('id__nombre');
        var b = document.getElementById('id__calle');
        var c = document.getElementById('id__municipio');
        var d = document.getElementById('id__br');
        var e = document.getElementById('id__br1');
        if(a && b && c && d && e){            
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
                            escolaridad = data[0].AE_TIPO_ESC;
                            especialidad = data[0].AE_ESPECIALIDAD;
                            nom_inst = data[0].AE_NOM_ESC;
                            promedio = data[0].AE_PROMEDIO;
                            beca = data[0].AE_BECA;
                            tipobeca = data[0].AE_TIPO_BECA;
                            cual =  data[0].AE_OTRO_TB;
                            vive_con = data[0].AE_VIVE_CON;
                            pro_salud = data[0].ANGS_PRO_SALUD
                            angs_especifique = data[0].ANGS_ESPECIFIQUE;
                            tiposangre = data[0].ANGS_TIP_SANGRE;
                            alergias = data[0].ANGS_ALERGIAS;
                            tipo_alergia = data[0].ANGS_TIP_ALERGIA;
                                genPDF(id,programa,matricula,semestre,grupo,
                                    fecha_apli,nombre,sexo,correo,telcasa,
                                    telmovil,fechanac,lugarnac,estadocivil,
                                    domicilioa,hijos,cuantos,escolaridad,especialidad
                                    ,nom_inst,promedio,beca,tipobeca,cual,vive_con,
                                    pro_salud,angs_especifique,tiposangre,alergias,tipo_alergia);
                    
                           
                        }   
                    }
                });
            }
        });
    
});
    
});



