package model;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import tablas.Destinaciones;
import utils.HibernateUtils;

public class DestinacionDAO {

	private Session session = null;
	private Transaction tx = null;

	public DestinacionDAO() {
	}

	// ABRIR session con Hibernate
	public void obrir() {
		session = HibernateUtils.getSessionFactory().openSession();
		tx = session.beginTransaction();
	}

	// CREAR DestinacionesA
	public void createDestinaciones(Destinaciones p) {
		obrir();
		session.save(p);
		tx.commit();
		session.close();
	}

	// CONSULTAR DestinacionesES 'TOTES'
	@SuppressWarnings("unchecked")
	public List<Destinaciones> obtenListaContactos() throws HibernateException {
		List<Destinaciones> listaContactos = null;

		try {
			obrir();
			listaContactos = session.createQuery("from Destinaciones").list();
			tx.commit();
			session.close();
		} catch (Exception e) {
			System.out.println("Error al ObtenListaContactos()  de DestinacionDAO." + "Missatge: " + e);
		}

		return listaContactos;
	}

	// CONSULTAR 1 DestinacionesA
	public Destinaciones obtenContacto(int dni) throws HibernateException {
		Destinaciones contacto = null;

		try {
			obrir();
			contacto = (Destinaciones) session.get(Destinaciones.class, dni);
			tx.commit();
			session.close();
		} catch (Exception e) {
			System.out.println("Error al obtenContacto de DestinacionDAO." + "Missatge: " + e);
		}
		return contacto;
	}

	// MODIFICAR DestinacionesA
	public void actualizaDestinaciones(Destinaciones contacto) throws HibernateException {
		try {
			obrir();
			session.update(contacto);
			tx.commit();
			session.close();
		} catch (HibernateException he) {
			// manejaExcepcion(he);
			throw he;
		}
	}

	// ELIMINAR CONTACTE PER NIF
	public void eliminaContacto(Destinaciones contacto) throws HibernateException {
		try {
			obrir();
			session.delete(contacto);
			tx.commit();
			session.close();
		} catch (HibernateException he) {
			// manejaExcepcion(he);
			throw he;
		}
	}

	// BUSCAR UNA DestinacionesA PER NIF I ELIMINAR-LA
	public void eliminarlaDestinaciones(String dni) throws HibernateException {
		try {
			session.delete(dni);
			tx.commit();
			session.close();
		} catch (HibernateException he) {
			// manejaExcepcion(he);
			throw he;
		}
	}

}
