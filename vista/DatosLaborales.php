
<?php require_once "Registros/control/in_genSalud.php"?>
<?php require_once "vistas/parte_superiorAlumno.php"?>
<link rel="stylesheet" href="../vista/estilos/s_Laborales.css" />
<!--INICIO del cont principal-->

<div class="container" id='container'>
    <h1 style="text-align: center;" class="Titulo__label">Ficha de identificación</h1>
    <h3 style="text-align: center;" class="Subtitulo__label">Datos Laborales</h3>
    <form  method = 'post' action= 'DatosGeolocalizacion.php'>
    <section class="form-register">
    <div id='cam1'>
            <label class ='label'>Trabajas</label><br>
            <label class='label'>(</label><input  type='radio' id='radio1' onclick ="habilitar('nomEmpresa','horario')" name='grupo' value="Si"><label class='label'>) Si</label>  &nbsp &nbsp &nbsp
            <label class='label'>(</label><input  type='radio' id='radio2' onclick ="desahabilitar('nomEmpresa','horario')" name='grupo' value="No"><label class='label'>) No</label><br>
        <div id="matricula" class="form">
            <input type="text"  required disabled ='true' name="nomEmpresa" id="nomEmpresa" autocomplete="off" placeholder=" " class="textbox">
            <label class="form_label">Nombre de la empresa:</label>
        </div>
        <br>
        <div id="matricula" class="form">
            <input required type="text" disabled ='true' name="horario" id="horario" autocomplete="off" placeholder=" " class="textbox">
            <label class="form_label">Horario:</label>
        </div>
            <div id="esc3">
            <label class ='label'>Depende económicamente de:</label><br>
            <label class='label'>(</label><input type='radio' id='radio8' value="Padre" name='grup' onclick="Eliminar3('id_Especificacion','id_eti1')"><label class='label'>) Padre</label><br>
            <label class='label'>(</label><input type='radio' id='radio9' value="Madre" name='grup' onclick="Eliminar3('id_Especificacion','id_eti1')"><label class='label'>) Madre</label><br>
            <label class='label'>(</label><input type='radio' id='radio10'value="De si mismo" name='grup' onclick="Eliminar3('id_Especificacion','id_eti1')"><label class='label'>) De sí mismo</label><br>
            <label class='label'>(</label><input type='radio' id='radio11'value="Otros" name='grup' onclick='crearotro()'><label class='label'>) Otros:</label><br>
            </div>   
            <br>
            <label class='label'>A cuánto asciende el ingreso mensual familiar: </label>
        <div id="matricula" class="form">
            <input type="text" onkeypress="return solonumeros(event)" maxlength="6" name="IngresoFamiliar" id="IngresoFamiliar" autocomplete="off" placeholder=" " class="textbox">
            <label class="form_label">$</label>
        </div>
            
    </div>
    <div id='cam2'> 
            <label class='label'>En caso de ser económicamente independiente a cuánto asciende tu ingreso: </label>
            <div id="matricula" class="form">
            <input type="text"  onkeypress="return solonumeros(event)" maxlength="6" name="IngresoPersonal" id="IngresoPersonal" autocomplete="off" placeholder=" " class="textbox">
            <label class="form_label">$</label>
        </div>
       <br>
       <div id="matricula" class="form">
            <input type="text" required name="domicilio" id="domicilio" autocomplete="off" placeholder=" " class="textbox">
            <label class="form_label">Domicilio:</label>
    </div>
            <label class='label'>Grado máximo de estudios de: </label>
            <div id='contened'>
                <div id="div1">
                    <label class ='label' style="text-align: center;">Padre:</label><br>
                    <label class='label'>(</label><input type='radio' id='radio12' value="Prim" name='grup1' ><label class='label'>) Prim.</label><br>
                    <label class='label'>(</label><input type='radio' id='radio13' value="Sec" name='grup1' ><label class='label'>) Sec.</label><br>
                    <label class='label'>(</label><input type='radio' id='radio14' value="Pre" name='grup1' ><label class='label'>) Pre.</label><br>
                    <label class='label'>(</label><input type='radio' id='radio15' value="Tec" name='grup1' ><label class='label'>) Tec.</label> <br>
                    <label class='label'>(</label><input type='radio' id='radio16' value="Lic" name='grup1' ><label class='label'>) Lic.</label> <br>
                    <label class='label'>(</label><input type='radio' id='radio17' value="No esco" name='grup1' ><label class='label'>) No escolarizado.</label><br>
                    <label class='label'>(</label><input type='radio' id='radio18' value="Vive" name='grup2' ><label class='label'>) Vive</label>
                    <label class='label'>(</label><input type='radio' id='radio19' value="Finado" name='grup2' ><label class='label'>) Finado</label><br> 
                    <div id="matricula" class="form">
                    <input required type="text"  name="OcupacionPadre" id="OcupacionPadre" autocomplete="off" placeholder=" " class="textbox">
                    <label class="form_label">Ocupacion:</label>
                </div>  
            </div>
            <div id="div2">
            <label class ='label' style="text-align: center;">Madre:</label><br>
            <label class='label'>(</label><input type='radio' id='radio20' value="Prim" name='grup3' ><label class='label'>) Prim.</label><br>
            <label class='label'>(</label><input type='radio' id='radio21' value="Sec" name='grup3' ><label class='label'>) Sec.</label><br>
            <label class='label'>(</label><input type='radio' id='radio22' value="Pre" name='grup3' ><label class='label'>) Pre.</label><br>
            <label class='label'>(</label><input type='radio' id='radio23' value="Tec" name='grup3' ><label class='label'>) Tec.</label> <br>
            <label class='label'>(</label><input type='radio' id='radio24' value="Lic" name='grup3' ><label class='label'>) Lic.</label> <br>
            <label class='label'>(</label><input type='radio' id='radio25' value="No esco" name='grup3' ><label class='label'>) No escolarizado.</label><br> 
            <label class='label'>(</label><input type='radio' id='radio26' value="Vive" name='grup4' ><label class='label'>) Vive</label>
            <label class='label'>(</label><input type='radio' id='radio27' value="Finado" name='grup4' ><label class='label'>) Finado</label><br>  
            <div id="matricula" class="form">
            <input type="text" required name="OcupacionMadre" id="OcupacionMadre" autocomplete="off" placeholder=" " class="textbox">
            <label class="form_label">Ocupacion:</label>
            </div>
            </div>
        </div>
</div>

    <div id='boton'> 
        <button  type="submit" class="button button4">Siguiente</button>
    </div>
    </section>
</form>
</div>

<!--FIN del cont principal-->

<?php require_once "vistas/parte_inferior.php"?>

<script src="../vista/js/js_Laborales.js"></script>