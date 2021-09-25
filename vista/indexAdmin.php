<?php require_once "vistas/parte_superior.php"?>

<!--INICIO del cont principal-->
<div class="container">
    <h1>Contenido principal</h1>
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
            <button id="btnNuevo" type="button" class="btn btn-success" data-toggle="modal">Nuevo</button>    
            </div>    
        </div>    
    </div>    
    <br>  
<div class="container">
        <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">        
                        <table id="tablaPersonas" class="table table-striped table-bordered table-condensed" style="width:100%">
                        <thead class="text-center">
                            <tr>
                                <th>Matricula</th>
                                <th>Nombre completo</th>
                                <th>Semestre</th>                                
                                <th>Correo</th>  
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php                            
                            foreach($data as $dat) {                                                        
                            ?>
                            <tr>
                                <td><?php echo $dat['AL_MATRICULA'] ?></td>
                                <td><?php echo $dat['AL_NOM_ALUMNO'] ?></td>
                                <td><?php echo $dat['AL_SEMESTRE'] ?></td>
                                <td><?php echo $dat['AL_CORREO'] ?></td>    
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
<!--Modal para CRUD-->
<div class="modal fade" id="modalCRUD" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
        <form id="formPersonas">    
            <div class="modal-body">
                <div class="form-group">
                <label for="nombre" class="col-form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre">
                </div>
                <div class="form-group">
                <label for="pais" class="col-form-label">País:</label>
                <input type="text" class="form-control" id="pais">
                </div>                
                <div class="form-group">
                <label for="edad" class="col-form-label">Edad:</label>
                <input type="number" class="form-control" id="edad">
                </div>            
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">Cancelar</button>
                <button type="submit" id="btnGuardar" class="btn btn-dark">Guardar</button>
            </div>
        </form>    
        </div>
    </div>
</div>  
</div>
<?php require_once "vistas/parte_inferior.php"?>