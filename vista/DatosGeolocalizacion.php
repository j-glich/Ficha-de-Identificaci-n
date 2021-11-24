<?php require_once "vistas/parte_superiorAlumno.php"?>
<?php require_once "Registros/control/in_laborales.php";?>
<script type="text/javascript" src="https://unpkg.com/2cs-canvas2image@0.0.2/canvas2image.js"></script>
<link rel="stylesheet" href="../vista/estilos/s_Geolocalizacion.css" />
<script type="text/javascript" src="../vista/js//dom-to-image.js"></script>
<div class="container" id='container'>
    <h1 style="text-align: center;">Ficha de identificación</h1>
    <h3 style="text-align: center;">Datos de localización</h3>
    <div id="map" class="map"></div>
    <div id="informacion">
    <form id='formularioGeo' method="post" action = ''>
            <table>
              <tr>
                <td>  Calle:   </td>
                <td>  <input type="text" required class= "form-control" name="Calle" placeholder="callle" id ="calle" auntocompleto= "off"> </td>          
              </tr> 
              <tr>
                <td>  Municipio:   </td>
                <td>  <input type="text" required class= "form-control" name="municipio" placeholder="Municipio" id ="municipio" auntocompleto= "off"> </td>          
              </tr> 
              <tr>
              <td>  Colonia:   </td>
                <td>  <input type="text" required class= "form-control" name="colonia" placeholder="Colonia" id ="colonia" auntocompleto= "off"> </td>         
                <td> <button type="button" id='BOTON' onclick="buscar('calle','municipio')"></button></td> 
              </tr>
              <tr>
                <td>  Cordenada X:  </td>
                <td>  <input type="text"  class= "form-control" readonly id='cx' name="cx" auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td>  Cordenada Y: </td>
                <td>  <input type="text"  class= "form-control" readonly id='cy'name="cy" auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td>  En caso de accidente avisar a: Nombre del padre/madre/tutor (a):   </td>
                <td>  <input type="text" required class= "form-control" name="nombreTutor"  id="nombreTutor"  auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td>  Telefono(Casa): </td>
                <td>  <input type="text" required onkeypress="return solonumeros(event)" maxlength="10"  class= "form-control" id="telCasa" name="telCasa" auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td>  Telefono(Movil):  </td>
                <td>  <input type="text" required onkeypress="return solonumeros(event)" maxlength="10"  class= "form-control" id="telMovil" name="telMovil" auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td> <button type="submit" id='btn_grabar' class='btn btn-success btn-sm'>Guardar</button></td>
                <td> <button type="button" class='btn btn-danger btn-sm'>Cancelar</button>              </td>
                </tr>
            </table>
        </form>

</div> 
<div id="estado" style="display:none;"></div>  
</div>
<?php require_once "vistas/parte_inferior.php"?>
  <script>
   $(document).on('click', '#btn_grabar', function(e){
    e.preventDefault();
  
    var calle = $('#calle').val(), municipio = $('#municipio').val(), colonia= $('#colonia').val();
    var tutor = $('#nombreTutor').val(), telCasa = $('#telCasa').val(), telMovil= $('#telMovil').val() , cx= $('#cx').val(), cy= $('#cy').val();
    //alert(calle + municipio + estado + tutor + telMovil + telCasa);
    if ((calle == "") || (municipio == "") || (colonia == "") || (tutor == "") || (telCasa == "") || (telMovil == "") || (cx == "") || (cy == "")  ) {  //COMPRUEBA CAMPOS VACIOS
      Swal.fire({
            position: "center",
            icon: "error",
            title: "Capos Vacios",
            showConfirmButton: false,
            timer: 2500
          });
    return false;
  }
    var matricula = <?php  echo $_SESSION['id_Cliente']  ?>;
    $.ajax({
      url: '../vista/Registros/control/in_cordenadas.php', // Es importante que la ruta sea correcta si no, no se va a ejecutar
      method: 'POST',
      data: {calle:calle, municipio:municipio ,colonia:colonia , cx:cx , cy:cy , tutor:tutor, telCasa:telCasa , telMovil:telMovil, matricula:matricula},
      beforeSend: function(){
        $('#estado').css('display','block');
        $('#estado p').html('Guardando datos...');
      },
      //en caso de que se ejecute  r retornara 1 
      success: function(r){
        console.log(r);
        if(r==1){

    Swal.fire({
      icon: 'success',
      title: 'Registro Exitoso',
      text: 'Correcto!',
      showConfirmButton: false,
      timer: 2500});
      
            setTimeout(() => {
              window.location="indexAlumno.php";
            }, 2500);
        }else{
          Swal.fire({
            position: "top-end",
            icon: "success",
            title: "Ya has registrado una respuesta",
            showConfirmButton: false,
            timer: 2500
          });
          setTimeout(() => {
              window.location="indexAlumno.php";
            }, 2600);
        }
      }
    });
    });
</script>

<script src="../vista/js/js_Geolocalizacion.js"></script>