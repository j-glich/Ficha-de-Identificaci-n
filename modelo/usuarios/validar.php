<?php

include_once "../modelo/cnx.php";


$sql = "SELECT * FROM cima2.usuario WHERE US_ID = '" . $usuario . "' AND US_PASSWORD='" . $contrasenia . "'";
if(!$resultado = $mysqli->query($sql)) {
    echo "Error: La consulta fallo, información: \n";
    echo "Query: " . $sql . "\n";
    echo "Errno: " . $mysqli->errno . "\n";
    echo "Error: " . $mysqli->error . "\n";
    exit;
}
if($resultado->num_rows === 0) {
    $resultado->free();
$sql = "SELECT * FROM cima2.alumno WHERE AL_MATRICULA = '" . $usuario . "' AND AL_MATRICULA='" . $contrasenia . "'";
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
    $_SESSION["id_Cliente"] = $registro["AL_MATRICULA"];
    $_SESSION["nombre"] = $registro["AL_NOM_ALUMNO"];
    $_SESSION["rol"] = $registro["AL_ROL"];
    $matricula = $registro["AL_MATRICULA"];
    if($registro["AL_ROL"]==='1'){
       include "../modelo/cerrar.php";
    header("Location: ../vista/indexAdmin.php");  
    
    }else if($registro["AL_ROL"]==='2'){
        include "../modelo/cerrar.php";
    header("Location: ../vista/indexAlumno.php"); 
    }
    
    $resultado->free();
    
}
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