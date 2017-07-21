package tablas;
// Generated 14-jul-2017 10:03:07 by Hibernate Tools 4.3.5.Final

import java.util.Date;

/**
 * AdminId generated by hbm2java
 */
public class AdminId implements java.io.Serializable {

	private Integer id;
	private String nif;
	private Date ultimaconex;

	public AdminId() {
	}

	public AdminId(Integer id, String nif, Date ultimaconex) {
		this.id = id;
		this.nif = nif;
		this.ultimaconex = ultimaconex;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNif() {
		return this.nif;
	}

	public void setNif(String nif) {
		this.nif = nif;
	}

	public Date getUltimaconex() {
		return this.ultimaconex;
	}

	public void setUltimaconex(Date ultimaconex) {
		this.ultimaconex = ultimaconex;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AdminId))
			return false;
		AdminId castOther = (AdminId) other;

		return ((this.getId() == castOther.getId())
				|| (this.getId() != null && castOther.getId() != null && this.getId().equals(castOther.getId())))
				&& ((this.getNif() == castOther.getNif()) || (this.getNif() != null && castOther.getNif() != null
						&& this.getNif().equals(castOther.getNif())))
				&& ((this.getUltimaconex() == castOther.getUltimaconex())
						|| (this.getUltimaconex() != null && castOther.getUltimaconex() != null
								&& this.getUltimaconex().equals(castOther.getUltimaconex())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		result = 37 * result + (getNif() == null ? 0 : this.getNif().hashCode());
		result = 37 * result + (getUltimaconex() == null ? 0 : this.getUltimaconex().hashCode());
		return result;
	}

}