<%@page import="tablas.Mapsdestina"%>
<%@page import="model.MapaDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>

<% 
	MapaDAO ddao=new MapaDAO();
	List<Mapsdestina> d = null;
%>
<% 
	MapaDAO mDAO=new MapaDAO();
	List<Mapsdestina> llista = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>HOME :: Destinaciones y Puntos de Interés</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<script src="js/jquery.min.js"></script>
		<!---script---->
		<link rel="stylesheet" href="css/jquery.bxslider.css" type="text/css" />
		<script src="js/jquery.bxslider.js"></script>
			<script type="text/javascript">
				$(document).ready(function(){
					$('.bxslider').bxSlider({
						 auto: true,
 						 autoControls: true,
						 minSlides: 4,
						 maxSlides: 4,
						 slideWidth:450,
						 slideMargin: 10
					});
				});
			</script>
		<!---//script---->
		<!---smoth-scrlling---->
			<script type="text/javascript">
				$(document).ready(function(){
									$('a[href^="#"]').on('click',function (e) {
									    e.preventDefault();
									    var target = this.hash,
									    $target = $(target);
									    $('html, body').stop().animate({
									        'scrollTop': $target.offset().top
									    }, 1000, 'swing', function () {
									        window.location.hash = target;
									    });
									});
								});
				</script>
		<!---//smoth-scrlling---->
		<!----start-top-nav-script---->
		<script type="text/javascript" src="js/flexy-menu.js"></script>
		<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
		<!----//End-top-nav-script---->
		<!---webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!---webfonts---->
		<!--start slider -->
	    <link rel="stylesheet" href="css/fwslider.css" media="all">
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/fwslider.js"></script>
		<!--end slider -->
		<!---calender-style---->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<link rel="stylesheet" href="css/custom.css">
		<!---//calender-style---->
		
		<script>
                
                function initMap() {
                    var latlon = new google.maps.LatLng(40.4167754, -3.7037901999999576);
                    var mapOptions = {center: latlon, zoom: 7, rotateControl: true};
                    var map = new google.maps.Map(document.getElementById('map'),mapOptions );
                    
                    
                    autocomplete = new google.maps.places.Autocomplete(
                            /** @type {!HTMLInputElement} */(document.getElementById('address')),
                            {types: ['(cities)']});

                    var geocoder = new google.maps.Geocoder();

                    autocomplete.addListener('place_changed', geocodeAddress(geocoder, map));
                    
                    document.getElementById('address').onkeydown = function(event) {
                        if (event.keyCode == 13) {
                            geocodeAddress(geocoder, map);
                        }
                    }
                    /*document.getElementById('submit').addEventListener('click', function () {
                        geocodeAddress(geocoder, map);
                    });*/
                }

                </script>
                <script>
                function geocodeAddress(geocoder, resultsMap) {
                    var address = document.getElementById('address').value;
                    var marker;
                   
               
                    geocoder.geocode({'address': address}, function (results, status) {
                        if (status === 'OK') {
                            resultsMap.setCenter(results[0].geometry.location);
                            marker = new google.maps.Marker({
                                map: resultsMap,
                                position: results[0].geometry.location,
                                draggable: true, //TODO MOURE MARCA
                                
                            });
                            var infowindow = new google.maps.InfoWindow();
                            google.maps.event.addListener(marker,'click',function() {
                                infowindow.setContent(address);
                                infowindow.open(resultsMap,marker);
                            });
                            
                            var lat = results[0].geometry.location.lat();
                            var lon = results[0].geometry.location.lng();
                            var placeid = results[0].place_id;
     
                            
                            
                            
                            results[0].geometry.localitation
                            //window.alert(address + " " + lat + "\n" + lng);
							
                            document.getElementById("hiddenLat").value = lat;
                            document.getElementById("hiddenLon").value = lon;
                            document.getElementById("hiddenNom").value = address;
                            document.getElementById("textalti").value = lat;
                            document.getElementById("textlongo").value = lon;
                            document.getElementById("placeid").value = placeid;

                        }
                    });
                }
                
            </script>
 
	</head>
	<body>
		<!----start-wrap---->
			<!----start-top-header----->
			<div class="top-header" id="header">
				<div class="wrap">
				<div class="top-header-left">
					<ul>
						<li><a href="#"><span> </span> Login</a></li>
						<li><p><span> </span> </p>&nbsp;<a class="reg" href="#"> Register</a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				
				<div class="clear"> </div>
			</div>
			</div>
			<!----//End-top-header----->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<!--- start-logo---->
				
				<!--- //End-logo---->
				<!--- start-top-nav---->
				<div class="top-nav">
						<ul class="flexy-menu thick orange">
							<li class="active"><a href="index.jsp">Home</a></li>
							<li><a href="destination.jsp">Destinaciones</a></li>
							<li><a href="mapa.jsp">Mapa</a></li>
						
						</ul>
						
						
				</div>
				<!--- //End-top-nav---->
				<div class="clear"> </div>
			</div>
			<!---//End-header---->
		</div>
		<div class="top-header"> <br> </div>
		<br>