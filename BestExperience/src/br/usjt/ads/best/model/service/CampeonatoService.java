package br.usjt.ads.best.model.service;

import java.io.IOException;

import br.usjt.ads.best.model.dao.CampeonatoDAO;
import br.usjt.ads.best.model.entity.Campeonato;

	public class CampeonatoService {
		private CampeonatoDAO dao;
	
	public CampeonatoService() {
		dao = new CampeonatoDAO();
	}
	
	public int inserirCampeonato(Campeonato campeonato) throws IOException {
		return dao.inserirCampeonato(campeonato);
	}
	
	public Campeonato buscarUsuario(Campeonato campeonato) throws IOException {
		return dao.buscarUsuario(campeonato);
	}
	
	public void excluirCampeonato(Campeonato campeonato) {
		dao.excluirCampeonato(campeonato);
	}
	
	public void atualizarCampeonato(Campeonato campeonato) {
		dao.atualizarCampeonato(campeonato);
	}
}
