
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@include file="include/top.jsp" %>

		<!----start-images-slider---->
		<div class="images-slider">
			<!-- start slider -->
		    <div id="fwslider">
		        <div class="slider_container">
		            <div class="slide"> 
		                <!-- Slide image -->
		                    <img src="images/slider-bg.jpg" alt=""/>
		                <!-- /Slide image -->
		                <!-- Texts container -->
		                <div class="slide_content">
		                    <div class="slide_content_wrap">
		                        <!-- Text title -->
		                        <h4 class="title">VIAJAR ES VIVIR</h4>
		                        


		                        <!-- /Text title -->
		                        <!-- Text description -->
		                        <p class="description">No necesitas magia para desaparecer. Todo lo que necesitas es un destino.</p>
		                        <!-- /Text description -->
		                        <div class="slide-btns description">
		                        	<ul>
		                        		<li><a class="mapbtn" href="mapa.jsp">Mostrar Mapa </a></li>
		                        		<li><a class="minfo" href="#">Mas Información </a></li>
		                        		<div class="clear"> </div>
		                        	</ul>
		                        </div>
		                    </div>
		                </div>
		                 <!-- /Texts container -->
		            </div>
		            
		            
		            <!--/slide -->
		        </div>
		        
		    </div>
		    <!--/slider -->
		</div>
	
		<!----start-offers---->
		<div class="offers">
			<div class="offers-head">
				<h3>LO MEJOR</h3>
				<p>Los lugares mas visitados este año por nuestros clientes.</p>
			</div>
			<!-- start content_slider -->
			<!-- FlexSlider -->
			 <!-- jQuery -->
			  <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
			  <!-- FlexSlider -->
			  <script defer src="js/jquery.flexslider.js"></script>
			  <script type="text/javascript">
			    $(function(){
			      SyntaxHighlighter.all();
			    });
			    $(window).load(function(){
			      $('.flexslider').flexslider({
			        animation: "slide",
			        animationLoop: true,
			        itemWidth:250,
			        itemMargin: 5,
			        start: function(slider){
			          $('body').removeClass('loading');
			        }
			      });
			    });
			  </script>
			<!-- Place somewhere in the <body> of your page -->
				 <section class="slider">
		        <div class="flexslider carousel">
		          <ul class="slides">
		          

		          
		          <%
                    try {
                        d = ddao.obtenListaContactos();
                   	} catch (Exception e) {
                        e.printStackTrace();
                    }
                    for(Mapsdestina per:d){
                %>
                <li onclick="location.href='#';">
		  	    	    <img src="<%=per.getImagen()%>" width="200px" height="150px"/>
		  	    	    <!----place-caption-info---->
		  	    	    
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head" >
		  	    	    	 	<div class="caption-info-head-left">
                					<h4><a><%=per.getNombre()%></a></h4>
                					<h6><a href="<%=per.getWeb()%>" target="_blank"><%=per.getWeb()%></a></h6>
			  	    	    	 	<!-- <span>id: <%=per.getId()%></span> -->
								</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>

		  	    	     <!----//place-caption-info---->
		  	    		</li>
                 <% } %>   
		          
	
		  	    		
		  	    		
		  	    		
		  	    		
		          </ul>
		        </div>
		      </section>
              <!-- //End content_slider -->
		</div>
		<!----//End-offers---->

<%@include file="include/bot.jsp" %>