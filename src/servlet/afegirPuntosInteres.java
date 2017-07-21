package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.puntosInteresDAO;
import tablas.Puntosinteres;

/**
 * Servlet implementation class afegirTutors
 */
@WebServlet("/afegirPuntosInteres")
public class afegirPuntosInteres extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1861951334947961197L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public afegirPuntosInteres() {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		puntosInteresDAO pdao = new puntosInteresDAO();
		Puntosinteres p = new Puntosinteres();

		p.setId(0);
		p.setIddestinacion((Integer.parseInt(request.getParameter("destinacion"))));
		p.setNombre((String) request.getParameter("nom"));
		p.setDescripcion((String) request.getParameter("descripcio"));

		p.setTipo((String) request.getParameter("tipo"));
		p.setActividades((String) request.getParameter("acti"));

		pdao.createPuntosinteres(p);

		response.sendRedirect("/zdestinacions/admin/public/puntoInteresGestion.jsp");
	}

}
