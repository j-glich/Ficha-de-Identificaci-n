<?php require_once "Registros/control/in_Escolares.php"?>
<?php require_once "vistas/parte_superiorAlumno.php"?>
<link rel="stylesheet" href="../vista/estilos/s_GenSalud.css" />
<script src="../vista/js/js_GenSalud.js"></script>
<!--INICIO del cont principal-->
<div class="container" id='container'>
    <h1 style="text-align: center;" class="Titulo__label">Ficha de identificación</h1>
    <h3 style="text-align: center;" class="Subtitulo__label">Datos Generales de Salud</h3>
    <form  method = 'post' action= 'DatosLaborales.php' >
        <section class="form-register">
            <div id='cam1'>
        <div id ='esc1'>
            <label class ='label'>¿Presentas algun problema de salud que requiere cuidado o manejo especial?</label><br>
            <label class='label'>(</label><input  type='radio' id='radio1' name='grupo-al-salud' value="Si" onclick='crearInput()' ><label class='label'>) Si</label>  &nbsp &nbsp &nbsp
            <label class='label'>(</label><input  type='radio' id='radio2' name='grupo-al-salud' value="No" onclick="Eliminar('id_Especificacion','id_eti1')"><label class='label'>) No</label><br>
        </div>
        <br>
        <div id="matricula" class="form">
            <select class="textbox" name="sangre" id="sangre">
                <option value="O+">O+</option>  
                <option value="0-">O-</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
            </select>
            
                    <label class="form_label">Tipo de Sangre:</label>
                </div> 
        <div id ='esc3'>
            <label class ='label'>Alergias</label><br>
            <label class='label'>(</label><input  type='radio' id='radio6' name='gru-alergias' value="Si" onclick="habilitar('radio8','radio9','radio10','radio11')" ><label class='label'>) Si</label>  &nbsp &nbsp &nbsp
            <label class='label'>(</label><input  type='radio' id='radio7' name='gru-alergias' value="No" onclick="desahabilitar('radio8','radio9','radio10','radio11','id_Especificacion2','id_eti2')"  ><label class='label'>) No</label><br>
            <label class='label'>Eres Alergico a:</label><br>
            <label class='label'>(</label><input type='radio' id='radio8' disabled='true' value="Medicamentos" name='grup-ale' onclick="Eliminar3('id_Especificacion2','id_eti2')"><label class='label'>) Medicamentos</label><br>
            <label class='label'>(</label><input type='radio' id='radio9' disabled='true' value="Aliementos" name='grup-ale' onclick="Eliminar3('id_Especificacion2','id_eti2')"><label class='label'>) Alimentos</label><br>
            <label class='label'>(</label><input type='radio' id='radio10' disabled='true' value="Animales" name='grup-ale' onclick="Eliminar3('id_Especificacion2','id_eti2')"><label class='label'>) Animales</label><br>
            <label class='label'>(</label><input type='radio' id='radio11' disabled='true' value="Otros" name='grup-ale' onclick='crearotro()'><label class='label'>) Otros:</label><br>
        </div>
    </div>
    <div id='cam2'> 
        <div id="div">
            <label class ='label'>Presentas alguna Discapacidad?</label><br>
            <label class ='label'>Sensorial:</label><br>
            <label class='label'>(</label><input type='radio' id='radio12'  value="Visual" name='grupo2' onclick="Eliminar4('id_Especificacion3','id_eti3')"><label class='label'>) Visual</label><br>
            <label class='label'>(</label><input type='radio' id='radio13' value="Auditiva" name='grupo2' onclick="Eliminar4('id_Especificacion3','id_eti3')"><label class='label'>) Auditiva</label><br>
            <label class='label'>(</label><input type='radio' id='radio14' value="Táctica" name='grupo2' onclick="Eliminar4('id_Especificacion3','id_eti3')"><label class='label'>) Táctica</label><br>
            <label class='label'>(</label><input type='radio' id='radio15'  value="Si" name='grupo3' onclick='crearotro1()'><label class='label'>) Motora :</label><br>
        </div>
        <label class ='label'>Temporal:</label><br>
        <label class='label'>(</label><input type='radio' id='radio16' value="Transistoria" name='grupo4'><label class='label'>) Transitoria</label><br>
        <label class='label'>(</label><input type='radio' id='radio17'  value="Definitiva" name='grupo4'><label class='label'>) Definitiva </label><br>
        <label class ='label'>Por su tipo es:</label><br>
        <label class='label'>(</label><input type='radio' id='radio18' value="Parcial" name='grupo5' ><label class='label'>) Parcial</label><br>
        <label class='label'>(</label><input type='radio' id='radio19'  value="Total" name='grupo5' ><label class='label'>) Total </label><br>       
    </div>
        <div id='boton'> 
        <button  type="submit" class="button button4">Siguiente</button>
        </div>
    </section>
</form>
</div>

<!--FIN del cont principal-->

<?php require_once "vistas/parte_inferior.php"?>

