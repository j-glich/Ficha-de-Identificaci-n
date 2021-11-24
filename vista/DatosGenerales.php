<?php require_once "vistas/parte_superiorAlumno.php"?>
<link rel="stylesheet" href="../vista/estilos/s_General.css" />
<div class="container" id='container'>
    <h1 style="text-align: center;" class="Titulo__label">Ficha de identificación</h1>
    <h3 style="text-align: center;" class="Subtitulo__label">Datos generales</h3>
    <form  method = 'post' action= 'DatosEscolares.php' >
        <section class="form-register">
<div id='cam1'> 
        <div id="matricula" class="form">
        <select class="textbox" name="carrera" id="carrera">
            <option value="Ingeniería en Sistemas Computacionales">Ing.En Sistemas Computacionales</option>
            <option value="Arquitectura">Arquitectura</option>
            <option value="Ingeniería Electromecánica">Ing.Electromecánica</option>
            <option value="Ingeniería en Industrias Alimentarias">Ing.En Industrias Alimentarias</option>
            <option value="Ingeniería en Gestión Empresarial">Ing.En Gestión Empresarial</option>
            <option value="Ingeniería en Logística">Ing.En Logística</option>
            <option value="TICS">Ing.En Tecnologías de la Información y Comunicaciones</option>
            <option value="Ingeniería Industrial">Ing.Industrial</option>
        </select>
        <label class="form_label">Carrera:</label>
        </div>
        <br>
        <div id="matricula" class="form">
            <input onkeypress="return solonumeros(event)" maxlength="8" type="text" name="matricula" id="matricula2" autocomplete="off" placeholder=" " class="textbox">
            <label class="form_label">Matricula:</label>
        </div>
        <br>
        <div id="matricula" class="form">
            <input type="text" maxlength="45" name="nombre" id="nombre" placeholder=" " class="textbox" autocomplete="off">
            <label class="form_label">Nombre completo:</label>
        </div>   
        <br>
        <div id="matricula" class="form">
        <select class="textbox" name="semestre" id="semestre">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>


        </select>
            <label class="form_label">Semestre:</label>
        </div>
        <br>
        <div id="matricula" class="form">
        <select class="textbox" name="grupo1" id="grupo1">
                <option value="A">A</option>
                <option value="B">B</option>
                <option value="C">C</option>
            </select> 
            <label class="form_label">Grupo:</label>
        </div>  
        <br>   
        <div id="matricula" class="form">
            <input class="textbox" type="date" name="fecha" id="fecha" placeholder=" ">
            <label class="form_label">Fecha de Nacimiento:</label>
        </div> 
        <br>   
        <div id="matricula" class="form">
            <input required maxlength="45" class="textbox" type="text" name="lugarNac" id="lugarNac" placeholder=" " autocomplete="off">
            <label class="form_label">Lugar de Nacimiento:</label>
        </div> 
    </div>    
    <div id='cam2'> 
        <div id="matricula" class="form">
            <input required class="textbox" type="email" name="correo" id="correo" placeholder=" " autocomplete="off">
            <label class="form_label">Correo institucional:</label>
        </div> 
        <br>
        <div id="matricula" class="form">
            <input required class="textbox" type="email" name="correo-personal" id="correo-personal" placeholder=" " autocomplete="off">
            <label class="form_label">Correo Personal:</label>
        </div> 
        <br>
        <div id="matricula" class="form">
            <select required class="textbox" name="sexo" id="sexo">
                <option value="F">Femenino</option>
                <option value="M">Masculino</option>
            </select> 
            <label class="form_label">Sexo:</label>
        </div> 
        <br>
        <div id="matricula" class="form">
        <select required class="textbox" name="estadoCivil" id="estadoCivil">
            <option value="Casado">Casado</option>
            <option value="Soltero">Soltero</option>
            <option value="Separado">Separado</option>
            </select> 
            <label class="form_label">Estado civil:</label>
        </div>
        <br>
        <div id="matricula" class="form">
            <input required class="textbox" maxlength="45" type="text" autocomplete="off" name="domicilio" id="domicilio" placeholder=" ">         
            <label class="form_label">Domicilio Actual:</label>
        </div>
        <br>
        <div id="matricula" class="form">
            <input required class="textbox" onkeypress="return solonumeros(event)" maxlength="10" type="text" autocomplete="off" name="numerocasa" id="numerocasa" placeholder=" ">
            <label class="form_label">Telefono(casa):</label>
        </div>
        <br>
        <div id="matricula" class="form">
            <input required class="textbox" onkeypress="return solonumeros(event)" maxlength="10" type="text" autocomplete="off" name="numeroCelular" id="numeroCelular" placeholder=" ">
            <label class="form_label">Telefono(celular):</label>
        </div>
        <label class='label'>Tienes hijos:</label><br>
        <label class='label'>Si:</label>&nbsp&nbsp<input  type='radio' id='radio1' name='grupo' value="Si" readonly onclick='crearInput()'>&nbsp&nbsp
        <label class='label'>No:</label>&nbsp&nbsp<input  type='radio' id='radio2' name='grupo' value="No"onclick="Eliminar('id_input','id_eti')" >
        </div>
        <div id='boton'> 
        <button  type="submit" class="button button4">Siguiente</button>
        </div>
    </section>
</form>
</div>

<!--FIN del cont principal-->

<?php require_once "vistas/parte_inferior.php"?>
<script src="../vista/js/js_Generales.js"></script>
<script>
          $(document).ready(function(){
               var opcion=8;
               matricula = <?php echo $_SESSION['id_Cliente'] ?>;
            $.ajax({
                url: "../vista/bd/intento1.php",
                type: "POST",
                dataType: "json",
                data: {opcion:opcion, id:matricula},
                success: function(data){
                    document.getElementById("matricula2").value = data[0].AL_MATRICULA;
                    document.getElementById("nombre").value =  data[0].AL_NOM_ALUMNO;
                    document.getElementById("correo").value =  data[0].AL_CORREO;
                    console.log(data);
                }
                
                });
            });
        </script>