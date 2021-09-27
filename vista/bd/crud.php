<?php 
include_once '../bd/conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$opcion = $_POST['opcion'];
if($opcion = 1){
    $matricula = $_POST['matricula'];
$sql = 'CALL cima2.sp_fi_listar_alumno(?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
$stmt->setFetchMode(PDO::FETCH_ASSOC);
$stmt->execute();
$num_rows = $stmt->fetchColumn();
if ($num_rows > 0){ 
    $conexion = null;
    echo 0;
}else{
    $nombre = (isset($_POST['nombre'])) ? $_POST['nombre'] : '';
    $plan = (isset($_POST['plan'])) ? $_POST['plan'] : '';
    $correo = (isset($_POST['correo'])) ? $_POST['correo'] : '';
    $semestre = (isset($_POST['semestre'])) ? $_POST['semestre'] : '';
    $activo = (isset($_POST['activo'])) ? $_POST['activo'] : '';
    $opcion = (isset($_POST['opcion'])) ? $_POST['opcion'] : '';

    $sql = 'call cima2.sp_fi_in_alumno(?, ?, ?, ?,?,?)';
    $stmt = $conexion->prepare($sql);
    $stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
    $stmt->bindParam(2, $nombre, PDO::PARAM_STR, 100);
    $stmt->bindParam(3, $plan, PDO::PARAM_STR, 45);
    $stmt->bindParam(4, $correo, PDO::PARAM_STR, 45);
    $stmt->bindParam(5, $semestre, PDO::PARAM_STR, 2);
    $stmt->bindParam(6, $activo, PDO::PARAM_STR, 1);
    $stmt->execute();

}
$sql = 'CALL cima2.sp_fi_listar_alumno(?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
$stmt->execute();
$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
$conexion = null;
print json_encode($data, JSON_UNESCAPED_UNICODE);
}else if($opcion = 2){

}

?>