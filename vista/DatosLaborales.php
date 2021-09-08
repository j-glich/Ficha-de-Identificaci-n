
<?php require_once "Registros/control/in_genSalud.php"?>
<?php require_once "vistas/parte_superiorAlumno.php"?>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;

}

.controls{
    width: 100%;
    background: withe;
    padding: 10px;
    margin-bottom: 16px;
    border-radius: 6px;
    font-family: 'calibri';
    font-size: 18px;
    border: 1px solid #1f53c5;
}
#cam1{
    width: 500px;
    height: 750px;
    background: white;
    float: left;
    padding: 10px;
}
#cam2{
    width: 500px;
    height: 750px;
    background: white;
    float: left;
    padding: 10px;
}
#cam1,#cam2 .label{
    color: black;
    font-family: 'calibri';
    font-size: 19px;
}
#container{
    width: 1180px;
    height: 900px;
    background: white;

}
#boton{
    width: 1000px;
    height: 100px;
    background: white;   
    float: left;
    text-align: center;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 2px 1px;
  cursor: pointer;
  width: 30%;
}
.button4 {border-radius: 12px;}
#div1{
    width: 240px;
    height: 390px;
    background: white;   
    float: left; 
}
#div2{
    width: 240px;
    height: 390px;
    background: white;   
    float: left; 
}
</style>
<!--INICIO del cont principal-->
<script>        
            function habilitar(id,id2){
                document.getElementById(id).disabled=false; 
                document.getElementById(id2).disabled=false; 
              
              
            }
            function desahabilitar(id,id2){
                document.getElementById(id).disabled=true; 
                document.getElementById(id2).disabled=true; 
               
            }
            function crearotro(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especifique');
                x.setAttribute('class','controls');
                x.setAttribute('name','Especifique');
                x.setAttribute('id','id_Especificacion');
               document.getElementById('esc3').appendChild(x); 
               document.getElementById("radio11").disabled=true;    
            }
            function Eliminar3(id){
               var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio11").disabled=false;                 
                     }
                }
</script>
<div class="container" id='container'>
    <h1>Ficha de identificación</h1>
    <h3>Datos Laborales</h3>
    <form  method = 'post' action= 'DatosGeolocalizacion.php'>
      <section class="form-register">
     <div id='cam1'>
            <label class ='label'>Trabajas</label><br>
            <label class='label'>(</label><input  type='radio' id='radio1' onclick ="habilitar('nomEmpresa','horario')" name='grupo' value="si"><label class='label'>) Si</label>  &nbsp &nbsp &nbsp
            <label class='label'>(</label><input  type='radio' id='radio2' onclick ="desahabilitar('nomEmpresa','horario')" name='grupo' value="no"><label class='label'>) No</label><br>
            <label class='label'>Nombre de la empresa: </label>
            <input class="controls" type="text" disabled ='true' name="nomEmpresa" id="nomEmpresa" placeholder="Empresa?">
            <label class='label'>Horario: </label>
            <input class="controls" type="text" disabled ='true' name="horario" id="horario" placeholder="8 a ..">
            <div id="esc3">
            <label class ='label'>Depende económicamente de:</label><br>
            <label class='label'>(</label><input type='radio' id='radio8' value="Padre" name='grup' onclick="Eliminar3('id_Especificacion')"><label class='label'>) Padre</label><br>
            <label class='label'>(</label><input type='radio' id='radio9' value="Madre" name='grup' onclick="Eliminar3('id_Especificacion')"><label class='label'>) Madre</label><br>
            <label class='label'>(</label><input type='radio' id='radio10'value="De si mismo" name='grup' onclick="Eliminar3('id_Especificacion')"><label class='label'>) De sí mismo</label><br>
            <label class='label'>(</label><input type='radio' id='radio11'value="otros" name='grup' onclick='crearotro()'><label class='label'>) Otros:</label><br>
            </div>     
            <label class='label'>A cuánto asciende el ingreso mensual familiar: </label>
            <input class="controls" type="text" name="IngresoFamiliar" id="IngresoFamiliar" placeholder="$">
    </div>
    <div id='cam2'> 
            <label class='label'>En caso de ser económicamente independiente a cuánto asciende tu ingreso: </label>
            <input class="controls" type="text" name="IngresoPersonal" id="IngresoPersonal" placeholder="$">   
            <label class='label'>Grado máximo de estudios de: </label>
            <div id='contened'>
                <div id="div1">
            <label class ='label'>Padre:</label><br>
            <label class='label'>(</label><input type='radio' id='radio12' value="Prim." name='grup1' ><label class='label'>) Prim.</label><br>
            <label class='label'>(</label><input type='radio' id='radio13' value="Sec." name='grup1' ><label class='label'>) Sec.</label><br>
            <label class='label'>(</label><input type='radio' id='radio14' value="Tec." name='grup1' ><label class='label'>) Pre.</label><br>
            <label class='label'>(</label><input type='radio' id='radio15' value="Pre." name='grup1' ><label class='label'>) Tec.</label> <br>
            <label class='label'>(</label><input type='radio' id='radio16' value="Lic." name='grup1' ><label class='label'>) Lic.</label> <br>
            <label class='label'>(</label><input type='radio' id='radio17' value="No esco" name='grup1' ><label class='label'>) No escolarizado.</label><br>
            <label class='label'>(</label><input type='radio' id='radio18' value="Vive" name='grup2' ><label class='label'>) Vive</label>
            <label class='label'>(</label><input type='radio' id='radio19' value="Finado" name='grup2' ><label class='label'>) Finado</label><br> 
            <label class='label'>Ocupacion: </label>
            <input class="controls" type="text" name="OcupacionPadre" id="OcupacionPadre" placeholder="Ocupacion">    
                 </div>
                 <div id="div2">
                 <label class ='label'>Madre:</label><br>
            <label class='label'>(</label><input type='radio' id='radio20' value="Prim." name='grup3' ><label class='label'>) Prim.</label><br>
            <label class='label'>(</label><input type='radio' id='radio21' value="Sec." name='grup3' ><label class='label'>) Sec.</label><br>
            <label class='label'>(</label><input type='radio' id='radio22' value="Pre." name='grup3' ><label class='label'>) Pre.</label><br>
            <label class='label'>(</label><input type='radio' id='radio23' value="Tec." name='grup3' ><label class='label'>) Tec.</label> <br>
            <label class='label'>(</label><input type='radio' id='radio24' value="Lic." name='grup3' ><label class='label'>) Lic.</label> <br>
            <label class='label'>(</label><input type='radio' id='radio25' value="No Esco" name='grup3' ><label class='label'>) No escolarizado.</label><br> 
            <label class='label'>(</label><input type='radio' id='radio26' value="Vive" name='grup4' ><label class='label'>) Vive</label>
            <label class='label'>(</label><input type='radio' id='radio27' value="Finado" name='grup4' ><label class='label'>) Finado</label><br>  
            <label class='label'>Ocupacion: </label>
            <input class="controls" type="text" name="OcupacionMadre" id="OcupacionMadre" placeholder="Ocupacion"> 
            </div>
            </div>
            <label class='label'>Domicilio: </label>
            <input class="controls" type="text" name="domicilio" id="domicilio" placeholder="domicilio familiar"> 
    </div>
    <div id='boton'> 
        <button  type="submit" class="button button4">Siguiente</button>
    </div>
    </section>
</form>
</div>

<!--FIN del cont principal-->

<?php require_once "vistas/parte_inferior.php"?>

