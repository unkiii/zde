package model;

public class Usuari {

	private int idUsuari;
	private String NIF;
	private String passwd;
	private String nom;
	private int permis;

	public Usuari() {
	}

	public Usuari(int idUsuari, String nIF, String passwd, String nom, int permis) {
		super();
		this.idUsuari = idUsuari;
		NIF = nIF;
		this.passwd = passwd;
		this.nom = nom;
		this.permis = permis;
	}

	public int getPermis() {
		return permis;
	}

	public void setPermis(int permis) {
		this.permis = permis;
	}

	public int getIdUsuari() {
		return idUsuari;
	}

	public void setIdUsuari(int idUsuari) {
		this.idUsuari = idUsuari;
	}

	public String getNIF() {
		return NIF;
	}

	public void setNIF(String nIF) {
		NIF = nIF;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

}