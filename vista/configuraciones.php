
<?php require_once "vistas/parte_superiorAlumno.php"?>
<style>

    #formulario__password{
        width: 700px;
        height: 400px;
        background: none;
        position: relative;
        left: 20%;
    }
    #matricula{
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
    * {
	box-sizing: border-box;
}

body {
	font-family: 'Roboto', sans-serif;
	background: #E5E5E5;
}

main {
	max-width: 800px;
	width: 90%;
	margin: auto;
	padding: 40px;
}

.formulario {
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 20px;
}

.formulario__label {
	display: block;
	font-weight: 700;
	padding: 10px;
	cursor: pointer;
}

.formulario__grupo-input {
	position: relative;
}

.formulario__input {
	width: 100%;
	background: #fff;
	border: 3px solid transparent;
	border-radius: 3px;
	height: 45px;
	line-height: 45px;
	padding: 0 40px 0 10px;
	transition: .3s ease all;
}

.formulario__input:focus {
	border: 3px solid #0075FF;
	outline: none;
	box-shadow: 3px 0px 30px rgba(163,163,163, 0.4);
}

.formulario__input-error {
	font-size: 12px;
	margin-bottom: 0;
	display: none;
}

.formulario__input-error-activo {
	display: block;
}

.formulario__validacion-estado {
	position: absolute;
	right: 10px;
	bottom: 15px;
	z-index: 100;
	font-size: 16px;
	opacity: 0;
}

.formulario__checkbox {
	margin-right: 10px;
}

.formulario__grupo-terminos, 
.formulario__mensaje,
.formulario__grupo-btn-enviar {
	grid-column: span 2;
}

.formulario__mensaje {
	height: 45px;
	line-height: 45px;
	background: #F66060;
	padding: 0 15px;
	border-radius: 3px;
	display: none;
}

.formulario__mensaje-activo {
	display: block;
}

.formulario__mensaje p {
	margin: 0;
}

.formulario__grupo-btn-enviar {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.formulario__btn {
	height: 45px;
	line-height: 45px;
	width: 30%;
	background: #000;
	color: #fff;
	font-weight: bold;
	border: none;
	border-radius: 3px;
	cursor: pointer;
	transition: .1s ease all;
}

.formulario__btn:hover {
	box-shadow: 3px 0px 30px rgba(163,163,163, 1);
}

.formulario__mensaje-exito {
	font-size: 14px;
	color: #119200;
	display: none;
}

.formulario__mensaje-exito-activo {
	display: block;
}

/* ----- -----  Estilos para Validacion ----- ----- */
.formulario__grupo-correcto .formulario__validacion-estado {
	color: #1ed12d;
	opacity: 1;
}

.formulario__grupo-incorrecto .formulario__label {
	color: #bb2929;
}

.formulario__grupo-incorrecto .formulario__validacion-estado {
	color: #bb2929;
	opacity: 1;
}

.formulario__grupo-incorrecto .formulario__input {
	border: 3px solid #bb2929;
}


/* ----- -----  Mediaqueries ----- ----- */
@media screen and (max-width: 800px) {
	.formulario {
		grid-template-columns: 1fr;
	}

	.formulario__grupo-terminos, 
	.formulario__mensaje,
	.formulario__grupo-btn-enviar {
		grid-column: 1;
	}

	.formulario__btn {
		width: 100%;
	}
}
</style>
<div class="contenedor">
<h1 style="text-align: center; color:green;">Cambiar la contraseña</h1>

<div id="formulario__password">
<form action="" class="formulario" id="formulario">
			
			<!-- Grupo: Contraseña -->
			<div class="formulario__grupo" id="grupo__password">
				<label for="password" class="formulario__label">Contraseña</label>
				<div class="formulario__grupo-input">
					<input type="password" maxlength="30" class="formulario__input" name="password" id="password">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div> 
				<p class="formulario__input-error">La contraseña tiene que ser de 4 a 30 dígitos.</p>
			</div>

			<!-- Grupo: Contraseña 2 -->
			<div class="formulario__grupo" id="grupo__password2">
				<label for="password2" class="formulario__label">Repetir Contraseña</label>
				<div class="formulario__grupo-input">
					<input type="password" class="formulario__input" name="password2" id="password2">
					<i class="formulario__validacion-estado fas fa-times-circle"></i>
				</div>
				<p class="formulario__input-error">Ambas contraseñas deben ser iguales.</p>
			</div>

			

			<div class="formulario__grupo formulario__grupo-btn-enviar">
				<button type="submit" class="formulario__btn">Cambiar</button>
				<p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
			</div>
		</form>
</div>
</div>
<?php require_once "vistas/parte_inferior.php"?>
<script>

const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');

const expresiones = {
	password: /^.{4,30}$/, // 4 a 12 digitos.
	}

const campos = {
	password: false,
}

const validarFormulario = (e) => {
	switch (e.target.name) {
			case "password":
			validarCampo(expresiones.password, e.target, 'password');
			validarPassword2();
		break;
		case "password2":
			validarPassword2();
		break;
		
	}
}

const validarCampo = (expresion, input, campo) => {
	if(expresion.test(input.value)){
		document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-incorrecto');
		document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-correcto');
		document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-circle');
		document.querySelector(`#grupo__${campo} i`).classList.remove('fa-times-circle');
		document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');
		campos[campo] = true;
	} else {
		document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-incorrecto');
		document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-correcto');
		document.querySelector(`#grupo__${campo} i`).classList.add('fa-times-circle');
		document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-circle');
		document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');
		campos[campo] = false;
	}
}

const validarPassword2 = () => {
	const inputPassword1 = document.getElementById('password');
	const inputPassword2 = document.getElementById('password2');

	if(inputPassword1.value !== inputPassword2.value){
		document.getElementById(`grupo__password2`).classList.add('formulario__grupo-incorrecto');
		document.getElementById(`grupo__password2`).classList.remove('formulario__grupo-correcto');
		document.querySelector(`#grupo__password2 i`).classList.add('fa-times-circle');
		document.querySelector(`#grupo__password2 i`).classList.remove('fa-check-circle');
		document.querySelector(`#grupo__password2 .formulario__input-error`).classList.add('formulario__input-error-activo');
		campos['password'] = false;
	} else {
		document.getElementById(`grupo__password2`).classList.remove('formulario__grupo-incorrecto');
		document.getElementById(`grupo__password2`).classList.add('formulario__grupo-correcto');
		document.querySelector(`#grupo__password2 i`).classList.remove('fa-times-circle');
		document.querySelector(`#grupo__password2 i`).classList.add('fa-check-circle');
		document.querySelector(`#grupo__password2 .formulario__input-error`).classList.remove('formulario__input-error-activo');
		campos['password'] = true;
	}
}

inputs.forEach((input) => {
	input.addEventListener('keyup', validarFormulario);
	input.addEventListener('blur', validarFormulario);
});

$(document).on('click', '.formulario__btn', function(e){
    e.preventDefault();
  
    var nuevopassword = $('#password').val(), confirmedpassword = $('#password2').val()
    //alert(calle + municipio + estado + tutor + telMovil + telCasa);
    if ((nuevopassword == "") || (confirmedpassword == "") ) {  //COMPRUEBA CAMPOS VACIOS
      Swal.fire({
            position: "center",
            icon: "error",
            title: "Contraseñas vacias",
            showConfirmButton: false,
            timer: 2500
          });
    return false;
  }
    var matricula = <?php  echo $_SESSION['id_Cliente']  ?>;
    $.ajax({
      url: '../vista/Registros/control/in_cambiar_password.php', // Es importante que la ruta sea correcta si no, no se va a ejecutar
      method: 'POST',
      data: {nuevopassword:nuevopassword, confirmedpassword:confirmedpassword,matricula:matricula},
      //en caso de que se ejecute  r retornara 1 
      success: function(r){
        console.log(r);
        if(r==1){

    Swal.fire({
      icon: 'success',
      title: 'Registro Exitoso',
      text: 'Correcto!',
      showConfirmButton: false,
      timer: 2500});
      
            setTimeout(() => {
              window.location="indexAlumno.php";
            }, 2500);
        }else{
          Swal.fire({
            position: "top-end",
            icon: "success",
            title: "Ya has registrado una respuesta",
            showConfirmButton: false,
            timer: 2500
          });
          setTimeout(() => {
              window.location="indexAlumno.php";
            }, 2600);
        }
      }
    });
    });

</script>