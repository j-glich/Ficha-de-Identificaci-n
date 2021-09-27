<?php
include_once '../Ficha/vista/bd/conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$matricula = (isset($_POST['matricula'])) ? $_POST['matricula'] : '';
$sql = 'CALL sp_fi_listar_GEOLOCALIZACION(?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
$stmt->execute();
$num_rows = $stmt->fetchColumn();
if ($num_rows > 0){ 
    $conexion = null;
    echo 0;
}else{
        //variables
$calle = (isset($_POST['calle'])) ? $_POST['calle'] : '';
$tutor = (isset($_POST['tutor'])) ? $_POST['tutor'] : '';
$telCasa = (isset($_POST['telCasa'])) ? $_POST['telCasa'] : '';
$telMovil = (isset($_POST['telMovil'])) ? $_POST['telMovil'] : '';
$cx = (isset($_POST['cx'])) ? $_POST['cx'] : '';
$cy = (isset($_POST['cy'])) ? $_POST['cy'] : '';
 //Invocacion del procedimiento almacenado
$sql = 'CALL sp_fi_in_GEOLOCALIZACION(?,?,?,?,?,?,?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $calle, PDO::PARAM_STR, 45);
$stmt->bindParam(2, $cx, PDO::PARAM_STR, 70);
$stmt->bindParam(3, $cy, PDO::PARAM_STR, 70);
$stmt->bindParam(4, $tutor, PDO::PARAM_STR, 70);
$stmt->bindParam(5, $telCasa, PDO::PARAM_STR, 70);
$stmt->bindParam(6, $telMovil, PDO::PARAM_STR, 70);
$stmt->bindParam(7, $matricula, PDO::PARAM_STR, 70);
echo  $stmt->execute();
}
?>
