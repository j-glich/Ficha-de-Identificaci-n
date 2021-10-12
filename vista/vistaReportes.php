<?php require_once "vistas/parte_superior.php"?>
<div class="container">
    <h1 style="text-align: center;">Reportes del servicio de ficha de identificación</h1>
</div>
<!--FIN del cont principal-->
<?php
include_once 'cnx.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();
$sql = 'CALL cima2.sp_fi_listar_alumnos()';
$stmt = $conexion->prepare($sql);
$stmt->execute();
$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<div class="container">
        <div class="row">
            <div class="col-lg-12">            
            <button id="btnMapa" type="button" class="btn btn-success btnMapa" data-toggle="modal">Geolocalizar Alumnos</button>    
            </div>    
        </div>    
    </div>    
    <br> 
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
<!--Modal para mapa-->
<style>
.modal-content{
    color: cadetblue;
    width: 650px;
    height:600px;
}
.title__modal{
    text-align: center;
}
.mapa{
  padding: auto;
  margin: auto;
  width: 500px;
  height: 400px;
}
</style>
<div class="modal fade" id="modalCRUD" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="text-align: center" id="exampleModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>   
            <div id='map' class="modal-body">
              
            </div>            
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">Cancelar</button>
                <button type="submit" id="btnGuardar" class="btn btn-dark">Guardar</button>
            </div>
 
        </div>
    </div>
</div>  
