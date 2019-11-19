package br.com.hullisistemas.rest;


import java.util.List;

import javax.annotation.PostConstruct;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import br.com.hullisistemas.dao.PessoaDao;
import br.com.hullisistemas.entidades.Pessoa;

@Path("/pessoa")
public class PessoaService {

	private static final String CHARSET_UTF8 = ";charset=utf-8";
	
	private PessoaDao pessoaDao;
	
	@PostConstruct
	private void init() {
		pessoaDao = new PessoaDao();
	}
	
	@GET
    @Path("/list")
    @Produces(MediaType.APPLICATION_JSON + CHARSET_UTF8)
    public List<Pessoa> listarNotas() {
        List<Pessoa> lista = null;
        try {
            lista = pessoaDao.listarPessoa();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
}
