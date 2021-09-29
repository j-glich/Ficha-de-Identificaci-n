<?php 
include_once '../bd/conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$opcion = $_POST['opcion'];
$matricula = $_POST['matricula'];
$nombre = ($_POST['nombre']) ;
$plan = ($_POST['plan']);
$correo = ($_POST['correo']);
$semestre = ($_POST['semestre']);
$activo = ($_POST['activo']);
$opcion = ($_POST['opcion']);

switch ($opcion) {
    case '1':
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
        break;
    
    case '2':
        $sql = 'call cima2.sp_fi_up_alumno(?, ?, ?, ?,?,?)';
        $stmt = $conexion->prepare($sql);
        $stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
        $stmt->bindParam(2, $nombre, PDO::PARAM_STR, 100);
        $stmt->bindParam(3, $plan, PDO::PARAM_STR, 45);
        $stmt->bindParam(4, $correo, PDO::PARAM_STR, 45);
        $stmt->bindParam(5, $semestre, PDO::PARAM_STR, 2);
        $stmt->bindParam(6, $activo, PDO::PARAM_STR, 1);
        $stmt->execute();
        $sql = 'CALL cima2.sp_fi_listar_alumno(?)';
        $stmt = $conexion->prepare($sql);
        //Envio de parametros mediante PDO
        $stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
        $stmt->execute();
        $data=$stmt->fetchAll(PDO::FETCH_ASSOC);
        break;
    case '3':
        $sql = 'call cima2.sp_fi_de_alumno(?)';
        $stmt = $conexion->prepare($sql);
        $stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
        $stmt->execute();
        break;    
}
$conexion = null;
print json_encode($data, JSON_UNESCAPED_UNICODE);
?>