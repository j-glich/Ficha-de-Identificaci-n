<?php  
include_once 'conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$sql = "call sp_fi_listar_reporte_exel()";
$stmt = $conexion->prepare($sql);
$stmt->setFetchMode(PDO::FETCH_ASSOC);
$stmt->execute();
header("Content-type: application/vnd.ms-excel; charset=iso-8859-1");
header('Content-Disposition: attachment; filename=Registros_Ficha-identificacion.xls');
header('Pragma: no-cache');
header('Expires: 0');
echo '<table border = 1>';
echo '<tr>';
echo '<th colspan=59>Reporte Ficha de Identificacion</th>';
echo '</tr>';
echo '<tr>
<th>ANG_MATRICULA</th><th>ANG_PROG_EDUCATIVO</th><th>ANG_SEMESTRE</th><th>ANG_GRUPO</th><th>ANG_NOMBRE</th><th>ANG_SEXO</th>
<th>ANG_CORREO</th><th>ANG_TELMOVIL</th><th>ANG_TELCASA</th><th>ANG_FECHA_NAC</th><th>ANG_LUGAR_NAC</th>
<th>ANG_EST_CIVIL</th><th>ANG_DOMICILIO</th><th>ANG_HIJOS</th><th>ANG_CUANTOS</th><th>ANG_FECHA_APL</th><th>ANG_CORREO_PERSONAL</th><th>ANG_PERIODO_ALUM</th><th>AE_TIPO_ESC</th>
<th>AE_ESPECIALIDAD</th><th>AE_NOM_ESC</th><th>AE_PROMEDIO</th><th>AE_BECA</th><th>AE_VIVE_CON</th><th>AE_TIPO_BECA</th><th>AE_OTRO_TB</th>
<th>ANGS_PRO_SALUD</th><th>ANGS_ESPECIFIQUE</th><th>ANGS_TIP_SANGRE</th><th>ANGS_ALERGIAS</th><th>ANGS_TIP_ALERGIA</th><th>ANGS_ESP_ALERGIA</th>
<th>ANGS_DIS_SENSORIAL</th><th>ANGS_DIS_MOTORA</th><th>ANGS_ESP_DIS_MOTORA</th><th>ANGS_DIS_TEMPORAL</th><th>ANGS_TIPO_DIS</th><th>ANL_TRABAJO</th>
<th>ANL_NOM_TRABAJO</th><th>ANL_HORARIO</th><th>ANL_DEP_ECONO</th><th>ANL_ESP_DEP</th><th>ANL_ING_MEN_FAMILIAR</th><th>ANL_ING_MEN_PERSONAL</th>
<th>ANL_DOMICILIO</th><th>ANL_ESC_PADRE</th><th>ANL_EST_DEF_PA</th><th>ANL_OC_PADRE</th><th>ANL_ESC_MADRE</th><th>ANL_EST_DEF_MA</th><th>ANL_OC_MADRE</th>
<th>ANLO_CALLE</th><th>ANLO_MUNICIPIO</th><th>ANLO_COLONIA</th>
<th>ANLO_LATITUDE</th><th>ANLO_LOGITUDE</th><th>ANLO_NOM_TUTOR</th><th>ANLO_TEL_CASA</th><th>ANLO_TEL_MOVIL</th></tr>';

// Mostramos los resultados
while ($row = $stmt->fetch()){
    echo '<tr>';
    echo '<td>'.utf8_decode($row['ANG_MATRICULA']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_PROG_EDUCATIVO']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_SEMESTRE']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_GRUPO']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_NOMBRE']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_SEXO']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_CORREO']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_TELMOVIL']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_TELCASA']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_FECHA_NAC']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_LUGAR_NAC']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_EST_CIVIL']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_DOMICILIO']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_HIJOS']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_CUANTOS']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_FECHA_APL']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_CORREO_PERSONAL']).'</td>';
    echo '<td>'.utf8_decode($row['ANG_PERIODO_ALUM']).'</td>';
    echo '<td>'.utf8_decode($row['AE_TIPO_ESC']).'</td>';
    echo '<td>'.utf8_decode($row['AE_ESPECIALIDAD']).'</td>';
    echo '<td>'.utf8_decode($row['AE_NOM_ESC']).'</td>';
    echo '<td>'.utf8_decode($row['AE_PROMEDIO']).'</td>';
    echo '<td>'.utf8_decode($row['AE_BECA']).'</td>';
    echo '<td>'.utf8_decode($row['AE_VIVE_CON']).'</td>';
    echo '<td>'.utf8_decode($row['AE_TIPO_BECA']).'</td>';
    echo '<td>'.utf8_decode($row['AE_OTRO_TB']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_PRO_SALUD']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_ESPECIFIQUE']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_TIP_SANGRE']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_ALERGIAS']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_TIP_ALERGIA']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_ESP_ALERGIA']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_DIS_SENSORIAL']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_DIS_MOTORA']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_ESP_DIS_MOTORA']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_DIS_TEMPORAL']).'</td>';
    echo '<td>'.utf8_decode($row['ANGS_TIPO_DIS']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_TRABAJO']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_NOM_TRABAJO']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_HORARIO']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_DEP_ECONO']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_ESP_DEP']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_ING_MEN_FAMILIAR']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_ING_MEN_PERSONAL']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_DOMICILIO']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_ESC_PADRE']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_EST_DEF_PA']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_OC_PADRE']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_ESC_MADRE']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_EST_DEF_MA']).'</td>';
    echo '<td>'.utf8_decode($row['ANL_OC_MADRE']).'</td>';
    echo '<td>'.utf8_decode($row['ANLO_CALLE']).'</td>';
    echo '<td>'.utf8_decode($row['ANLO_MUNICIPIO']).'</td>';
    echo '<td>'.utf8_decode($row['ANLO_COLONIA']).'</td>';
    echo '<td>'.utf8_decode($row['ANLO_LATITUDE']).'</td>';
    echo '<td>'.utf8_decode($row['ANLO_LOGITUDE']).'</td>';
    echo '<td>'.utf8_decode($row['ANLO_NOM_TUTOR']).'</td>';
    echo '<td>'.utf8_decode($row['ANLO_TEL_CASA']).'</td>';
    echo '<td>'.utf8_decode($row['ANLO_TEL_MOVIL']).'</td>';
    echo '</tr>';
}
echo '</table>';
?>