<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.MapaDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tablas.Mapsdestina"%>
<%int numid = 0;%>
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
			            	<h4 style="text-align:center;">Mapa Puntos de Interés</h4>
			            	
			    		</div>
					</div>
				<!-- /.inner -->				
				</div>
				<br> 
			<!-- /.outer -->

          <form name="vinform" action=""> 
					         <select name="customers" onchange="sendInfo()">
					            <option hidden></option>
					            
					            
					            <% 
					            llista = mDAO.obtenListaContactos();
					            for (Mapsdestina desti : llista) { %>
					            	<option  value="<%= desti.getId() %>"><%= desti.getNombre()%></option>
					            <% } %>
					        </select>

				</form>
			<br>
			<span id="resultattxt"></span>
			<script>
				var request;
				function sendInfo() {
					var v=document.vinform.customers.value;
					var url="mapPuntInteres2.jsp?val="+v;
			
					if(window.XMLHttpRequest){
						request=new XMLHttpRequest();
					}
					else if(window.ActiveXObject){
						request=new ActiveXObject("Microsoft.XMLHTTP");
					}
			
					try {
						request.onreadystatechange=getInfo;
						request.open("GET",url,true);
						request.send();
					}
					catch(e) {
						alert("Unable to connect to server");
					}
				}
			
				function getInfo(){
					if(request.readyState==4){
						var val=request.responseText;
						document.getElementById('resultattxt').innerHTML=val;
				}
			}
			
			</script>
			

                
                   <p/>  
                    
                <!-- /. ROW  -->
                  <hr />
                 <!-- /. ROW  -->  
             
                </div>
                 <!-- /. PAGE INNER  -->

                </div>




        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrie5aQzwLxGgd8eLfnvasu3qLvTmBJcM&callback=myMap"></script>
       
       
       
       
            
</div>
</div>
</div>
</div>
 
<!-- CONTENIDO DEL SITIO //-->

			       <!-- INCLUDE BOT -->     
				<%@include file="includes/bot.jsp" %>
