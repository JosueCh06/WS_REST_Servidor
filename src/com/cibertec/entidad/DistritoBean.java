package com.cibertec.entidad;
import java.io.Serializable;
public class DistritoBean implements Serializable{
	private int codDistrito;
	private String descripcion;
	
	public int getCodDistrito() {
		return codDistrito;
	}
	public void setCodDistrito(int codDistrito) {
		this.codDistrito = codDistrito;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	

	
}

