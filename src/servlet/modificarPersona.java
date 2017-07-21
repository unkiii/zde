package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PersonDAO;
import tablas.Person;


/**
 * Servlet implementation class afegirTutors
 */
@WebServlet("/modificarPersona")
public class modificarPersona extends HttpServlet {
       
    /**
	 * 
	 */
	private static final long serialVersionUID = 1861951334947961197L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public modificarPersona() {
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PersonDAO pdao = new PersonDAO();
		Person p = new Person();
		
		
		System.out.println("HELLOOOO modificar");

		String NIF=(String)request.getParameter("mnif");
		String nom=(String)request.getParameter("mnom");
		String direccio=(String)request.getParameter("mdireccio");
		String edat=(String)request.getParameter("medat");

		p.setId(NIF);
		p.setName(nom);
		p.setAddress(direccio);
		p.setAge(edat);
		pdao.actualizaPersona(p);
		
		response.sendRedirect("/ProjecteHibernateWeb/index.jsp");
	}

}
