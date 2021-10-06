<?php require_once "vistas/parte_superiorAlumno.php"?>
<?php require_once "Registros/control/in_laborales.php";?>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/html2canvas@1.0.0-rc.1/dist/html2canvas.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/2cs-canvas2image@0.0.2/canvas2image.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<link rel="stylesheet" href="../vista/estilos/s_Geolocalizacion.css" />
<script type="text/javascript" src="../vista/js//dom-to-image.js"></script>
<script type="text/javascript" src=""></script>
<script type="text/javascript" src=""></script>

<h2>Generar Croquis</h2>
<div class="Pic" id="Pic">
<canvas id="screenshot"> </canvas>

</div>
<div class="container" id='container'>
    <h1 style="text-align: center;">Ficha de identificación</h1>
    <h3 style="text-align: center;">Datos de localización</h3>
    <div id="map" class="map"></div>
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
                <td> <button type="button" class='btn btn-danger btn-sm'>Cancelar</button>              </td>
                </tr>
            </table>
        </form>
        <button id="capturar"> Capturar img</button>
</div> 
<div id="estado" style="display:none;"></div>  
</div>


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
<script type="text/javascript">
var itsoehla = 20.20508;
var itsoehlong =-99.2226;
var lati = 20.21688898553249;
var long =-99.20135962073277;
var platform = new H.service.Platform({apikey: "uATgVUvD_u3aL87IpdbDu-cUs1zNodOcJnF8YWfvJV0"});
var defaultLayers = platform.createDefaultLayers();
//Step 2: initialize a map - this map is centered over Europe
var map = new H.Map(document.getElementById('map'),
      defaultLayers.vector.normal.map,{
      center: {lat:lati, lng:long},
      zoom: 10,
    pixelRatio: window.devicePixelRatio || 1});
    // add a resize listener to make sure that the map occupies the whole container
    window.addEventListener('resize', () => map.getViewPort().resize());
    //Step 3: make the map interactive
    // MapEvents enables the event system
    // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
 
    // Create the default UI components
    var ui = H.ui.UI.createDefault(map, defaultLayers);
    
    var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));
    const routerService = platform.getRoutingService();


    // Now use the map as required...
    var aux = 0;
    var auxtemp = 0;
    var marcador1 = [];
    var marcador2 = [];
    var marcador3 = [];
    var marcador4 = [];
    var domicilio = "";
    const ITSOEH = new H.map.Marker({lat: itsoehla, lng: itsoehlong});
    function buscar(id,id1,id2){
        ITSOEH.setData('<div><a href="http://www.itsoeh.edu.mx/"  target="_blank">ITSOEH</a></div>');
        ITSOEH.addEventListener("pointermove",event =>{const bubble = new H.ui.InfoBubble(
        event.target.getGeometry(),
        {
          content: event.target.getData()
        }
      );
      ui.addBubble(bubble);
    }, false);
    map.addObject(ITSOEH);
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
                      const routingline = new H.geo.LineString();
                      const params ={
                      mode : "fastest;car;traffic:enabled",
                      waypoint0: itsoehla + ","+ itsoehlong,
                      waypoint1: location.Latitude + ","+ location.Longitude,
                      representation : "display"
                      };
                      routerService.calculateRoute(params, success=>{
                        ruta = success.response.route[0].shape;
                      ruta.forEach(points =>{
                        let parts = points.split(",");
                        routingline.pushPoint({
                          lat: parts[0],
                          lng: parts[1]
                        });

                      });
                      const rutaestatica = new H.map.Polyline(routingline,{
                          style:{
                            lineWidth:5
                          }
                        }
                        );
                        map.addObject(rutaestatica);
                        console.log(success.response.route[0].shape);
                      },
                      error=>{
                        console.log(error);

                      });
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
        const ITSOEH = new H.map.Marker({lat: itsoehla, lng: itsoehlong});
        ITSOEH.setData('<div><a href="http://www.itsoeh.edu.mx/"  target="_blank">ITSOEH</a></div>');
        ITSOEH.addEventListener("pointermove",event =>{const bubble = new H.ui.InfoBubble(
        event.target.getGeometry(),
        {
          content: event.target.getData()
        }
      );
      ui.addBubble(bubble);
    }, false);
    map.addObject(ITSOEH);
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
            var geocoder = platform.getGeocodingService()
            var direccion = lista[1]+","+lista[0];
            parameters = {
                prox: direccion,
                mode: 'retrieveAddresses',
                maxresults: '1'};
            geocoder.reverseGeocode(parameters,
              function (result) {
                const calle = result.Response.View[0].Result[0].Location.Address.Street;
                const mun =  result.Response.View[0].Result[0].Location.Address.City;
                if(calle){
                  document.getElementById("calle").value = calle;    
                }else{
                  const distrito = result.Response.View[0].Result[0].Location.Address.District;
                  document.getElementById("calle").value = distrito; 
                }
                document.getElementById("municipio").value = mun;  
              }, function (error) {
                console.log(error);
              });
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
            var geocoder = platform.getGeocodingService();
            var direccion = lista[1]+","+lista[0];
            parameters = {
                prox: direccion,
                mode: 'retrieveAddresses',
                maxresults: '1'};
            geocoder.reverseGeocode(parameters,
              function (result) {
                const calle = result.Response.View[0].Result[0].Location.Address.Street;
                const mun =  result.Response.View[0].Result[0].Location.Address.City;
                if(calle){
                  document.getElementById("calle").value = calle;   
                }else{
                  const distrito = result.Response.View[0].Result[0].Location.Address.District;
                  document.getElementById("calle").value = distrito; 
                }   
                document.getElementById("municipio").value = mun;     
              }, function (error) {
                console.log(error);
              });
            document.getElementById("cx").value = lista[1].substring(0, 8);
            document.getElementById("cy").value = lista[0].substring(0, 8);
        } 
      });
</script>
<script type="text/javascript">
 const a = navigator.mediaDevices.getDisplayMedia;
 const takeScreenShot = async() =>{
   const stream = await navigator.mediaDevices.getDisplayMedia({
    video:{mediaSource:'screen'}
   });
   const track = stream.getVideoTracks()[0];
   const image = new ImageCapture(track);
   const bitmap = await image.grabFrame();
   track.stop();
   const canvas = document.getElementById('screenshot');
   canvas.width = bitmap.width;
   canvas.height = bitmap.height;
   const context = canvas.getContext('2d');
   //void ctx.drawImage(image, dx, dy, dWidth, dHeight);
   //
    context.drawImage(bitmap,248,50, 500,450, 250, 100, 500, 400);
    //void ctx.drawImage(image, sx, sy, sWidth, sHeight, dx, dy, dWidth, dHeight);
  
   const img = canvas.toDataURL();
   const res = await fetch(img);
   const buff = await res.arrayBuffer();
   const file = [
     new File([buff],'photo_${new Date()}.jpg',{
       type:'image/jpeg'
     })
   ];
return file;
 };

              
$("#capturar").click(function(){
 takeScreenShot();
    // Base64DataURL

  //$.ajax({
 // url: 'https://image.maps.ls.hereapi.com/mia/1.6/mapview',
 // type: 'GET',
 // data: {
   // apiKey: 'uATgVUvD_u3aL87IpdbDu-cUs1zNodOcJnF8YWfvJV0'
  //},
  //success: function (data) {
   // console.log(JSON.stringify(data));
 // }
//});
      // inserta la imagen en html
   //    var node = document.getElementById('map');
     //   domtoimage.toPng(node).then(function (dataUrl) {
       //                var img = new Image();
         //                img.src = dataUrl;
           //              document.getElementById("Pic").appendChild(img);
             //        });

  
//const $boton = document.querySelector("#capturar"), // El botón que desencadena
  //$objetivo = document.querySelector("#map"), // A qué le tomamos la foto
 // $contenedorCanvas = document.querySelector("#Pic"); // En dónde ponemos el elemento canvas
// Agregar el listener al botón/
//$boton.addEventListener("click", () => {
 // html2canvas($objetivo,{allowTaint: true, useCORS: true }).then(canvas => {
//var imgData = canvas.toDataURL('image/jpeg');
//$contenedorCanvas.appendChild(canvas); // Lo agregamos como hijo del di
//});

});
</script>
<?php require_once "vistas\parte_inferior.php"?>