<?php require_once "vistas/parte_superiorAlumno.php"?>
<!--INICIO del cont principal-->
<div class="container">
    <h1 style="text-align: center;">Perfil</h1>
<?php
include_once 'cnx.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$alumno =$_SESSION["id_Cliente"];
$sql = 'CALL cima2.sp_fi_listar_alumno(?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $alumno, PDO::PARAM_STR, 10);
$stmt->setFetchMode(PDO::FETCH_ASSOC);
$stmt->execute();
// Mostramos los resultados
while ($row = $stmt->fetch()){
?>	
    <article class="card">
      <header class="card__header">
        <img src="assets/images/card-pattern.svg" alt="pattern card" class="card__header-image" />
        <img src="assets/images/victor.jpg" alt="profile image" class="card__header-profile" />
      </header>
      <section class="card__body">
        <p class="card__text">
		<?php  echo "{$row["AL_NOM_ALUMNO"]} <br>";?>
          <span class="card__text card__text--light">	<?php  echo "{$row["AL_MATRICULA"]} <br>";?></span>
        </p>
        <p class="card__text card__text--light"><?php  echo "{$row["AL_CORREO"]} <br>";?></p>
      </section>
      <footer class="card__footer">
        <div class="card__stats">
          <p class="card__number"><?php  echo "{$row["AL_SEMESTRE"]} <br>";?></p>
          <p class="card__text card__text--light">Semestre</p>
        </div>
        <div class="card__stats">
          <p class="card__number"><?php  echo "{$row["AL_PLAN"]} <br>";?></p>
          <p class="card__text card__text--light">Plan</p>
        </div>
        <div class="card__stats">
          <p class="card__number"><?php  echo "{$row["AL_CDTOS_SEMESTRE"]} <br>";?></p>
          <p class="card__text card__text--light">Creditos</p>
        </div>
      </footer>
    </article>
    <?php } ?>
</div>
<?php require_once "vistas/parte_inferior.php"?>