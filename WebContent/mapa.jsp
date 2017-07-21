
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@include file="include/top.jsp" %>


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

<%
            llista = mDAO.obtenirCoords();
            
            for(Mapsdestina per:llista){
                System.out.println( "-Nom: " + per.getNombre() + " -Altitud: " + per.getAltitud() + " -Longitud: " + per.getLng());

            }
        %>

        <div style="height: 600px; width:900px; border: 2px darkcyan solid; margin: 0 auto;" id="map"></div>
        <br><br>
        <script>
            function myMap() {
                var opcions = {
                    center: new google.maps.LatLng(47.070714, 15.439503999999943),
                    zoom: 4,
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
                            infowindow.setContent(locations[j][0] + '<br><a href="destination.jsp"><h3>+info</h3></a>');
                            infowindow.open(map, marker);
                        }
                    })(marker,j));
                }
                
            }            

        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&callback=myMap"></script>
       
       
       
       
            
</div>
</div>
</div>
</div>
		  	    		
		  	    		
		  	    		
		
<%@include file="include/bot.jsp" %>