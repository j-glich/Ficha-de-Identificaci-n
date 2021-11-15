<?php
include_once(__DIR__."/cnx.php");
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$matricula = (isset($_POST['matricula'])) ? $_POST['matricula'] : '';
$sql = 'CALL sp_fi_listar_alumno(?)';
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
$nombre = (isset($_POST['nombre'])) ? $_POST['nombre'] : '';
 //Invocacion del procedimiento almacenado
$sql = 'CALL sp_fi_in_alumno_reg_rapido(?,?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
$stmt->bindParam(2, $nombre, PDO::PARAM_STR, 45);

echo  $stmt->execute();
$conexion = null;
}
?>
