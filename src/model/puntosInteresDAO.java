package model;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import tablas.Puntosinteres;
import utils.HibernateUtils;

public class puntosInteresDAO {

	private Session session = null;
	private Transaction tx = null;

	public puntosInteresDAO() {
	}

	// ABRIR session con Hibernate
	public void obrir() {
		session = HibernateUtils.getSessionFactory().openSession();
		tx = session.beginTransaction();
	}

	// CERRAR session con Hibernate
	public void tancar() {
		tx.commit();
		session.close();
	}

	public void tancar2() {
		session.close();
	}

	// CREAR PuntosinteresA
	public void createPuntosinteres(Puntosinteres p) {
		obrir();
		session.save(p);
		tancar();
	}

	// CONSULTAR PuntosinteresES 'TOTES'
	@SuppressWarnings("unchecked")
	public List<Puntosinteres> obtenListaContactos() throws HibernateException {
		List<Puntosinteres> listaContactos = null;

		try {
			obrir();
			listaContactos = session.createQuery("from Puntosinteres").list();
		} finally {
			tancar();
		}

		return listaContactos;
	}

	// CONSULTAR 1 PuntosinteresA
	public Puntosinteres obtenContacto(int dni) throws HibernateException {
		Puntosinteres contacto = null;

		try {
			obrir();
			contacto = (Puntosinteres) session.get(Puntosinteres.class, dni);
		} finally {
			tancar();
		}
		return contacto;
	}

	// MODIFICAR PuntosinteresA
	public void actualizaPuntosinteres(Puntosinteres contacto) throws HibernateException {
		try {
			obrir();
			session.update(contacto);
			tx.commit();
		} catch (HibernateException he) {
			// manejaExcepcion(he);
			throw he;
		} finally {
			tancar2();
		}
	}

	// ELIMINAR CONTACTE PER NIF
	public void eliminaContacto(Puntosinteres contacto) throws HibernateException {
		try {
			obrir();
			session.delete(contacto);
			tx.commit();
		} catch (HibernateException he) {
			// manejaExcepcion(he);
			throw he;
		} finally {
			tancar2();
		}
	}

	// BUSCAR UNA PuntosinteresA PER NIF I ELIMINAR-LA
	public void eliminarlaPuntosinteres(String dni) throws HibernateException {
		try {
			session.delete(dni);
			tx.commit();
		} catch (HibernateException he) {
			// manejaExcepcion(he);
			throw he;
		} finally {
			tancar2();
		}
	}

}
