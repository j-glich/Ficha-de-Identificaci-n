<?php
include_once(__DIR__."/cnx.php");
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$matricula = (isset($_POST['matricula'])) ? $_POST['matricula'] : '';
$sql = 'CALL sp_fi_li_ant_d_localizacion(?)';
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
$municipio = (isset($_POST['municipio'])) ? $_POST['municipio'] : '';
$estado = (isset($_POST['estado'])) ? $_POST['estado'] : 'HGO';
$tutor = (isset($_POST['tutor'])) ? $_POST['tutor'] : '';
$telCasa = (isset($_POST['telCasa'])) ? $_POST['telCasa'] : '';
$telMovil = (isset($_POST['telMovil'])) ? $_POST['telMovil'] : '';
$cx = (isset($_POST['cx'])) ? $_POST['cx'] : '';
$cy = (isset($_POST['cy'])) ? $_POST['cy'] : '';
$colonia = (isset($_POST['colonia'])) ? $_POST['colonia'] : '';
 //Invocacion del procedimiento almacenado
$sql = 'CALL sp_fi_in_ant_d_localizacion(?,?,?,?,?,?,?,?,?,?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $calle, PDO::PARAM_STR, 30);
$stmt->bindParam(2, $municipio, PDO::PARAM_STR, 45);
$stmt->bindParam(3, $estado, PDO::PARAM_STR, 45);
$stmt->bindParam(4, $colonia, PDO::PARAM_STR, 45);
$stmt->bindParam(5, $cx, PDO::PARAM_STR, 70);
$stmt->bindParam(6, $cy, PDO::PARAM_STR, 70);
$stmt->bindParam(7, $tutor, PDO::PARAM_STR, 70);
$stmt->bindParam(8, $telCasa, PDO::PARAM_STR, 70);
$stmt->bindParam(9, $telMovil, PDO::PARAM_STR, 70);

$stmt->bindParam(10, $matricula, PDO::PARAM_STR, 70);
echo  $stmt->execute();
}
?>

