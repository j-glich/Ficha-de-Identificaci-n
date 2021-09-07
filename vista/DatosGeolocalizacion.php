<?php require_once "vistas/parte_superiorAlumno.php"?>
<?php require_once "Registros/control/in_laborales.php"?>
<link rel="stylesheet" href="./estilos/styleAN_GEOLOCALIZACION.css" />
<div class="container" id='container'>
    <h1 style="text-align: center;">Ficha de identificación</h1>
    <h3 style="text-align: center;">Datos de localización</h3>
    <div id="map"></div>
    <div id="informacion">
    <form id='formularioGeo' method="post" action = ''>
            <table>
              <tr>
                <td>  Calle:   </td>
                <td>  <input type="text" class= "form-control" name="Calle" placeholder="callle" id ="calle" auntocompleto= "off"> </td>          
              </tr> 
               <tr>
                <td>  Municipio:   </td>
                <td>  <input type="text" class= "form-control" name="municipio" placeholder="Municipio" id ="municipio" auntocompleto= "off"> </td>          
              </tr> 
              <tr>
              <td>  Estado:   </td>
              <td> <select class= "form-control" name="estado" id ='estado1'>
                  <option value="HGO">Hidalgo</option>
                </select></td>
                <td> <button type="button" id='BOTON' onclick="buscar('calle','municipio','estado1')"></button></td> 
              </tr>
              <tr>
                <td>  Cordenada X:  </td>
                <td>  <input type="text" class= "form-control" readonly id='cx' name="cx" auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td>  Cordenada Y: </td>
                <td>  <input type="text"  class= "form-control" readonly id='cy'name="cy" auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td>  En caso de accidente avisar a: Nombre del padre/madre/tutor (a):   </td>
                <td>  <input type="text"  class= "form-control" name="nombreTutor"  id="nombreTutor"  auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td>  Telefono(Casa): </td>
                <td>  <input type="text"  class= "form-control" id="telCasa" name="telCasa" auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td>  Telefono(Movil):  </td>
                <td>  <input type="text"  class= "form-control" id="telMovil" name="telMovil" auntocompleto= "off"> </td>
              </tr> 
              <tr>
                <td> <button type="submit" id='btn_grabar' class='btn btn-success btn-sm'>Guardar</button></td>
                <td> <button type="button" class='btn btn-danger btn-sm'>Cancelar</button></td>
                </tr>
            </table>
        </form>
</div> 
<div id="estado" style="display:none;"></div>  
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
  <script>
    $(document).on('click', '#btn_grabar', function(e){
            e.preventDefault();
            var calle = $('#calle').val(), municipio = $('#municipio').val(), estado= $('#estado1').val();
            var tutor = $('#nombreTutor').val(), telCasa = $('#telCasa').val(), telMovil= $('#telMovil').val() , cx= $('#cx').val(), cy= $('#cy').val();
            //alert(calle + municipio + estado + tutor + telMovil + telCasa);
            var matricula = <?php  echo $_SESSION['id_Cliente']  ?>;
            $.ajax({
              url: '../vista/Registros/control/in_cordenadas.php', // Es importante que la ruta sea correcta si no, no se va a ejecutar
              method: 'POST',
              data: { calle:calle, municipio:municipio ,estado:estado , cx:cx , cy:cy , tutor:tutor, telCasa:telCasa , telMovil:telMovil, matricula:matricula},
              beforeSend: function(){
                $('#estado').css('display','block');
                $('#estado p').html('Guardando datos...');
              },
              success: function(r){
                if(r==1){
                  Swal.fire(
                    "Registro Exitoso",
                    "Corecto!",
                    "success");
                    setTimeout(() => {
                      window.location="indexAlumno.php";
                    }, 2600);
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
<script type="text/javascript">

var lati = 20.21688898553249;
var long =-99.20135962073277;
var platform = new H.service.Platform({apikey: "uATgVUvD_u3aL87IpdbDu-cUs1zNodOcJnF8YWfvJV0"});
var defaultLayers = platform.createDefaultLayers();
//Step 2: initialize a map - this map is centered over Europe
var map = new H.Map(document.getElementById('map'),
      defaultLayers.vector.normal.map,{
      center: {lat:lati, lng:long},
      zoom: 13,
    pixelRatio: window.devicePixelRatio || 1});
    // add a resize listener to make sure that the map occupies the whole container
    window.addEventListener('resize', () => map.getViewPort().resize());
    //Step 3: make the map interactive
    // MapEvents enables the event system
    // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
    var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));
    // Create the default UI components
    var ui = H.ui.UI.createDefault(map, defaultLayers);
    // Now use the map as required...
    var aux = 0;
    var auxtemp = 0;
    var marcador1 = [];
    var marcador2 = [];
    var marcador3 = [];
    var marcador4 = [];
    var domicilio = "";
    function buscar(id,id1,id2){
        var Calle = document.getElementById(id).value;
        var Municipio = document.getElementById(id1).value;
        var Estado = document.getElementById(id2).value;
        domicilio = Calle+","+Municipio+","+Estado;
        if(aux<1){
          const geocoderService = platform.getGeocodingService();
          geocoderService.geocode({"searchtext":domicilio},
              success=>{
                      const location = success.Response.View[0].Result[0].Location.DisplayPosition;
                      const marker1 = new H.map.Marker({lat: location.Latitude, lng: location.Longitude});
                      let lat = ""+ location.Latitude;
                      let long = ""+ location.Longitude;
                      document.getElementById("cx").value =  lat.substring(0,8);
                      document.getElementById("cy").value =  long.substring(0,8);
                      marcador1.push(marker1);
                      map.addObject(marcador1[0]);    
                      },
              error=>{ console.error(error);});
                      aux++;
                      if(auxtemp==1){
                        map.removeObject(marcador2[0]);
                        marcador2.pop();
                        auxtemp--;
                      }
                      if(aux2 == 1){
                        aux2--;
                        map.removeObject(marcador3[0]);
                        marcador3.pop();  
                      }
                      console.log(aux+""+ auxtemp + 'buscar');   
                      if(temp ==1){
                        temp--;
                        map.removeObject(marcador4[0]);
                        marcador4.pop();  
                      }
        }else{
          aux--;
          map.removeObject(marcador1[0]);
          marcador1.pop(); 
        const geocoderService = platform.getGeocodingService();
          geocoderService.geocode({"searchtext":domicilio},
              success=>{
                  const location = success.Response.View[0].Result[0].Location.DisplayPosition;
                  const marker1 = new H.map.Marker({lat: location.Latitude, lng: location.Longitude});
                      let lat = ""+ location.Latitude;
                      let long = ""+ location.Longitude;
                      document.getElementById("cx").value =  lat.substring(0,8);
                      document.getElementById("cy").value =  long.substring(0,8);
                  marcador2.push(marker1);
                  map.addObject(marcador2[0]);    
                      },
          error=>{ console.error(error);});
          auxtemp++;
          console.log(aux+"" + auxtemp + 'buscar');   
          }
    }
    var aux2 =0;
    var temp =0;
    map.addEventListener("tap", event=>{
      const position = map.screenToGeo(
        event.currentPointer.viewportX,
        event.currentPointer.viewportY);
        const marker = new H.map.Marker(position);
        if (aux2<1) {
          marcador3.push(marker);
          map.addObject(marcador3[0]);   
          aux2++;
          if(temp==1){
            temp--;
            map.removeObject(marcador4[0]);
            marcador4.pop();
          }
            console.log(aux2+"" + temp + 'click'); 
            if(aux == 1){
            aux--;
            map.removeObject(marcador1[0]);
            marcador1.pop();  
                      }  
            if(auxtemp == 1){
            auxtemp--;
            map.removeObject(marcador2[0]);
            marcador2.pop();  
                      }        
          var cordenads =  marker.getGeometry().toString();
            // remover parentisis
            cordenads = cordenads.replace(")","");
            cordenads = cordenads.replace("(","");
            cordenads = cordenads.replace("POINT ","");
            var lista = cordenads.split(" ");
            document.getElementById("cx").value = lista[1].substring(0, 8);
            document.getElementById("cy").value = lista[0].substring(0, 8);    

        }else{
          aux2--;
          map.removeObject(marcador3[0]);
          marcador3.pop();  
          const position = map.screenToGeo(
            event.currentPointer.viewportX,
            event.currentPointer.viewportY);
            const marker2 = new H.map.Marker(position);
            marcador4.push(marker2);
            map.addObject(marcador4[0]);
            temp++  
            console.log(aux2+"" + temp + 'click');
            var cordenads =  marker2.getGeometry().toString();
            // remover parentisis
            cordenads = cordenads.replace(")","");
            cordenads = cordenads.replace("(","");
            cordenads = cordenads.replace("POINT ","");
            var lista = cordenads.split(" ");
            document.getElementById("cx").value = lista[1].substring(0, 8);
            document.getElementById("cy").value = lista[0].substring(0, 8);
        } 
      });
        
        
</script>
<?php require_once "vistas\parte_inferior.php"?>