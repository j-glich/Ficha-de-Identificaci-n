<?php

include_once "../modelo/cnx.php";

$sql = "SELECT * FROM cima2.usuario WHERE US_ID = '" . $usuario . "' AND US_PASSWORD= '" . $contrasenia . "'";
if(!$resultado = $mysqli->query($sql)) {
    echo "Error: La consulta fallo, información: \n";
    echo "Query: " . $sql . "\n";
    echo "Errno: " . $mysqli->errno . "\n";
    echo "Error: " . $mysqli->error . "\n";
    exit;
}


if($resultado->num_rows === 0) {
    $resultado->free();
    include "../modelo/cerrar.php";
    header("Location: ../index.php");
} else {
    session_start();
    $registro = $resultado->fetch_assoc();
    $_SESSION["id_Cliente"] = $registro["US_ID"];
    $_SESSION["nombre"] = $registro["US_NOMBRE"];
    $_SESSION["rol"] = $registro["US_ROL"];
    $matricula = $registro["US_ID"];
    if($registro["US_ROL"]==='1'){
       include "../modelo/cerrar.php";
    header("Location: ../vista/indexAdmin.php");  
    
    }else if($registro["US_ROL"]==='2'){
        include "../modelo/cerrar.php";
    header("Location: ../vista/indexAlumno.php"); 
    }
    
    $resultado->free();
    
}

?>