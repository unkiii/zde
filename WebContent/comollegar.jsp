
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@include file="include/top.jsp" %>

<script type='text/javascript'>
            var map = null;
	var directionsDisplay = null;
	var directionsService = null;
	
	function initialize() {
	   var myLatlng = new google.maps.LatLng(20.68009, -101.35403);
	   var myOptions = {
	       zoom: 4,
	       center: myLatlng,
	       mapTypeId: google.maps.MapTypeId.ROADMAP
	   };
	   map = new google.maps.Map($("#map_canvas").get(0), myOptions);
	directionsDisplay = new google.maps.DirectionsRenderer();
	directionsService = new google.maps.DirectionsService();
	}
	
		function getDirections(){
			var start = $('#start').val();
			var end = $('#end').val();
			if(!start || !end){
				alert("Start and End addresses are required");
				return;
			}
			var request = {
			        origin: start,
			        destination: end,
			        travelMode: google.maps.DirectionsTravelMode[$('#travelMode').val()],
			        unitSystem: google.maps.DirectionsUnitSystem[$('#unitSystem').val()],
			        provideRouteAlternatives: true
		    };
			directionsService.route(request, function(response, status) {
		        if (status == google.maps.DirectionsStatus.OK) {
		            directionsDisplay.setMap(map);
		            directionsDisplay.setPanel($("#directions_panel").get(0));
		            directionsDisplay.setDirections(response);
		            var summaryPanel = ($("#distance_panel").get(0));
					summaryPanel.innerHTML = '';
		            for (var j = 0; j < response.routes.length; j++){
		            	var route = response.routes[j];
		            	console.log(response.routes[j]);
						var routeSegment = j + 1;
						summaryPanel.innerHTML += '<b>Ruta ' + routeSegment + ': ';
						summaryPanel.innerHTML += route.legs[0].distance.text;
						summaryPanel.innerHTML += ' (' + route.legs[0].distance.value + 'm)<br><br>';
	             }
		        } else {
		            alert("There is no directions available between these two points");
		        }
		    });
		}
	
	$('#search').live('click', function(){ getDirections(); });
	$('.routeOptions').live('change', function(){ getDirections(); });
	
	
	
	
	$(document).ready(function() {
	   initialize();
	   gmaps_ads();
	});        
</script>

	<div id="content">
	<div class="outer" >
	    <div class="inner bg-light lter">
			<!-- 1 -->
			<div id="content">
				<div class="outer" >
			    	<div class="inner bg-light lter">
						<div class="col-lg-12">
			            	<h3 style="text-align:center;">Mapa Destinaciones</h3>
			            	
			    		</div>
					</div>
				<!-- /.inner -->				
				</div>
				<br> 
			<!-- /.outer -->
			 <article id="main-content" class="width4">                <nav id="main-menu" class="width4">
                    <ul>
                        <li class="menu-bar"><a href="/">Home</a></li>
                        <li class="menu-bar"><a href="http://gmaps.alexfranco.mx/page/faq">Preguntas Frecuentes (FAQ)</a></li>                                            </ul>
                </nav>
				<div class="donate">¿Te gustaría invitarme un café?<br/><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
				<input type="hidden" name="cmd" value="_s-xclick">
				<input type="hidden" name="hosted_button_id" value="YEZBFTEU6E6YU">
				<input type="image" src="https://www.paypalobjects.com/es_XC/MX/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal, la forma más segura y rápida de pagar en línea.">
				<img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
				</form>
			</div>
			<section class="column width4 first" xmlns="http://www.w3.org/1999/html">
		 <h2>Obtener distancia a partir de las rutas</h2>
		    <div class="column width1 first" id="fb">
		        <div id="fb-root"></div>
		        <div class="fb-like" data-send="false" data-layout="button_count" data-width="150" data-show-faces="false"></div></div>
		    <div class="column width1" id="tw">
		        <a href="https://twitter.com/share" class="twitter-share-button" data-via="jafrancov" data-lang="es" data-hashtags="gmaps">Tweet</a>
		    </div>
		    <div class="column width1" id="gp">
		        <div class="g-plusone" data-size="medium"></div>
		    </div>
		    <div class="column width1" id="in">
		        <script type="IN/Share" data-counter="right"></script>
		    </div>
			 <div class="column first" id="info"
			        <p>Este ejemplo muestra cómo obtener para su manipulación las distancias de rutas y direcciones entre 2 puntos, pueden ser direcciones o coordenadas.</p><br/>
			        <p>Publicado en: <a href="http://gmaps.alexfranco.mx">http://gmaps.alexfranco.mx</a></p><br/>
			        <div class="demo column width4 first">
			            <div class="column width1 first">
			Origen <input type="text" id="start" placeholder="address or coordinates" />
			<br/>
			Destino <input type="text" id="end" placeholder="address or coordinates" />
			</div>
			<div class="column unitx1 align-center">|</div>
			<div class="column width1">
			Tipo de Viaje 
			<select id="travelMode" class="routeOptions" >
			<option value="DRIVING" selected="selected">En Auto</option>
			          <option value="BICYCLING">En Bicicleta</option>
			          <option value="WALKING">Caminando</option>
			      </select><br/>
			Unidades de medida
			      <select id="unitSystem" class="routeOptions">
			          <option value="METRIC" selected="selected">Métrico</option>
			          <option value="IMPERIAL">Imperial</option>
			      </select>
			</div>
			<div class="first">
			<p class="button"><a href="javascript:void(0)" id="search" class="send" >Buscar Ruta</a></p>
			</div>
			<br/>
			<div id="results" style="width: 990px; height: 500px;" class="column first">
			<div id="map_canvas" style="width: 65%; height: 100%; float: left;"></div>
			  <div id="routes_panel" style="width: 35%; height: 100%; overflow: auto; float: right;">
						<div id="distance_panel" style="width: 100%; height: 20%;"></div>
						<div id="directions_panel" style="width: 100%; height: 80%;"></div>
					</div>
				</div>        </div>
			    </div>
			</section>
            </article>
                    <div class="width4 first" id="footer"></div>
            <footer class="width4 clear">
                <p><small><a href="http://alexfranco.mx" target="_blank">AlexFranco.mx</a> Content of this site is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/" target="_blank">Creative Commons Attribution-Share Alike 3.0 Unported License</a>.</small></p>
            </footer>
        </div>

                
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&callback=myMap"></script>
       
   
		  	    		
		  	    		
		
<%@include file="include/bot.jsp" %>