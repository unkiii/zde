<%@page import="model.MapaDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tablas.Mapsdestina"%>

<% 
	MapaDAO mDAO=new MapaDAO();
	List<Mapsdestina> llista = null;
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar marques</title>
        <style>
            #map {
                height: 63%;
                width:63%;
                border: 2px darkcyan solid;
                margin: 0 auto;
            }
            /* Optional: Makes the sample page fill the window. */
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }
            #floating-panel {
                margin: 0 auto;
                z-index: 5;
                background-color: #fff;
                padding: 5px;
                border: 1px solid #999;
                text-align: center;
                font-family: 'Roboto','sans-serif';
                line-height: 30px;
                padding-left: 10px;
            }
        </style>
    </head>
    <body>
        <%
            llista = mDAO.obtenirCoords();
            
            for(Mapsdestina per:llista){
                System.out.println( "-Nom: " + per.getNombre() + " -Altitud: " + per.getAltitud() + " -Longitud: " + per.getLng());

            }
        %>
        <div id="floating-panel">
            <h2>Mapa</h2>           
        </div>
        <div id="map"></div>
        <script>
            function myMap() {
                var opcions = {
                    center: new google.maps.LatLng(41.7163888, 1.822081799999978),
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

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&callback=myMap"></script>
    </body>
</html>
