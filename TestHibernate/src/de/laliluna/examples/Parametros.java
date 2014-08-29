package de.laliluna.examples;

import javax.persistence.Column;
import javax.persistence.Id;

public class Parametros {

	@Id
	@Column(name = "ID", nullable = false)
	private int id;
	
	@Column(name = "NOMBRE", nullable = false)
	private String nombre;
	
	@Column(name = "INSUMO", nullable = false)
	private String insumo;
	
	@Column(name = "COUMNA", nullable = false)
	private String columna;
	
	@Column(name = "TIPO", nullable = false)
	private String tipo;
	
	@Column(name = "NOMBRE", nullable = false)

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

	public String getInsumo() {
		return insumo;
	}

	public void setInsumo(String insumo) {
		this.insumo = insumo;
	}

	public String getColumna() {
		return columna;
	}

	public void setColumna(String columna) {
		this.columna = columna;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

}
