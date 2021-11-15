<?php require_once "vistas/parte_superior.php"?>
<link rel="stylesheet" href="../vista/estilos/s_VistaReportes.css" />
<div class="container">
    <h1 style="text-align: center;">Reportes de servicio</h1>
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
            <button id="btnMapa" type="button" class="btn text-light btnMapa " data-toggle="modal">
            <i class="bi bi-pin-map-fill"></i>
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pin-map-fill text-primary" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M3.1 11.2a.5.5 0 0 1 .4-.2H6a.5.5 0 0 1 0 1H3.75L1.5 15h13l-2.25-3H10a.5.5 0 0 1 0-1h2.5a.5.5 0 0 1 .4.2l3 4a.5.5 0 0 1-.4.8H.5a.5.5 0 0 1-.4-.8l3-4z"/>
            <path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999z"/>}
            </svg>
            </button>    
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
<!--Modal interno indivisual de alumnos-->
<div class="modal1 fade" id="modalUsuario" tabindex="-1"  role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content1">
            <div class="modal-header1">
                <h5 class="modal-title1"  id="exampleModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>   
            <div id='body' class="modal-body">   
                <label id="id__info">INFORMACIÓN</label>
                <br>
            </div>            
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">Salir</button>
            </div>
        </div>
    </div>
</div>  

<div class="modal2 fade" id="modalUsuarioindividual" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content1">
            <div class="modal-header1">
                <h5 class="modal-title1"  id="exampleModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>   
            <div id='body' class="modal-body">   
                <label id="id__info">INFORMACIÓN</label>
                <br>
            </div>            
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">Salir</button>
            </div>
        </div>
    </div>
</div>  

<div class="modal fade" id="modalmapaindividual"  tabindex="-1"   role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-contentmp">
            <div class="modal-headermp">
                <h5 class="modal-titlemp"  id="exampleModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>   
            <div id='bodymapa' class="modal-bodymp">        
            </div>            
            <div class="modal-footermp">
                <button type="button" class="btn btn-light" data-dismiss="modal">Salir</button>
            </div>
        </div>
    </div>
</div>  

