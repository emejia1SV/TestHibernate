package de.laliluna.examples;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="AGR_AGREGADORES", uniqueConstraints={@UniqueConstraint(columnNames={"ID"})})
public class Agregadores {

	@Id
	@Column(name="ID")
	private int id;
	
	@Column(name="ESTADO" , nullable=false)
	private int estado;
	
	@Column(name="NOMBRE_AGREGADOR", nullable=false)
	private String nombre_agregador;
	
	@Column(name="ID_PAIS", nullable=false)
	private int idPais;

	public Agregadores() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}

	public String getNombre_agregador() {
		return nombre_agregador;
	}

	public void setNombre_agregador(String nombre_agregador) {
		this.nombre_agregador = nombre_agregador;
	}

	public int getIdPais() {
		return idPais;
	}

	public void setIdPais(int idPais) {
		this.idPais = idPais;
	}

	@Override
	public String toString() {
		return "Agregadores [id=" + id + ", nombre_agregador="
				+ nombre_agregador + "]";
	}

}
