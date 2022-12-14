package com.cibertec.entidad;
import java.io.Serializable;


public class DocenteBean implements Serializable{
	private int codigo;
	private String nombres;
	private String paterno;
	private String materno;
	private String sexo;
	private Integer hijos;
	private Double sueldo;
	private String direccion;
	private int codigoDistrito;
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	
	public String getPaterno() {
		return paterno;
	}
	public void setPaterno(String paterno) {
		this.paterno = paterno;
	}
	public String getMaterno() {
		return materno;
	}
	public void setMaterno(String materno) {
		this.materno = materno;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	public Double getSueldo() {
		return sueldo;
	}
	public void setSueldo(Double sueldo) {
		this.sueldo = sueldo;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public int getCodigoDistrito() {
		return codigoDistrito;
	}
	public void setCodigoDistrito(int codigoDistrito) {
		this.codigoDistrito = codigoDistrito;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public Integer getHijos() {
		return hijos;
	}
	public void setHijos(Integer hijos) {
		this.hijos = hijos;
	}

	
	
}

