
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
    <!--Made with love by Mutiullah Samim -->   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Iniciar sesión</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form action="controlador/login.php" method="post" onsubmit="return validarFormulario();" >
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                        <input type="text" required placeholder="Matricula" 
						autocomplete="off" class="form-control" name="usuario" id="usuario"> 
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
                        <input type="password" name="contrasenia" 
						id="contrasenia" required placeholder="Contraseña" class="form-control" autocomplete="off"> 
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Recuérdame
					</div>
					<div class="form-group">
						<input type="submit" value="Iniciar" class="btn float-right login_btn">
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links" style="color : white ;">
				¿No tienes una cuenta?<a href="controlador/Registar.php">Registrate</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">¿Olvidaste tu contraseña?</a>
				</div>
                </body>
				</html>
				<script>
				var aux = <?php echo (isset($_GET['reg'])) ? $_GET['reg'] : '3' ?>;
				if(aux==1){
					Swal.fire({
					icon: 'success',
					title: 'Registro Exitoso',
					text: 'Correcto!',
					showConfirmButton: false,
					timer: 2500});
                }else if(aux==0){
					Swal.fire({
                    position: "top-end",
                    icon: "success",
                    title: "Alumno ya registrado",
                    showConfirmButton: false,
                    timer: 2500
				});
                }

				</script>