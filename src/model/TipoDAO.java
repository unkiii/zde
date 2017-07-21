package model;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import tablas.Tipo;
import utils.HibernateUtils;

public class TipoDAO {

	private Session session = null;
	private Transaction tx = null;

	public TipoDAO() {
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
	public List<Tipo> obtenListaContactos() throws HibernateException {
		List<Tipo> listaContactos = null;

		try {
			obrir();
			listaContactos = session.createQuery("from Tipo").list();
		} finally {
			tancar();
		}

		return listaContactos;
	}

}
