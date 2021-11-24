<?php

include_once "../modelo/cnx.php";
$aux =0;
$aux2 =0;
$objeto = new Conexion();
$conexion = $objeto->Conectar();

$sql = 'CALL sp_fi_listar_usuario(?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $usuario, PDO::PARAM_STR, 10);
$stmt->setFetchMode(PDO::FETCH_ASSOC);
$resultado = $stmt->execute();
// Mostramos los resultados
while ($row = $stmt->fetch()){
    if($contrasenia == $row['US_PASSWORD']){
        $aux2++;
    }   
    if($aux2 > 0){
    
        session_start();
    
    $_SESSION["id_Cliente"] = $row["US_NOMBRE"];
    $_SESSION["rol"] = $row["US_ROL"];
    $matricula = $row["US_ID"];
    if($row["US_ROL"]==='1'){
       include "../modelo/cerrar.php";
    header("Location: ../vista/indexAdmin.php");  
    
    }
    }else{
        include "../modelo/cerrar.php";
    header("Location: ../index.php");
    }
} 


$sql = 'CALL sp_fi_listar_alumno(?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $usuario, PDO::PARAM_STR, 10);
$stmt->setFetchMode(PDO::FETCH_ASSOC);
$resultado = $stmt->execute();
// Mostramos los resultados
while ($row = $stmt->fetch()){
    if(password_verify($contrasenia,$row['AL_PASSWORD'])){
        $aux++;
    }   
    if($aux > 0){
        session_start();
        $_SESSION["id_Cliente"] = $row["AL_MATRICULA"];
        $_SESSION["nombre"] = $row["AL_NOM_ALUMNO"];
        $_SESSION["rol"] = $row["AL_ROL"];
        $matricula = $row["AL_MATRICULA"];
        if($row["AL_ROL"]==='2'){
            include "../modelo/cerrar.php";
        header("Location: ../vista/indexAlumno.php"); 
    }
    }else{
        include "../modelo/cerrar.php";
    header("Location: ../index.php");
    }
} 





?>