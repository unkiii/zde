package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DestinacionDAO;
import tablas.Destinaciones;

/**
 * Servlet implementation class afegirTutors
 */
@WebServlet("/afegirDestinaciones")
public class afegirDestinaciones extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1861951334947961197L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public afegirDestinaciones() {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DestinacionDAO pdao = new DestinacionDAO();
		Destinaciones p = new Destinaciones();

		System.out.println("HELLOOOO");
		System.out.println((String) request.getParameter("ciudad"));

		p.setId(0);
		p.setCiudad((String) request.getParameter("ciudad"));
		p.setCp((String) request.getParameter("codipostal"));
		if (request.getParameter("playasi") != null) {
			p.setPlaya("Si");
		} else {
			p.setPlaya("No");
		}
		p.setWeb((String) request.getParameter("web"));
		p.setItinerario((String) request.getParameter("localizacion"));
		p.setCapital((String) request.getParameter("capital"));
		p.setPais((String) request.getParameter("pais"));
		p.setContinente((String) request.getParameter("continente"));

		pdao.createDestinaciones(p);

		response.sendRedirect("/zdestinacions/admin/public/destinacionesGestion.jsp");
	}

}
