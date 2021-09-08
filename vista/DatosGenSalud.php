<?php require_once "Registros/control/in_Escolares.php"?>
<?php require_once "vistas/parte_superiorAlumno.php"?>
<link rel="stylesheet" href="../vista/estilos/s_GenSalud.css" />
<!--INICIO del cont principal-->
<script>        
            function crearInput(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especifique');
                x.setAttribute('class','controls');
                x.setAttribute('name','Especifique1');
                x.setAttribute('id','id_Especificacion');
                document.getElementById('esc1').appendChild(x); 
                document.getElementById("radio1").disabled=true;    
            }
            function crearotro(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especifique');
                x.setAttribute('class','controls');
                x.setAttribute('name','Especifique2');
                x.setAttribute('id','id_Especificacion2');
                document.getElementById('esc3').appendChild(x); 
                document.getElementById("radio11").disabled=true;    
            }
            function crearotro1(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especifique3');
                x.setAttribute('class','controls');
                x.setAttribute('name','Especifique');
                x.setAttribute('id','id_Especificacion3');
                document.getElementById('div').appendChild(x); 
                document.getElementById("radio15").disabled=true;    
            }
            function Eliminar(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio1").disabled=false;                 
                    }
                }
                function Eliminar3(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio11").disabled=false;                 
                    }
                }
                function Eliminar4(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio15").disabled=false;                 
                    }
                }
                function habilitar(id,id2,id3,id4){
                document.getElementById(id).disabled=false; 
                document.getElementById(id2).disabled=false;
                document.getElementById(id3).disabled=false;
                document.getElementById(id4).disabled=false; 
            }
            function desahabilitar(id,id2,id3,id4,id5){
                document.getElementById(id).disabled=true; 
                document.getElementById(id2).disabled=true;
                document.getElementById(id3).disabled=true;
                document.getElementById(id4).disabled=true;
                Eliminar(id5);
                document.querySelectorAll('[name=grup]').forEach((x) => x.checked = false);
            }
</script>
<div class="container" id='container'>
    <h1 style="text-align: center;">Ficha de identificación</h1>
    <h3 style="text-align: center;">Datos Generales de Salud</h3>
    <form  method = 'post' action= 'DatosLaborales.php' >
        <section class="form-register">
            <div id='cam1'>
        <div id ='esc1'>
            <label class ='label'>¿Presentas algun problema de salud que requiere cuidado o manejo especial?</label><br>
            <label class='label'>(</label><input  type='radio' id='radio1' name='grupo' value="si" onclick='crearInput()' ><label class='label'>) Si</label>  &nbsp &nbsp &nbsp
            <label class='label'>(</label><input  type='radio' id='radio2' name='grupo' value="no" onclick="Eliminar('id_Especificacion')"><label class='label'>) No</label><br>
        </div>
        <label class="label">Tipo de Sangre: </label>
        <select class="controls" name="sangre" id="sangre">
            <option value="O+">O+</option>  
            <option value="0-">O-</option>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
        </select>
        <div id ='esc3'>
            <label class ='label'>Alergias</label><br>
            <label class='label'>(</label><input  type='radio' id='radio6' name='gru' value="SI" onclick="habilitar('radio8','radio9','radio10','radio11')" ><label class='label'>) Si</label>  &nbsp &nbsp &nbsp
            <label class='label'>(</label><input  type='radio' id='radio7' name='gru' value="NO" onclick="desahabilitar('radio8','radio9','radio10','radio11','id_Especificacion2')"  ><label class='label'>) No</label><br>
            <label class='label'>Eres Alergico a:</label><br>
            <label class='label'>(</label><input type='radio' id='radio8' disabled='true' value="Medicamentos" name='grup' onclick="Eliminar3('id_Especificacion2')"><label class='label'>) Medicamentos</label><br>
            <label class='label'>(</label><input type='radio' id='radio9' disabled='true' value="Aliementos" name='grup' onclick="Eliminar3('id_Especificacion2')"><label class='label'>) Alimentos</label><br>
            <label class='label'>(</label><input type='radio' id='radio10' disabled='true' value="Animales" name='grup' onclick="Eliminar3('id_Especificacion2')"><label class='label'>) Animales</label><br>
            <label class='label'>(</label><input type='radio' id='radio11' disabled='true' value="Otro" name='grup' onclick='crearotro()'><label class='label'>) Otros:</label><br>
        </div>
    </div>
    <div id='cam2'> 
        <div id="div">
            <label class ='label'>Presentas alguna Discapacidad?</label><br>
            <label class ='label'>Sensorial:</label><br>
            <label class='label'>(</label><input type='radio' id='radio12'  value="Visual" name='grupo2' onclick="Eliminar4('id_Especificacion3')"><label class='label'>) Visual</label><br>
            <label class='label'>(</label><input type='radio' id='radio13' value="Auditiva" name='grupo2' onclick="Eliminar4('id_Especificacion3')"><label class='label'>) Auditiva</label><br>
            <label class='label'>(</label><input type='radio' id='radio14' value="Táctica" name='grupo2' onclick="Eliminar4('id_Especificacion3')"><label class='label'>) Táctica</label><br>
            <label class='label'>(</label><input type='radio' id='radio15'  value="Motora" name='grupo3' onclick='crearotro1()'><label class='label'>) Motora :</label><br>
        </div>
        <label class ='label'>Temporal:</label><br>
        <label class='label'>(</label><input type='radio' id='radio16' value="Transistoria" name='grupo4'><label class='label'>) Transitoria</label><br>
        <label class='label'>(</label><input type='radio' id='radio17'  value="Definitiva" name='grupo4'><label class='label'>) Definitiva </label><br>
        <label class ='label'>Por su tipo es:</label><br>
        <label class='label'>(</label><input type='radio' id='radio18' value="Parcial" name='grupo5' ><label class='label'>) Parcial</label><br>
        <label class='label'>(</label><input type='radio' id='radio19'  value="Total" name='grupo5' ><label class='label'>) Total </label><br>       
    </div>
        <div id='boton'> 
        <button  type="submit" class="button buttons4">Siguiente</button>
        </div>
    </section>
</form>
</div>

<!--FIN del cont principal-->

<?php require_once "vistas/parte_inferior.php"?>

