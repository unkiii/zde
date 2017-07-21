<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

						<!-- INCLUDE TOP -->
						<%@include file="includes/top.jsp" %>

						
						
						<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBftoldLgmotdeQkFxoCgSHOQrh7tczcOA&libraries=places&callback=initAutocomplete"
         async defer></script>
						
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

 
                
               title
                
    
                 
</div>
</div>
	<table border="0" style="margin: 0 auto;">
		<tr height="100px">
			<td width="100px">
				<span></span>
			</td>
			<td width="100px">
				<span></span>
			</td>
			<td width="100px">
				<span></span>
			</td>
		</tr>
		
		<tr height="90%">
			<td>
				<span></span>
			</td>
			<td  width="85%">
				<span>
				<!-- contingut -->
				
		
		
		
		
		<input id="searchTextField" type="text" size="50">
		
		<script type="text/javascript">
		function initialize() {

var input = document.getElementById('searchTextField');
var autocomplete = new google.maps.places.Autocomplete(input);
}

google.maps.event.addDomListener(window, 'load', initialize);
		
				
</script>	
					
				
				
				
				<!-- /contingut -->
				</span>
			</td>
			<td>
				<span></span>
			</td>
		</tr>
		
		<tr height="100px">
			<td>
				<span></span>
			</td>
			<td>
				<span></span>
			</td>
			<td>
				<span></span>
			</td>
		</tr>
	</table>
                 	
                 	
                 	
                 	
                 	
                 	
                 	
                 	
                 	
</div>
<!-- CONTENIDO DEL SITIO //-->

			       <!-- INCLUDE BOT -->     
				<%@include file="includes/bot.jsp" %>
