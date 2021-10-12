<?php
include_once 'conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$id = (isset($_POST['id'])) ? $_POST['id'] : '';
$opcion = (isset($_POST['opcion'])) ? $_POST['opcion'] : '';
// Recepción de los datos enviados mediante POST desde el JS 
switch($opcion){
    case 1:
        $consulta = "SELECT * FROM cima2.antecedentes_generales";       
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
        break;
    case 4://baja
        $sql = "call cima2.sp_fi_listar_reporte_ficha1(?)";
        $stmt = $conexion->prepare($sql);
        //Envio de parametros mediante PDO
        $stmt->bindParam(1, $id, PDO::PARAM_STR, 10);
        $stmt->execute();
        $data=$stmt->fetchAll(PDO::FETCH_ASSOC);
        break;   
    case 2:
        $sql = "call cima2.sp_fi_listar_reporte_ficha2()";
        $stmt = $conexion->prepare($sql);
        //Envio de parametros mediante PDO
        $stmt->bindParam(1, $id, PDO::PARAM_STR, 10);
        $stmt->execute();
        $data=$stmt->fetchAll(PDO::FETCH_ASSOC);
        break;
}
print json_encode($data, JSON_UNESCAPED_UNICODE); //enviar el array final en formato json a JS
$conexion = NULL;
?>