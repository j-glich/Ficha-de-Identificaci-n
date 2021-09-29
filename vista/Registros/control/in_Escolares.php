<?php require_once "vistas/parte_superiorAlumno.php"?>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<?php
include_once '../vista/bd/conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$matricula =$_SESSION["id_Cliente"];
$sql = 'CALL cima2.sp_fi_listar_ant_escolares(?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
$stmt->execute();
$num_rows = $stmt->fetchColumn();
if ($num_rows > 0){ 
  echo '<script>
  Swal.fire({
  position: "top-end",
  icon: "success",
  title: "Ya has registrado una respuesta",
  showConfirmButton: false,
  timer: 2500})</script>'; 
  $conexion = null;
}else{
  echo '<script>
  Swal.fire(
  "Registro Exitoso",
  "Corecto!",
  "success")</script>';
        //variables
        $escolaridad = (isset($_POST['grupo'])) ? $_POST['grupo'] : 'Bachillerato Técnico';
        $especialidad = (isset($_POST['especilidad'])) ? $_POST['especilidad'] : 'Ninguna';  
        $nombreInstitucion = (isset($_POST['nomInstitucion'])) ? $_POST['nomInstitucion'] : '';  
        $promedioGeneral = (isset($_POST['promedio'])) ? $_POST['promedio'] : '';
        $beca = (isset($_POST['gru'])) ? $_POST['gru'] : '';
        $tipobeca = (isset($_POST['grup'])) ? $_POST['grup'] : 'Otro'; 
        $otrotipbeca = (isset($_POST['tibeca'])) ? $_POST['tibeca'] : 'Ninguno'; 
        $estu_viviras = (isset($_POST['vivir_con'])) ? $_POST['vivir_con'] : '';
        //Invocacion del procedimiento almacenado 
        $sql = 'CALL sp_fi_in_ant_escolares(?,?,?,?,?,?,?,?,?)';
        $stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
        $stmt->bindParam(1, $escolaridad, PDO::PARAM_STR, 45);
        $stmt->bindParam(2, $especialidad, PDO::PARAM_STR, 45);
        $stmt->bindParam(3, $nombreInstitucion, PDO::PARAM_STR, 45);
        $stmt->bindParam(4, $promedioGeneral, PDO::PARAM_STR, 45);
        $stmt->bindParam(5, $beca, PDO::PARAM_STR, 2);
        $stmt->bindParam(6, $estu_viviras, PDO::PARAM_STR, 45);
        $stmt->bindParam(7, $tipobeca, PDO::PARAM_STR, 45);
        $stmt->bindParam(8, $otrotipbeca, PDO::PARAM_STR, 45);
        $stmt->bindParam(9, $matricula, PDO::PARAM_STR, 10);
        $stmt->execute();
        $conexion = null;
    }      
?>