package com.cibertec.rest;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.cibertec.dao.DistritoDAOImpl;
import com.cibertec.dao.DocenteDAOImpl;
import com.cibertec.entidad.DocenteBean;

@Path("/docente")
public class DocenteRest {
	
	DistritoDAOImpl distritoDAO = new DistritoDAOImpl();
	DocenteDAOImpl docenteDAO = new DocenteDAOImpl();
	
	@GET
	@Path("/listarDistritos")
	@Produces({MediaType.APPLICATION_JSON})
	public Response listarDistritos(){
		return Response.ok(distritoDAO.listAllDistritos()).build();
	}
	
	@GET
	@Path("/listarDocente")
	@Produces({MediaType.APPLICATION_JSON})
	public Response listarDocentes(){
		return Response.ok(docenteDAO.listAllDocentes()).build();
	}
	
	@POST
	@Path("/registrarDocente")
	@Consumes({MediaType.APPLICATION_JSON})
	@Produces({MediaType.APPLICATION_JSON})
	public int registrarDocente(DocenteBean bean) {
		return docenteDAO.saveDocente(bean);
	}
	
	
}









