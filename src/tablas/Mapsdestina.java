package tablas;
// Generated 17-jul-2017 13:49:47 by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Mapsdestina generated by hbm2java
 */
@Entity
@Table(name = "Mapsdestina")
public class Mapsdestina implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6973725060254501992L;

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "altitud")
	private Double altitud;

	@Column(name = "lng")
	private Double lng;

	@Column(name = "nombre")
	private String nombre;

	@Column(name = "web")
	private String web;

	@Column(name = "playa")
	private String playa;

	@Column(name = "imagen")
	private String imagen;

	public Mapsdestina() {
	}

	public Mapsdestina(int id, Double altitud, Double lng, String nombre, String web, String playa, String imagen) {
		this.id = id;
		this.altitud = altitud;
		this.lng = lng;
		this.nombre = nombre;
		this.web = web;
		this.playa = playa;
		this.imagen = imagen;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getAltitud() {
		return this.altitud;
	}

	public void setAltitud(Double altitud) {
		this.altitud = altitud;
	}

	public Double getLng() {
		return this.lng;
	}

	public void setLng(Double lng) {
		this.lng = lng;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getWeb() {
		return this.web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public String getPlaya() {
		return this.playa;
	}

	public void setPlaya(String playa) {
		this.playa = playa;
	}

	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

}
