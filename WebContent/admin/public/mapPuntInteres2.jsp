<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.MapaDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tablas.Mapsdestina"%>

<% 
	MapaDAO mDAO=new MapaDAO();
	List<Mapsdestina> llista = null;
%>
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

       

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<meta name="viewport" content="initial-scale=1.0, user-scalable=no">

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&callback=myMap"></script>
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


          

			<%
			int n= Integer.parseInt(request.getParameter("val"));
            llista = mDAO.obtenirCoordsDesti(n);
            double aalt = 0.0;
            double llng = 0.0;
            String nomCiudad = "";
            
            for(Mapsdestina per:llista){
                System.out.println( "-Nom: " + per.getNombre() + " -Altitud: " + per.getAltitud() + " -Longitud: " + per.getLng());
            nomCiudad = per.getNombre();
			aalt = per.getAltitud();
			llng = per.getLng();
            }
            
          System.out.println("qqqqqqq -Nombre: " + nomCiudad + " -Alt: " + aalt + " -Lng: " + llng);  
        %>

        <div style="height: 600px; width:900px; border: 2px darkcyan solid; margin: 0 auto;" id="map"></div>
        <br><br>
        
        <script>
            function myMap() {     
				 var opcions = {
                    center: new google.maps.LatLng(<%=aalt%>, <%=llng%>),
                    zoom: 7,
                };
                
                    var map = new google.maps.Map(document.getElementById('map'), opcions);
                   
                    var locations = [
                        <% for(Mapsdestina per:llista){ %>
                            ['<%=per.getNombre()%>','<%=per.getAltitud()%>','<%=per.getLng()%>'],
                        <%
                          
                        }%>
                    ];

                    
                    var infowindow = new google.maps.InfoWindow();
                    var marker, j;
                    for(j=0; j<locations.length; j++){
                        marker = new google.maps.Marker({
                            position: new google.maps.LatLng(locations[j][1], locations[j][2]),
                            map: map
                        });
                        
                        google.maps.event.addListener(marker, 'click', (function(marker,j){
                            return function(){
                                infowindow.setContent('<IMG BORDER="0" ALIGN="Left" SRC="/images/mundo.jpg" height="40px">'+locations[j][0]);
                                infowindow.open(map, marker);
                            }
                        })(marker,j));
                    }
                    
                }             

        </script>

        
  
</body>