<?php require_once "vistas/parte_superiorAlumno.php"?>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<?php
include_once '../vista/bd/conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$matricula =$_SESSION["id_Cliente"];
$sql = 'CALL cima2.sp_fi_listar_ant_gen_salud(?)';
$stmt = $conexion->prepare($sql);
//Envio de parametros mediante PDO
$stmt->bindParam(1, $matricula, PDO::PARAM_STR, 10);
$stmt->execute();
$num_rows = $stmt->fetchColumn();
if ($num_rows > 0){ 
    $conexion = null;
}else{
  echo "<script>
  Swal.fire({
    icon: 'success',
    title: 'Registro Exitoso',
    text: 'Correcto!',
    showConfirmButton: false,
    timer: 2500});
      </script>";
        $pro_salud = (isset($_POST['grupo-al-salud'])) ? $_POST['grupo-al-salud'] : 'Si';
        $Especifique1 = (isset($_POST['Especifique1'])) ? $_POST['Especifique1'] : 'Ninguna';
        $tiposagre = (isset($_POST['sangre'])) ? $_POST['sangre'] : '';  
        $alergia = (isset($_POST['gru-alergias'])) ? $_POST['gru-alergias'] : 'Si';  
        $Especifique2 = (isset($_POST['Especifique2'])) ? $_POST['Especifique2'] : 'Ninguna';  
        $tip_alergia = (isset($_POST['grup-ale'])) ? $_POST['grup-ale'] : 'Ninguna';
        $sensorial = (isset($_POST['grupo2'])) ? $_POST['grupo2'] : 'Ninguna';
        $motora = (isset($_POST['grupo3'])) ? $_POST['grupo3'] : 'No';
        $Especifique3 = (isset($_POST['Especifique3'])) ? $_POST['Especifique3'] : 'Ninguna';
        $temporal = (isset($_POST['grupo4'])) ? $_POST['grupo4'] : 'Ninguna';
        $por_su_tipo = (isset($_POST['grupo5'])) ? $_POST['grupo5'] : 'Ninguna';
        //Invocacion del procedimiento almacenado 
        $sql = 'CALL sp_fi_in_ant_gen_salud(?,?,?,?,?,?,?,?,?,?,?,?)';
        $stmt = $conexion->prepare($sql);
        //Envio de parametros mediante PDO
        $stmt->bindParam(1, $pro_salud, PDO::PARAM_STR, 2);
        $stmt->bindParam(2, $Especifique1, PDO::PARAM_STR, 45);
        $stmt->bindParam(3, $tiposagre, PDO::PARAM_STR, 45);
        $stmt->bindParam(4, $alergia, PDO::PARAM_STR, 2);
        $stmt->bindParam(5, $tip_alergia, PDO::PARAM_STR, 15);
        $stmt->bindParam(6, $Especifique2, PDO::PARAM_STR, 45);
        $stmt->bindParam(7, $sensorial, PDO::PARAM_STR, 45);
        $stmt->bindParam(8, $motora, PDO::PARAM_STR, 2);
        $stmt->bindParam(9, $Especifique3, PDO::PARAM_STR, 45);
        $stmt->bindParam(10, $temporal, PDO::PARAM_STR, 45);
        $stmt->bindParam(11, $por_su_tipo, PDO::PARAM_STR, 45);
        $stmt->bindParam(12, $matricula, PDO::PARAM_STR, 10);
        $stmt->execute();
        $conexion = null;
}
?>