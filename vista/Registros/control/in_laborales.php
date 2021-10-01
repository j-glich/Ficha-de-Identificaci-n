<?php require_once "vistas/parte_superiorAlumno.php"?>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<?php
include_once '../vista/bd/conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$matricula =$_SESSION["id_Cliente"];
$sql = 'CALL cima2.sp_fi_listar_ant_laborales(?)';
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
    timer: 2500})</script>'; 
    $conexion = null;
}else{
    echo '<script>
    Swal.fire(
            "Registro Exitoso",
            "Corecto!",
            "success")</script>';
        //variables
        $trabajas = (isset($_POST['grupo'])) ? $_POST['grupo'] : 'No';
        $nombre_empresa = (isset($_POST['nomEmpresa'])) ? $_POST['nomEmpresa'] : 'No Trabajo';
        $horario = (isset($_POST['horario'])) ? $_POST['horario'] : 'Sin horario';  
        $dependesde = (isset($_POST['grup'])) ? $_POST['grup'] : 'Otros';  
        $Especifique = (isset($_POST['Especifique'])) ? $_POST['Especifique'] : 'Ninguno';  
        $ingresofamiliar = (isset($_POST['IngresoFamiliar'])) ? $_POST['IngresoFamiliar'] : '0';
        $ingresopersonal = (isset($_POST['IngresoPersonal'])) ? $_POST['IngresoPersonal'] : '0';
        $padreEscolaridad = (isset($_POST['grup1'])) ? $_POST['grup1'] : 'Ninguna';
        $padreEstatus = (isset($_POST['grup2'])) ? $_POST['grup2'] : '';
        $padreocupacion = (isset($_POST['OcupacionPadre'])) ? $_POST['OcupacionPadre']:'';
        $madreEscolaridad = (isset($_POST['grup3'])) ? $_POST['grup3'] : 'Ninguna';
        $madreEstatus = (isset($_POST['grup4'])) ? $_POST['grup4'] : '';
        $madreocupacion = (isset($_POST['OcupacionMadre'])) ? $_POST['OcupacionMadre'] : 'Ninguna';
        $domicilio = (isset($_POST['domicilio'])) ? $_POST['domicilio'] : 'Ninguna';
        //Invocacion del procedimiento almacenado 
        $sql = 'CALL sp_fi_in_ant_laborales(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)';
        $stmt = $conexion->prepare($sql);
        //Envio de parametros mediante PDO
        $stmt->bindParam(1, $trabajas, PDO::PARAM_STR, 2);
        $stmt->bindParam(2, $nombre_empresa, PDO::PARAM_STR, 45);
        $stmt->bindParam(3, $horario, PDO::PARAM_STR, 20);
        $stmt->bindParam(4, $dependesde, PDO::PARAM_STR, 45);
        $stmt->bindParam(5, $Especifique, PDO::PARAM_STR, 45);
        $stmt->bindParam(6, $ingresofamiliar, PDO::PARAM_STR, 45);
        $stmt->bindParam(7, $ingresopersonal, PDO::PARAM_STR, 45);
        $stmt->bindParam(8, $domicilio, PDO::PARAM_STR,45);
        $stmt->bindParam(9, $padreEscolaridad, PDO::PARAM_STR, 35);
        $stmt->bindParam(10,$padreEstatus, PDO::PARAM_STR, 15);
        $stmt->bindParam(11,$padreocupacion, PDO::PARAM_STR, 45);
        $stmt->bindParam(12,$madreEscolaridad, PDO::PARAM_STR, 35);
        $stmt->bindParam(13,$madreEstatus, PDO::PARAM_STR, 15);
        $stmt->bindParam(14,$madreocupacion, PDO::PARAM_STR, 45);
        $stmt->bindParam(15,$matricula, PDO::PARAM_STR, 10);
        $stmt->execute();
        $conexion = null;
        }
?>