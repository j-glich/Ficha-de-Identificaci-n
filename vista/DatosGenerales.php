<?php require_once "vistas/parte_superiorAlumno.php"?>
<link rel="stylesheet" href="../vista/estilos/s_General.css" />
<script src="../vista/js/js_Generales.js"></script>
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