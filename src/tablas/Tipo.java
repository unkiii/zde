package tablas;
// Generated 14-jul-2017 10:03:07 by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Tipo generated by hbm2java
 */
@Entity
@Table(name = "Tipo")
public class Tipo implements java.io.Serializable {

	@Id
	@Column(name = "tipo")
	private String tipo;

	public Tipo() {
	}

	public Tipo(String tipo) {
		this.tipo = tipo;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

}