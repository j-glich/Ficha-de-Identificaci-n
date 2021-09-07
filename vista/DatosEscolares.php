<?php require_once "Registros/control/in_Generales.php" ?>
<?php require_once "vistas/parte_superiorAlumno.php"?>
<link rel="stylesheet" href="./estilos/styleAN_ESCOLARES.css" />
<!--INICIO del cont principal-->
<script>        
            function crearInput(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especialidad');
                x.setAttribute('class','controls');
                x.setAttribute('name','especilidad');
                x.setAttribute('id','id_');
                document.getElementById('esc').appendChild(x); 
                document.getElementById("radio3").disabled=true;    
            }
            function crearotro(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Cual?');
                x.setAttribute('class','controls');
                x.setAttribute('name','tibeca');
                x.setAttribute('id','id_beca');
                document.getElementById('esc1').appendChild(x); 
                document.getElementById('radio11').disabled=true; 
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
            }
            function Eliminar(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio3").disabled=false;      
                }
                }
                function Eliminar1(id){
                    var x = document.getElementById(id);
                    if(x){
                        padre = x.parentNode;
                        padre.removeChild(x);  
                        document.getElementById("radio11").disabled=false;
                }
                }
</script>
<div class="container" id='container'>
    <h1 style="text-align: center;">Ficha de identificación</h1>
    <h3 style="text-align: center;">Datos Escolares</h3>
    <form  method = 'post' action= 'DatosGenSalud.php' >
        <section class="form-register">
            <div id='cam1'>
                <div id ='esc'>
                    <label class='label'>Escolaridad:</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio1' name='grupo' value="Preparatoria" onclick="Eliminar('id_')"><label class='label'>) Preparatoria</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio2' name='grupo' value="Bachillerato General" onclick="Eliminar('id_')"><label class='label'>) Bachillerato General</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio3' name='grupo' value="Bachillerato Técnico" onclick='crearInput()'><label class='label'>) Bachillerato Técnico</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio4' name='grupo' value="Tele bachillerato" onclick="Eliminar('id_')"><label class='label'>) Tele bachillerato</label><br>
                    <label class='label'>(</label><input  type='radio' id='radio5' name='grupo' value="Preparatoria Abierta" onclick="Eliminar('id_')"><label class='label'>) Preparatoria Abierta</label><br>
                    </div>
                            <label class ='label'>Nombre del instituto de procedencia: </label> 
        <input class="controls" type="text" name="nomInstitucion" id="nomInstitucion" placeholder='Institucion '>
        <br>
        <label class ='label'>Promedio general: </label>
        <input class="controls" type="text" name="promedio" id="promedio" placeholder="Promedio">
    </div>    
        <div id='cam2'> 
            <div id ='esc1'>
            <label class ='label'>Has estado becado: </label><br>
            <label class='label'>(</label><input  type='radio' id='radio6' name='gru' value="si" onclick="habilitar('radio8','radio9','radio10','radio11')" ><label class='label'>) Si</label>  &nbsp &nbsp &nbsp
            <label class='label'>(</label><input  type='radio' id='radio7' name='gru' value="no" onclick="desahabilitar('radio8','radio9','radio10','radio11','id_beca')"  ><label class='label'>) No</label><br>
            <label class='label'>Tipo de beca:</label><br>
            <label class='label'>(</label><input  type='radio' id='radio8' disabled='true' value="Federal" name='grup' onclick="Eliminar1('id_beca')"><label class='label'>) Federal</label><br>
            <label class='label'>(</label><input  type='radio' id='radio9' disabled='true' value="Estatal" name='grup' onclick="Eliminar1('id_beca')"><label class='label'>) Estatal</label><br>
            <label class='label'>(</label><input  type='radio' id='radio10' disabled='true' value="Institucional" name='grup' onclick="Eliminar1('id_beca')"><label class='label'>) Institucional</label><br>
            <label class='label'>(</label><input  type='radio' id='radio11' disabled='true' name='grup' onclick='crearotro()'><label class='label'>) Otra:</label><br>
        </div>
    
    
        <label class ='label'>En el transcurso de tus estudios viviras con: </label>
        <select class="controls" name="vivir" id="vivir">
            <option value="familia">Familia</option>
            <option value="parientes">Parientes</option>
            <option value="companeros">Compañeros</option>
            <option value="solo">Solo</option>
            <option value="cambiarasDeResidencia">Cambiaras de residencia</option>
        </select>
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

