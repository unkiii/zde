
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
			             
			 
			</div>
			
			<article id="main-content" class="width4">   
				Origen <input type="text" id="start" placeholder="address or coordinates" />
				<br/>
				Destino <input type="text" id="end" placeholder="address or coordinates" />
	
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
			</article>
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
			</div>       
		</div>
	</div>
	</div>
	<br/>
<br/>
<br/>
	<div class="width4 first" id="footer"></div>

               
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&callback=myMap"></script>
       
   
		  	    		
		  	    		
		
<%@include file="include/bot.jsp" %>