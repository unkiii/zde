package model;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import tablas.Mapsdestina;
import utils.HibernateUtils;

public class MapaDAO {

	Mapsdestina md = new Mapsdestina();

	private Session session = null;
	private Transaction tx = null;

	public MapaDAO() {
	}

	// ABRIR session con Hibernate
	public void obrir() {
		session = HibernateUtils.getSessionFactory().openSession();
		tx = session.beginTransaction();
	}

	// CREAR Mapa
	public void createMapa(Mapsdestina p) {
		obrir();
		session.save(p);
		tx.commit();
		session.close();
	}

	// CONSULTAR Mapa 'TOTS'
	@SuppressWarnings("unchecked")
	public List<Mapsdestina> obtenListaContactos() throws HibernateException {
		List<Mapsdestina> listaContactos = null;

		try {
			obrir();
			listaContactos = session.createQuery("from Mapsdestina").list();
			tx.commit();
			session.close();
		} catch (Exception e) {
			System.out.println("Error al ObtenListaContactos()  de DestinacionDAO." + "Missatge: " + e);
		}

		return listaContactos;
	}

	// CONSULTAR 1 MapaA
	public Mapsdestina obtenContacto(int dni) throws HibernateException {
		Mapsdestina contacto = null;

		try {
			obrir();
			contacto = (Mapsdestina) session.get(Mapsdestina.class, dni);
			tx.commit();
			session.close();
		} catch (Exception e) {
			System.out.println("Error al obtenContacto de DestinacionDAO." + "Missatge: " + e);
		}
		return contacto;
	}

	// MODIFICAR MapaA
	public void actualizaMapa(Mapsdestina contacto) throws HibernateException {
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
	public void eliminaMapaPorID(Mapsdestina id) throws HibernateException {
		try {
			obrir();
			session.delete(id);
			tx.commit();
			session.close();
		} catch (HibernateException he) {
			// manejaExcepcion(he);
			throw he;
		}
	}

	// BUSCAR UNA MapaA PER NIF I ELIMINAR-LA
	public void eliminarMapa(String id) throws HibernateException {
		try {
			session.delete(id);
			tx.commit();
			session.close();
		} catch (HibernateException he) {
			// manejaExcepcion(he);
			throw he;
		}
	}

	// CONSULTAR obtenirCoords 'TOTS'
	@SuppressWarnings("unchecked")
	public List<Mapsdestina> obtenirCoords() throws HibernateException {
		List<Mapsdestina> listaContactos = null;

		try {
			obrir();
			listaContactos = session.createQuery("from Mapsdestina").list();
			tx.commit();
			session.close();
		} catch (Exception e) {
			System.out.println("Error al obtenirCoords()  de MapaDAO." + "Missatge: " + e);
		}

		return listaContactos;
	}

	@SuppressWarnings("unchecked")
	public List<Mapsdestina> obtenirCoordsDesti(int num) throws HibernateException {
		List<Mapsdestina> listaContactos = null;

		try {
			obrir();
			listaContactos = session.createQuery("from Mapsdestina where id like " + num).list();
			tx.commit();
			session.close();
		} catch (Exception e) {
			System.out.println("Error al obtenirCoords()  de MapaDAO." + "Missatge: " + e);
		}

		return listaContactos;
	}

}
