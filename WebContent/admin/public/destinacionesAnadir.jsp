<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

					<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>AdminSite - Destinacions</title>
    
    <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
    <meta name="author" content="">
    
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/lib/font-awesome/css/font-awesome.css">
    
    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="assets/css/main.css">
    
    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="assets/lib/metismenu/metisMenu.css">
    
    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="assets/lib/onoffcanvas/onoffcanvas.css">
    
    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="assets/lib/animate.css/animate.css">


        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/prism/0.0.1/prism.min.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!--For Development Only. Not required -->
    <script>
        less = {
            env: "development",
            relativeUrls: false,
            rootpath: "/assets/"
        };
    </script>
    <link rel="stylesheet" href="assets/css/style-switcher.css">
    <link rel="stylesheet/less" type="text/css" href="assets/less/theme.less">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>


        <meta name="viewport" content="initial-scale=1.0, user-scalable=no">

       

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<meta name="viewport" content="initial-scale=1.0, user-scalable=no">


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

        <body class="  menu-affix">
            <div class="bg-dark dk" id="wrap">
                <div id="top">
                    <!-- .navbar -->
                    <nav class="navbar navbar-inverse navbar-fixed-top">
                        <div class="container-fluid">
                    
                    
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <header class="navbar-header">
                    
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a href="index.html" class="navbar-brand"><img src="assets/img/admin.jpg" width="47px" alt=""></a>
                    
                            </header>
   
                    
                            <div class="collapse navbar-collapse navbar-ex1-collapse">
                    
                                <!-- .nav -->
                                <ul class="nav navbar-nav">
                                    <li><a href="../../index.html" target="_blank">Abrir WebSite</a></li>
                                    
                                </ul>
                                <!-- /.nav -->
                            </div>
                        </div>
                        <!-- /.container-fluid -->
                    </nav>
                    <!-- /.navbar -->
                        <header class="head">
                                
                                <!-- /.search-bar -->
                            <div class="main-bar">
                                <h3>
              <i class="fa fa-building"></i>&nbsp;
            Panel de Administración.
          </h3>
                            </div>
                        

						<!-- /HEADER -->
                		<%@include file="includes/top2.jsp" %>
                        
                        <!-- INCLUDE USER AP -->
                        <%@include file="includes/userap.jsp" %>

                        <!--  INCLUDE MENU -->
                        <%@include file="includes/menu.jsp" %>

                    
<!-- CONTENIDO DEL SITIO -->


<div id="content">
	<div class="outer" >
	    <div class="inner bg-light lter">
			<!-- 1 -->
			<div id="content">
				<div class="outer" >
			    	<div class="inner bg-light lter">
						<div class="col-lg-12">
			            	<h4 style="text-align:center;">Añade una nueva Destinación</h4>
			            	
			    		</div>
					</div>
				<!-- /.inner -->				
				</div>
				<br> 
			<!-- /.outer -->

            <script async defer
                    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&libraries=places&callback=initMap">
            </script>


 <!-- ssssssssssssssssssssssssssssssssssssssssssssssssssssssssss -->
        <table style="margin: 0 auto;">
        
        <tr>

        <td>
<div id="floating-panel">

<br><br>
<form action="../../Mapdesti" method="Post">
<table>
<tr>
<td><br><br></td>
<td>
                   <label for="text1" class="control-label col-lg-6">Ciudad</label>
                    </td>
					<td>
			
            <input id="address" type="textbox" placeholder="Buscar una ciudad" class="form-control" onchange="initMap()" required>
              <small><i>Seleccione y pulse Enter.</i></small>

                    <input type="hidden" id="hiddenLat" name="lat"/>
                    <input type="hidden" id="hiddenLon" name="lon"/>
                    <input type="hidden" id="hiddenNom" name="ciudad"/>
                    
                    <!--
                    </td><td>
                     <input id="submit2" type="submit" value="Seleccionar"/> 
                    </td>
                    -->
                    
                    </td>
</tr>

<tr hidden >
<td><br><br><br></td>
	<td>           
		<label for="text1" class="control-label col-lg-6">Altitud</label>
		</td><td>
		<input type="text" id="textalti" name="alti" placeholder="Altitud" class="form-control">
	</td>
</tr>
<tr hidden >
<td><br><br><br></td>
	<td>           
		<label for="text1" class="control-label col-lg-6">Longitud</label>
		</td><td>
		<input type="text" id="textlongo" name="longi" placeholder="Longitud" class="form-control">
	</td>
</tr>


<tr>
<td><br><br><br></td>
<td>       
           <label for="text1" class="control-label col-lg-6">Playa?</label>
           </td><td>
		               <input type="checkbox" name="playasi" value="true" > Si <small><i>- (No marcar si no hay)</i></small>
</td>
</tr>
           
<tr>
<td><br><br><br></td>
<td>           
           <label for="text1" class="control-label col-lg-6">Web</label>
           </td><td>
           <input type="text" id="text1" name="web" placeholder="Página Web" class="form-control" required>
          
</td>
</tr>

<tr hidden >
<td><br><br><br></td>
	<td>           
		<label for="1" class="control-label col-lg-6">placeid</label>
		</td><td>
		<input type="text" id="placeid" name="placeid" placeholder="placeid" class="form-control">
	</td>
</tr>

<tr>
<td><br><br><br></td>
<td>           
           <label for="text1" class="control-label col-lg-6">Imagen</label>
           </td><td>
           <input type="file" name="RutaImagen1" class="form-control"/>

           
          
</td>
</tr>






<tr>
<td><br><br></td>
<td><br><br></td>
<td>      
<br><br>     
           <input class="btn btn-success btn-lg" id="submit2" type="submit" value="Añadir Destinación"/>
</td>
</tr>

           </table>
            
            </form>
        </div>
        
        </td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>

        <div style="height: 400px; width:500px; border: 2px darkcyan solid; margin: 0 auto;" id="map"></div>

        </td>
        </tr>
        
        </table>
        
        <br><br><br>



			</div>
		</div>
	</div>
	<br><br><br>        
        
        
       
            
</div>







            
<!-- CONTENIDO DEL SITIO //-->

			       <!-- INCLUDE BOT -->     
				<%@include file="includes/bot.jsp" %>
