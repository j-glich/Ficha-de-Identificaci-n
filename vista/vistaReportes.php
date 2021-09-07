<?php require_once "vistas/parte_superior.php"?>
<div class="container">
    <h1 style="text-align: center;">Reportes del servicio de ficha de identificación</h1>
</div>
<!--FIN del cont principal-->
<?php

include_once 'cnx.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();

$consulta = "SELECT * FROM cima2.alumno";
$resultado = $conexion->prepare($consulta);
$resultado->execute();
$data=$resultado->fetchAll(PDO::FETCH_ASSOC);

$consulta2 = "SELECT * FROM cima2.antecedentes_generales";
$res = $conexion->prepare($consulta2);
$res->execute();
$data1=$res->fetchAll(PDO::FETCH_ASSOC);
?>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;

}

</style>
<div class="container">
<div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">        
                        <table id="tablaPersonas2" class="table table-striped" style="width:100%">
                        <thead class="text-center">
                            <tr>
                                <td>Matricula</td>
                                <td>Nombre completo</td>                               
                                <td>Correo</td>  
                                <td>Estado</td>
                                <td>Acciones</td>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <?php                            
                            foreach($data as $dat) {                                                        
                            ?>
                            <tr>
                                <td><?php echo $dat['AL_MATRICULA'] ?></td>
                                <td><?php echo $dat['AL_NOM_ALUMNO'] ?></td>
                                <td><?php echo $dat['AL_CORREO'] ?></td> 
                                <td><?php 
                                if ($dat['AL_EST_FICHA'] == 'COMPLETO') {
                                ?>
                                <center><img src="../vista/img/completo.jpg" alt="completo" width="60px" height="60px"></center>
                                <?php
                                } else {
                                ?>    
                                <img src="../vista/img/dr.png" alt="incompleto" width="120px" height="40px">  
                                <?php       
                                }  
                                ?></td>
                                <td></td>
                            </tr>
                            <?php
                                }
                            ?>                                
                        </tbody>        
                        </table>                    
                    </div>
                </div>
        </div>  
    </div>  
    <script type="text/javascript" src = '../jsPDF/dist/jspdf.min.js'></script>
    <script type="text/javascript">                           
    </script>

<?php require_once "vistas/parte_inferior.php"?>