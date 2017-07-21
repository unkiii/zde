package model;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import tablas.Actividad;
import utils.HibernateUtils;

public class ActividadDAO {

	private Session session = null;
	private Transaction tx = null;

	public ActividadDAO() {
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

	// CONSULTAR Tipos 'TOTES'
	@SuppressWarnings("unchecked")
	public List<Actividad> obtenListaContactos() throws HibernateException {
		List<Actividad> listaContactos = null;

		try {
			obrir();
			listaContactos = session.createQuery("from Actividad").list();
		} finally {
			tancar();
		}

		return listaContactos;
	}

}
