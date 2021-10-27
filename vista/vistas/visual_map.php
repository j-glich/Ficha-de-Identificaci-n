<link rel="stylesheet" type="text/css" href="https://js.api.here.com/v3/3.1/mapsjs-ui.css" />  
<script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-core.js"></script>
<script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-service.js"></script>
<script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-ui.js"></script>
<script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-mapevents.js"></script>
<style>
.map{
    height: 100%;
    width: 100%;
    margin: 10px;
    top: 30px;
}
</style>
<div class="container" id='container'>
    <h1 style="text-align: center;">Mi Croquis de mi escuala a mi casa</h1>
    <h3 style="text-align: center;">Datos de localización</h3>
    <div id="map" class="map"></div>
    
</div>
<script type="text/javascript">
var itsoehla = 20.20508;
var itsoehlong =-99.2226;
var lati = 20.21688898553249;
var long =-99.20135962073277;
var lati_estudiante = <?php echo $_GET["lati"] ?>;
var long_estudiante = <?php echo $_GET["long"] ?>;
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
    //Este marcador tiene un info bubble donde proporciona la url de itsoeh
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
        const marker = new H.map.Marker({lat:lati_estudiante , lng :long_estudiante});
        map.addObject(marker);

        const routingline = new H.geo.LineString();
                const params ={
                mode : "fastest;car;traffic:enabled",
                waypoint0: lati_estudiante + ","+ long_estudiante,
                waypoint1: itsoehla + ","+ itsoehlong,
                representation : "display"
                };
                routerService.calculateRoute(params, 
                success=>{
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
                error=>{console.log(error);}); 
</script>
