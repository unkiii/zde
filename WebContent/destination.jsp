
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@include file="include/top.jsp" %>

		
	
		<!----start-offers---->
		

<table style="text-align: center; margin: 0 auto;" width="100%" class="table">
	         <thead>
	         <tr width="100%" bgcolor="silver">  
			
                    	<th>Imagen</th>
                    	<th>Lugar</th>
                    	<th>Playa</th>
						<th>Web</th>
						<th>Cómo llegar?</th>
                    	</tr>
                    	</thead>
                    	<tbody>
                    	<tr><td><br></td></tr>
		          <%
		          
                    try {
                        d = ddao.obtenListaContactos();
                   	} catch (Exception e) {
                        e.printStackTrace();
                    }
                    for(Mapsdestina per:d){ %>
                    	
                    	<tr>
					<td> 
					
	 	    	    	<img src="<%=per.getImagen()%>" width="400px" height="300px"/>
	 	    	    </td>

	 	    	    <td> 
		            	<%=per.getNombre()%>	    	    
					</td>
					
					<td>
						<%=per.getPlaya()%>
					</td>

					<td> 
						<a href="<%=per.getWeb()%>" target="_blank"><%=per.getWeb()%></a>
					</td>
					
					<td> 
						<a href="comollegar.jsp">Ruta</a>
					</td>

                 	</tr>
<tr><td><br><br></td></tr>
                 <%}%>   
                 </tbody>
		          
</table>
		  	    		
		          </ul>
		        </div>
		      </section>
              <!-- //End content_slider -->
		</div>
		<!----//End-offers---->

<%@include file="include/bot.jsp" %>