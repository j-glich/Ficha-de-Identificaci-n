<?php require_once "vistas/parte_superiorAlumno.php"?>
<link rel="stylesheet" href="../vista/css/estilos.css" />
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
    <div class="body" id='body'>
<!--INICIO del cont principal-->
<h1 style="text-align: center; color: white;">Acerca de Nosotros</h1>
<div class="contenedor" id="contenedor">
		<section class="tarjeta">
			<div class="slider_banner">
				<div class="banner" id="banner">
					<img class="slide active" src="img/banner.jpg" alt="">
					<img class="slide" src="img/banner2.jpg" alt="">
					<img class="slide" src="img/banner3.jpg" alt="">
					<img class="slide" src="img/banner4.jpg" alt="">
				</div>

				<!-- Flechas del Banner -->
				<a href="#" id="banner-prev" class="flecha-banner anterior"><span class="fa fa-chevron-left"></span></a>
				<a href="#" id="banner-next" class="flecha-banner siguiente"><span class="fa fa-chevron-right"></span></a>
			</div>

			<section class="slider_info">
				<!-- Flechas del Slider -->
				<a href="#" id="info-prev" class="flecha-info anterior" ><span class="fa fa-chevron-left"></span></a>
				<a href="#" id="info-next" class="flecha-info siguiente"><span class="fa fa-chevron-right"></span></a>

				<section class="informacion" id="informacion">
					<article id="info">
						<div class="slide active">
                        <p class="trabajo">Desarrolladores Web</p>
							<h4 class="nombre" style="font-size: 18px;">José Jair Valdez Martínez</h4>
                            <h4  style="font-size: 12px; position: relative; top: -14px;" >jvaldez@itsoeh.edu.mx</h4>
                            <h4 class="nombre" style="font-size: 18px; position: relative; top: -10px;">Mariana de Israel Martinez Artega</h4>
                            <h4  style="font-size: 12px; position: relative; top: -14px;" >mdmartinez@itsoeh.edu.mx</h4>
                            <h4 class="nombre" style="font-size: 18px;">Emerson Hernadez Perez</h4>
							<p class="pais"><img src="img/bandera.png" alt="">Mexico</p>
						</div>
					
						<div class="slide">
							<h2 class="subtitulo">Proyecto Ficha de identificación</h2>
							<p class="texto">Tiene la finalidad de automatizar el servicio de ficha de identificacion como lo marca el manual de tutor del Tecnológico Nacional 
                            <br>
                            Sistema que permite regristrar el el documento del anexo 6 del manual de tutor a los alumnos inscritos durante los periodos ENE-MAY y AGO-DIC. 
                            .</p>
						</div>

						<div class="slide">
							<h2 class="subtitulo">Programa Servicio Social</h2>
							<p class="texto"> Fábrica de Software ISC ITSOEH
							<br><br>
                                Desempeñando actividades de: Planificación, implementación, pruebas, documentación y mantenimiento a través de equipos interdisciplinarios,
							</p>
						</div>
					</article>
					<div class="botones" id="botones"></div>
				</section>

			</section>
			<section class="redes-sociales">
				<a href="https://www.facebook.com/ING-Sistemas-Computacionales-ITSOEH-916964301664810" class="facebook"><span class="fa fa-facebook"></span></a>
				<a href="https://twitter.com/ITSOEHmx" class="twitter"><span class="fa fa-twitter"></span></a>
			</section>
		</section>
	</div>
</div>
<!--FIN del cont principal-->

<?php require_once "vistas/parte_inferior.php"?>
<script src="../vista/js/main.js"></script>