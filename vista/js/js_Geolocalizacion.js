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
zoom: 14,
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
//Variables auxiliares para ciclar el proceso
var axbuscar = 0;
var tempbucar = 0;
var axclick =0;
var tempclick =0;
//Variables que almacenan temporal el objeto marker o marcador 
var marcador1 = [];
var marcador2 = [];
var marcador3 = [];
var marcador4 = [];
//Variables que almacenan temporal el dibujo del ruteo de ubicacion
var objrouting= [];
var objrouting1 = [];
var domicilio = "";

const ITSOEH = new H.map.Marker({lat: itsoehla, lng: itsoehlong});
//Metodo buscar se puede ejecutar cuanta veses sea nesesario
function buscar(id,id1){
//Etiqueta que permite darle un mesaje al marcador
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
var Estado = 'HGO';
domicilio = Calle+","+Municipio+","+Estado;
//Si axbuscar = 0 < 1 entra 
if(axbuscar<1){
  const geocoderService = platform.getGeocodingService();
  geocoderService.geocode({"searchtext":domicilio},
      success=>{
              const location = success.Response.View[0].Result[0].Location.DisplayPosition;
              const marker1 = new H.map.Marker({lat: location.Latitude, lng: location.Longitude});
              const routingline = new H.geo.LineString();
              const params ={
              mode : "fastest;car;traffic:enabled",
              waypoint0: location.Latitude + ","+ location.Longitude,
              waypoint1: itsoehla + ","+ itsoehlong,
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
                objrouting.push(rutaestatica);
                map.addObject(objrouting[0]);  
                
                console.log(success.response.route[0].shape);
              },
              error=>{console.log(error);});

              let lat = ""+ location.Latitude;
              let long = ""+ location.Longitude;
              document.getElementById("cx").value =  lat.substring(0,8);
              document.getElementById("cy").value =  long.substring(0,8);
              // Se crea el primer marcador en Marcador1[0]
              marcador1.push(marker1);
              map.addObject(marcador1[0]);    
              // Termina el marcador
              },
                  error=>{ console.error(error);});
                  // se incrmenta la variable axbuscar paara entra al else
              axbuscar++;
              //
              if(tempbucar==1){
                map.removeObject(marcador2[0]);
                marcador2.pop();
                map.removeObject(objrouting[0]);
                objrouting.pop()
                tempbucar--;
              }
              if(axclick == 1){
                axclick--;
                map.removeObject(marcador3[0]);
                marcador3.pop();  
                map.removeObject(objrouting1[0]);
                objrouting1.pop();
              }
              console.log(axbuscar+""+ tempbucar + 'buscar');   
              if(tempclick ==1){
                tempclick--;
                map.removeObject(marcador4[0]);
                marcador4.pop();  
                map.removeObject(objrouting1[0]);
                objrouting1.pop();
              }
}else{
  axbuscar--;
  map.removeObject(objrouting[0]);
  objrouting.pop();
  map.removeObject(marcador1[0]);
  marcador1.pop(); 
 
const geocoderService = platform.getGeocodingService();
  geocoderService.geocode({"searchtext":domicilio},
      success=>{
          const location = success.Response.View[0].Result[0].Location.DisplayPosition;
          const marker1 = new H.map.Marker({lat: location.Latitude, lng: location.Longitude});
          const routingline = new H.geo.LineString();
              let lat = ""+ location.Latitude;
              let long = ""+ location.Longitude;
              const params ={
              mode : "fastest;car;traffic:enabled",
              waypoint0: location.Latitude + ","+ location.Longitude,
              waypoint1: itsoehla + ","+ itsoehlong,
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
                objrouting.push(rutaestatica);
                map.addObject(objrouting[0]);  
                
                console.log(success.response.route[0].shape);
              },
              error=>{
                console.log(error);

              });
              document.getElementById("cx").value =  lat.substring(0,8);
              document.getElementById("cy").value =  long.substring(0,8);
          marcador2.push(marker1);
          map.addObject(marcador2[0]);    
              },
  error=>{ console.error(error);});
  tempbucar++;
  console.log(axbuscar+"" + tempbucar + 'buscar');   
  }
}



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

if (axclick<1) {
  marcador3.push(marker);
  map.addObject(marcador3[0]);   
  axclick++;
  if(tempclick==1){
    tempclick--;
    map.removeObject(marcador4[0]);
    marcador4.pop();
    map.removeObject(objrouting1[0]);
    objrouting1.pop() ;
  }
    console.log(axclick+"" + tempclick + 'click'); 
    if(axbuscar == 1){
    axbuscar--;
    map.removeObject(marcador1[0]);
    marcador1.pop(); 
    map.removeObject(objrouting[0]);
    objrouting.pop() ;
              }  
    if(tempbucar == 1){
    tempbucar--;
    map.removeObject(marcador2[0]);
    marcador2.pop(); 
    map.removeObject(objrouting[0]);
    objrouting.pop() ; 
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
        //metodo que permite la codificiacion inversa al hacer clil
    geocoder.reverseGeocode(parameters,
      function (result) {
        console.log(result);
        const calle = result.Response.View[0].Result[0].Location.Address.Street;
        const mun =  result.Response.View[0].Result[0].Location.Address.City;
        const distrito = result.Response.View[0].Result[0].Location.Address.District;
        if(calle){
          document.getElementById("calle").value = calle;    
        }else{
          document.getElementById("calle").value = distrito; 
        }
        document.getElementById("municipio").value = mun;  
        document.getElementById("colonia").value = distrito;  

      }, function (error) {
        console.log(error);
      });
    document.getElementById("cx").value = lista[1].substring(0, 8);
    document.getElementById("cy").value = lista[0].substring(0, 8);   
    const routingline = new H.geo.LineString();
              const params ={
              mode : "fastest;car;traffic:enabled",
              waypoint0: lista[1].substring(0, 8) + ","+ lista[0].substring(0, 8),
              waypoint1: itsoehla + ","+ itsoehlong,
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
                objrouting1.push(rutaestatica);
                map.addObject(objrouting1[0]);  
                
                console.log(success.response.route[0].shape);
              },
              error=>{console.log(error);}); 
    
}else{
  axclick--;
  map.removeObject(marcador3[0]);
  marcador3.pop();  
  map.removeObject(objrouting1[0]);
  objrouting1.pop() ;
  const position = map.screenToGeo(
    event.currentPointer.viewportX,
    event.currentPointer.viewportY);
    const marker2 = new H.map.Marker(position);
    marcador4.push(marker2);
    map.addObject(marcador4[0]);
    tempclick++  
    console.log(axclick+"" + tempclick + 'click');
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
        console.log(result);
        const calle = result.Response.View[0].Result[0].Location.Address.Street;
        const mun =  result.Response.View[0].Result[0].Location.Address.City;
        const distrito = result.Response.View[0].Result[0].Location.Address.District;
        if(calle){
          document.getElementById("calle").value = calle;    
        }else{
          document.getElementById("calle").value = distrito; 
        }
        document.getElementById("municipio").value = mun;  
        document.getElementById("colonia").value = distrito;  

      }, function (error) {
        console.log(error);
      });
    document.getElementById("cx").value = lista[1].substring(0, 8);
    document.getElementById("cy").value = lista[0].substring(0, 8);
    const routingline = new H.geo.LineString();
              const params ={
              mode : "fastest;car;traffic:enabled",
              waypoint0: lista[1].substring(0, 8) + ","+ lista[0].substring(0, 8),
              waypoint1: itsoehla + ","+ itsoehlong,
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
                objrouting1.push(rutaestatica);
                map.addObject(objrouting1[0]);  
                
                console.log(success.response.route[0].shape);
              },
              error=>{console.log(error);}); 
} 
});

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
$.ajax({
url:"../vista/Registros/control/in_cordenadas.php",
// Enviar un parámetro post con el nombre base64 y con la imagen en el
data:{
    9: img
},
// Método POST
type:"post",
complete:function(){
    console.log("Todo en orden");
}
});
const res = await fetch(img);
const buff = await res.arrayBuffer();
const file = [
new File([buff],'photo_${new Date()}.jpg',{
type:'image/jpeg'
})
];
console.log(file);
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