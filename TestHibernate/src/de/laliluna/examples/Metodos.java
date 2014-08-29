package de.laliluna.examples;


import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Metodos {

	@Id
	@Column(name = "ID", nullable = false)
	private int id;
	
	@Column(name = "NOMBRE", nullable = false)
	private String nombre;
	
	@ManyToOne
	@JoinColumn(name = "ID_SERVICIOS")
	private Servicios servicio;
	
	//private OperationInfo operacionSRV;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return "Metodos [id=" + id + ", nombre=" + nombre + "]";
	}

/*	public OperationInfo getOperacionSRV() {
		return operacionSRV;
	}

	public void setOperacionSRV(OperationInfo operacionSRV) {
		this.operacionSRV = operacionSRV;
	}*/
}
