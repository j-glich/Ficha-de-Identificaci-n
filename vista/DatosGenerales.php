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
    height: 840px;
    background: white;
    float: left;
    padding: 10px;
}
#cam2{
    width: 500px;
    height: 840px;
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
    height: 1000px;
    background:white;

}
#boton{
    width: 1000px;
    height: 50px;
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
  </style>
  
<!--INICIO del cont principal-->

<div class="container" id='container'>
    <h1 style="text-align: center;">Ficha de identificación</h1>
    <h3 style="text-align: center;">Datos generales</h3>
    <form  method = 'post' action= 'DatosEscolares.php' >
        <section class="form-register">
<div id='cam1'> 
    <label>Carrera: </label>
        <select class="controls" name="carrera" id="carrera">
            <option value="Ingeniería en Sistemas Computacionales">Ing.En Sistemas Computacionales</option>
            <option value="Arquitectura">Arquitectura</option>
            <option value="Ingeniería Electromecánica">Ing.Electromecánica</option>
            <option value="Ingeniería en Industrias Alimentarias">Ing.En Industrias Alimentarias</option>
            <option value="Ingeniería en Gestión Empresarial">Ing.En Gestión Empresarial</option>
            <option value="Ingeniería en Logística">Ing.En Logística</option>
            <option value="TICS">Ing.En Tecnologías de la Información y Comunicaciones</option>
            <option value="Ingeniería Industrial">Ing.Industrial</option>
        </select>
        <label>Matricula: </label>
        <input class="controls" type="text" name="matricula" id="matricula" placeholder="Inserta tu matricula">
        <label>Nombre: </label>
        <input class="controls" type="text" name="nombre" id="nombre" placeholder="nombre">
        <br>
        <label>Semestre: </label>
        <input class="controls" type="number" name="semestre" id="semestre" placeholder="Semestre">
        <label>Grupo: </label>
        <input class="controls" type="text" name="grupo1" id="grupo" placeholder="Grupo">
        <label>Fecha de Nacimiento: </label>
        <input class="controls" type="date" name="fecha" id="fecha">
        <label class = 'label'>Lugar de nacimiento: </label> 
        <input class="controls" type="text" name="lugarNac" id="LugarNac" placeholder="fecha de nacimiento">
        <br> 
    </div>    
        <div id='cam2'> 
        <label class = 'label'>Correo: </label> 
        <input class="controls" type="text" name="correo" id="correo" placeholder="correo institucional">
    <label class="label">Sexo: </label> 
        <select class="controls" name="sexo" id="sexo">
            <option value="F">Fenenino</option>
            <option value="M">Masculino</option>
        </select> 
        <label class="label">Estado civil: </label> 
        <select class="controls" name="estadoCivil" id="estadoCivil">Estado
            <option value="casado">Casado</option>
            <option value="soltero">Soltero</option>
            <option value="separado">Separado</option>
        </select>
        <label class='label'>Domicilio Actual: </label> 
        <input class="controls" type="text" name="domicilio" id="domicilio" placeholder="Insertar tu domicilio">
        <br>
        <label class = 'label'>Telefono(casa): </label> 
        <input class="controls" type="text" name="numerocasa" id="numerocasa" placeholder="Telefono">
        <label class = 'label'>Telefono(celular): </label> 
        <input class="controls" type="text" name="numeroCelular" id="numeroCelular" placeholder="Telefono">
        <label class='label'>Tienes hijos:</label><br>
        <script>        
            function crearInput(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Numero de hijos');
                x.setAttribute('class','controls');
                x.setAttribute('name','numhijos');
                x.setAttribute('id','id_input');
                //label
                var y = document.createElement('label');    
                y.setAttribute('id','id_eti'); 
                y.setAttribute('class','label');
                y.innerHTML ="Cuantos:";
               document.getElementById('cam2').appendChild(y);
               document.getElementById('cam2').appendChild(x);
               document.getElementById("radio1").disabled=true;    
            }
            function Eliminar(id,id1){
               var x = document.getElementById(id);
               var y = document.getElementById(id1);
                if(!x && !y){
                }else{
                    padre = x.parentNode;
                    padre.removeChild(x);
                    padre1 = y.parentNode;
                    padre1.removeChild(y);
                    document.getElementById("radio1").disabled=false; 
                }
            }
        </script>
        <label class='label'>Si:</label>&nbsp&nbsp<input  type='radio' id='radio1' name='grupo' value="si" readonly onclick='crearInput()'>&nbsp&nbsp
        <label class='label'>No:</label>&nbsp&nbsp<input  type='radio' id='radio2' name='grupo' value="no"onclick="Eliminar('id_input','id_eti')" >
        <pre>
       </pre>
        </div>
        <div id='boton'> 
        <button  type="submit" class="button button4">Siguiente</button>
        </div>
    </section>
</form>
</div>

<!--FIN del cont principal-->

<?php require_once "vistas/parte_inferior.php"?>