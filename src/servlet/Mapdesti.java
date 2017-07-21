package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MapaDAO;
import tablas.Mapsdestina;

/**
 *
 * @author unk
 */
@WebServlet(name = "Mapdesti", urlPatterns = { "/Mapdesti" })
public class Mapdesti extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on
	// the + sign on the left to edit the code.">

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// processRequest(request, response);
		int id = 0;
		String imagen = "";
		double lat = Double.parseDouble(request.getParameter("alti"));
		double lon = Double.parseDouble(request.getParameter("longi"));
		String nom = request.getParameter("ciudad");
		String web = request.getParameter("web");
		String playa = "";

		if (request.getParameter("playasi") == null) {
			playa = "No";
		} else {
			playa = "SI";
		}

		if (request.getParameter("RutaImagen1") == null || request.getParameter("RutaImagen1") == ""
				|| request.getParameter("RutaImagen1") == " ") {
			imagen = "Ninguna";
		} else {
			imagen = request.getParameter("RutaImagen1");
		}

		// GUARDAR IMAGEN EN DISCO PARA REUTILIZAR LUEGO EN LA VISUALIZACION

		// FIN GUARDAR IMAGEN

		System.out.println(id);
		System.out.println(lat);
		System.out.println(lon);
		System.out.println(nom);
		System.out.println(web);
		System.out.println(playa);
		System.out.println(imagen);

		Mapsdestina mapa = new Mapsdestina();
		mapa.setId(id);
		mapa.setAltitud(lat);
		mapa.setLng(lon);
		mapa.setNombre(nom);
		mapa.setWeb(web);
		mapa.setPlaya(playa);
		mapa.setImagen(imagen);

		MapaDAO mDAO = new MapaDAO();

		mDAO.createMapa(mapa);

		// response.sendRedirect("geocoder.html");
		response.sendRedirect("/zdestinacions/admin/public/destinacionesGestion.jsp");
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}