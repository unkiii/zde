<%@page import="model.MapaDAO"%>
<%@page import="model.ActividadDAO"%>
<%@page import="tablas.Actividad"%>
<%@page import="tablas.Tipo"%>
<%@page import="model.TipoDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="tablas.Mapsdestina"%>
    <% 
	MapaDAO ddao=new MapaDAO();
	List<Mapsdestina> d = null;
%>



						<!-- INCLUDE TOP -->
						<%@include file="includes/top.jsp" %>
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
                            <h4 style="text-align:center;">Añade un nuevo Punto de Interés</h4>
                            </div>
                        </div>
                        <!-- /.inner -->
                    </div>
                    <!-- /.outer -->
                </div>
                <br>
                
                
                
                
                <form class="form-horizontal" action="../../afegirPuntosInteres" method="Post">
                
                <table style="margin: 0 auto;">
				<tr>
	                <td><br><br></td><td><br><br></td>
		                <td><label for="text1" class="control-label col-lg-6">ID Destinacion</label></td>
		                
		                
		                
		                
		         		<td> 
							<% 
								MapaDAO mdao=new MapaDAO();
								List<Mapsdestina> md = ddao.obtenListaContactos();
							%>
					         <select name="destinacion" id="destinacions" required>
					            <option hidden></option>
					            
					            <% for (Mapsdestina desti : md) { %>
					            	<option  value="<%= desti.getId() %>"><%= desti.getNombre()%></option>
					            <% } %>
					        </select>
		      

		               </td>
	                </tr>
	                <tr>
	                <td><br><br></td><td><br><br></td>
		                <td><label for="text1" class="control-label col-lg-6">Nombre</label></td>
		                <td><input type="text" id="text1" name="nom" placeholder="Nombre" class="form-control" required></td>
	                </tr>
	                <tr>
	                <td><br><br></td><td><br><br></td>
		                <td><label for="text1" class="control-label col-lg-6">Descripcion</label></td>
		                
		                <td>
		                	<textarea id="text1" placeholder="Descripcion" name="descripcio" class="form-control" style="margin: 0px -0.671875px 0px 0px; height: 87px; width: 313px;" required></textarea>
		                </td>
		                
		                
		                
		               
	                </tr>
	                <tr>
	                <td><br><br></td><td><br><br></td>
		                <td><label name="tipus" for="text1" class="control-label col-lg-6">Tipo</label></td>
		                
		                <td> 
							<% 
								TipoDAO tdao=new TipoDAO();
								List<Tipo> t = null;
								t = tdao.obtenListaContactos();
							%>
					         <select name="tipo" id="tipos" required>
					            <option hidden></option>
					            
					            <% for (Tipo tip : t) { %>
					            	<option><%=tip.getTipo()%></option>
					            <% } %>
					        </select>
		                
		                

		               </td>
	                </tr>
	                <tr>
	                <td><br><br></td><td><br><br></td>
		                <td><label name="activi" for="text1" class="control-label col-lg-6">Actividad</label></td>
		                 <td> 
							<% 
								ActividadDAO adao = new ActividadDAO();
								List<Actividad> ar = adao.obtenListaContactos();
							%>
					         <select name="acti" id="activ" required>
					            <option hidden></option>
					            
					            <% for (Actividad act : ar) { %>
					            	<option><%=act.getActividad()%></option>
					            <% } %>
					        </select>
		                
		                

		               </td>
	                </tr>
	               
		                <tr>
		                <td></td>
		                <td></td>
		                <td></td>
		                <td><br><br><br>
	             <input type="submit" value="Añadir" class="btn btn-success">
	             </td>
	             
	             </tr>
                </table>

 			<br>
 			<br>

    	 </form>
                 
                 
                 
            </div>
            </div>
            </div>
            
                      
                 
                
<!-- CONTENIDO DEL SITIO //-->

			       <!-- INCLUDE BOT -->     
				<%@include file="includes/bot.jsp" %>
