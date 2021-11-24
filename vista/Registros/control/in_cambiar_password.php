<?php
include_once(__DIR__."/cnx.php");
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$matricula = (isset($_POST['matricula'])) ? $_POST['matricula'] : '';
$passnew = (isset($_POST['nuevopassword'])) ? $_POST['nuevopassword'] : '';
$cofirmedPass = (isset($_POST['confirmedpassword'])) ? $_POST['confirmedpassword'] : '';
$pass_cifrado = password_hash($cofirmedPass,PASSWORD_DEFAULT);
if($passnew === $cofirmedPass){
    $sql = 'CALL sp_fi_up_password_alumno(?,?)';
    $stmt = $conexion->prepare($sql);
    //Envio de parametros mediante PDO
    $stmt->bindParam(1, $pass_cifrado, PDO::PARAM_STR, 150);
    $stmt->bindParam(2, $matricula, PDO::PARAM_STR, 10);
    echo  $stmt->execute();
    $conexion= null;
}else{
    echo 0;
    $conexion= null;
}
?>