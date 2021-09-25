<?php require_once "vistas/parte_superiorAlumno.php"?>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<?php
include_once 'C:\xampp\htdocs\ProyectoITSOEH\vista\bd\conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$matricula =$_SESSION["id_Cliente"];
$sql = 'CALL cima2.sp_fi_listar_ANGENERALES(?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
$stmt->execute();
$num_rows = $stmt->fetchColumn();
if ($num_rows > 0){ 
  echo '<script>
  Swal.fire({
    position: "top-end",
    icon: "success",
    title: "Ya has registrado una respuesta",
    showConfirmButton: false,
    timer: 2500
  })
        </script>'; 
      $conexion = null;
}else{
    echo '<script>
    Swal.fire(
        "Registro Exitoso",
        "Corecto!",
        "success"
      )
        </script>';
        //variables
        $carrera = (isset($_POST['carrera'])) ? $_POST['carrera'] : '';
        $matricula = (isset($_POST['matricula'])) ? $_POST['matricula'] : '';  
        $semestre = (isset($_POST['semestre'])) ? $_POST['semestre'] : '';  
        $grupo = (isset($_POST['grupo1'])) ? $_POST['grupo1'] : '';  
        $nombre = (isset($_POST['nombre'])) ? $_POST['nombre'] : '';
        $correo = (isset($_POST['correo'])) ? $_POST['correo'] : '';
        $sexo = (isset($_POST['sexo'])) ? $_POST['sexo'] : '';
        $telefonoCasa = (isset($_POST['numerocasa'])) ? $_POST['numerocasa'] : '';
        $telefonoCelular = (isset($_POST['numeroCelular'])) ? $_POST['numeroCelular'] : '';
        $fecha = (isset($_POST['fecha'])) ? $_POST['fecha'] : '';
        $lug_Nacimiento = (isset($_POST['lugarNac'])) ? $_POST['lugarNac'] : '';
        $Est_Civil = (isset($_POST['estadoCivil'])) ? $_POST['estadoCivil'] : '';
        $domicilio = (isset($_POST['domicilio'])) ? $_POST['domicilio'] : '';
        $hijos = (isset($_POST['grupo'])) ? $_POST['grupo'] : 'si';
        $Cuantos = (isset($_POST['numhijos'])) ? $_POST['numhijos'] : '0';
        //Invocacion del procedimiento almacenado 
        $sql = 'CALL sp_in_antecedentes_generales_v2(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)';
        $stmt = $conexion->prepare($sql);
        //Envio de parametros mediante PDO
        $stmt->bindParam(1, $carrera, PDO::PARAM_STR, 45);
        $stmt->bindParam(2, $matricula, PDO::PARAM_STR, 45);
        $stmt->bindParam(3, $semestre, PDO::PARAM_STR, 45);
        $stmt->bindParam(4, $grupo, PDO::PARAM_STR, 45);
        $stmt->bindParam(5, $nombre, PDO::PARAM_STR, 45);
        $stmt->bindParam(6, $sexo, PDO::PARAM_STR, 1);
        $stmt->bindParam(7, $correo, PDO::PARAM_STR, 45);
        $stmt->bindParam(8, $telefonoCasa, PDO::PARAM_STR, 10);
        $stmt->bindParam(9, $telefonoCelular, PDO::PARAM_STR, 45);
        $stmt->bindParam(10, $fecha, PDO::PARAM_STR, 45);
        $stmt->bindParam(11, $lug_Nacimiento, PDO::PARAM_STR, 45);
        $stmt->bindParam(12, $Est_Civil, PDO::PARAM_STR, 45);
        $stmt->bindParam(13, $domicilio, PDO::PARAM_STR, 45);
        $stmt->bindParam(14, $hijos, PDO::PARAM_STR, 2);
        $stmt->bindParam(15, $Cuantos, PDO::PARAM_INT, 11);
        $stmt->execute();
        $conexion= null;
}
?>