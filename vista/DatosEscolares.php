<?php require_once "Registros/control/in_Generales.php" ?>
<?php require_once "vistas/parte_superiorAlumno.php"?>
<link rel="stylesheet" href="../vista/estilos/s_Escolares.css" />
<script src="../vista/js/js_Escolares.js"></script>
<!--INICIO del cont principal-->
<style>

#control{
    width: 100%;
    height: auto;
    background:none;
}
.form{
    position: relative;
}

.textbox{
    width: 80%;
    height: 45px;
    border: 1px solid black;
    border-radius: 5px;
    outline: none;
    background: none;
    padding: 10px;
    margin:auto;
    color: black;
    left: 35px;
    position: relative;
}
.form_label{
    position: absolute;
    top: 0.6rem;
    pointer-events: none;
    left: 3.4rem;
    cursor: text;
    transition: top 100ms, let 100ms, font-size 100ms ease-in;
    opacity: 0.5;
}
.textbox:focus{
    border: 2px solid #00aae4;
}
.textbox:focus ~ .form_label,
.textbox:not(:placeholder-shown).textbox:not(:focus)~.form_label
    {
    top: -0.7rem;
    left: 2.7rem;
    font-size: 15px;
    background: ghostwhite;
    color: black;   
    opacity: 1;

}
#esc{
    position: relative;
    background:none;  
}
#esc1{
    position: relative;
    background:none;  
}
.Titulo__label{
    color: white;
}
.Subtitulo__label{
    color: white;
}

</style>
<div class="container" id='container'>
    <h1 style="text-align: center;" class="Titulo__label">Ficha de identificación</h1>
    <h3 style="text-align: center;" class="Subtitulo__label">Datos Escolares</h3>
    <form class="form" method = 'post' action= 'DatosGenSalud.php' >
        <section class="form-register">
            <div id='cam1'>
                <div id ='esc'>
                    <label class='label'>Escolaridad:</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio1' name='grupo' value="Preparatoria" onclick="delete1('id_','id_eti')"><label class='label'>) Preparatoria</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio2' name='grupo' value="Bachillerato General" onclick=" delete1('id_','id_eti')"><label class='label'>) Bachillerato General</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio3' name='grupo' value="Bachillerato Técnico" onclick='crearInput()'><label class='label'>) Bachillerato Técnico</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio4' name='grupo' value="Tele bachillerato" onclick=" delete1('id_','id_eti')"><label class='label'>) Tele bachillerato</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio5' name='grupo' value="Preparatoria Abierta" onclick=" delete1('id_','id_eti')"><label class='label'>) Preparatoria Abierta</label><br>
                    </div>
                    <br> 
                <div id="control" class="form">
                    <input class="textbox" type="text" name="nomInstitucion" id="nomInstitucion" placeholder=' ' autocomplete="off">
                    <label class="form_label">Nombre del instituto de procedencia:</label>
                </div>
                <br>
                <div id="control" class="form">
                <input class="textbox" type="text" name="promedio" id="promedio" placeholder=" " autocomplete="off" >
                    <label class="form_label">Promedio general:</label>
                </div>
                <br>
            </div>    
        <div id='cam2'> 
            <div id ='esc1'>
            <label class ='label'>Has estado becado: </label><br>
            <label class='label'>(</label><input  type='radio' id='radio6' name='gru' value="SI" onclick="habilitar('radio8','radio9','radio10','radio11')" ><label class='label'>) Si</label>  &nbsp &nbsp &nbsp
            <label class='label'>(</label><input  type='radio' id='radio7' name='gru' value="NO" onclick="desahabilitar('radio8','radio9','radio10','radio11','id_beca','id_eti')"  ><label class='label'>) No</label><br>
            <label class='label'>Tipo de beca:</label><br>
            <label class='label'>(</label><input  type='radio' id='radio8' disabled='true' value="Federal" name='grup' onclick="Eliminar1('id_beca','id_eti')"><label class='label'>) Federal</label><br>
            <label class='label'>(</label><input  type='radio' id='radio9' disabled='true' value="Estatal" name='grup' onclick="Eliminar1('id_beca','id_eti')"><label class='label'>) Estatal</label><br>
            <label class='label'>(</label><input  type='radio' id='radio10' disabled='true' value="Institucional" name='grup' onclick="Eliminar1('id_beca','id_eti')"><label class='label'>) Institucional</label><br>
            <label class='label'>(</label><input  type='radio' id='radio11' disabled='true' name='grup' onclick='crearotro()'><label class='label'>) Otra:</label><br>
        </div>
        <br>
        <div id="control" class="form">
            <select class="textbox" name="vivir" id="vivir">
                <option value="Familia">Familia</option>
                <option value="Parientes">Parientes</option>
                <option value="Companeros">Compañeros</option>
                <option value="Solo">Solo</option>
                <option value="Cambiaras De Residencia">Cambiaras de residencia</option>
            </select>
                    <label class="form_label">En el transcurso de tus estudios viviras con:</label>
                </div>
                <br>
        <br>
        </div>
        <div id='boton'> 
        <button  type="submit" class="button button4">Siguiente</button>
        </div>
    </section>
</form>
</div>

<!--FIN del cont principal-->

<?php require_once "vistas/parte_inferior.php"?>

