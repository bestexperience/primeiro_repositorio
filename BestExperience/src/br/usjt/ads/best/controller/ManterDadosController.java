package br.usjt.ads.best.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.usjt.ads.best.model.entity.Campeonato;
import br.usjt.ads.best.model.entity.Status;
import br.usjt.ads.best.model.entity.Time;
import br.usjt.ads.best.model.entity.Usuario;
import br.usjt.ads.best.model.service.CampeonatoService;
import br.usjt.ads.best.model.service.StatusService;
import br.usjt.ads.best.model.service.TimeService;
import br.usjt.ads.best.model.service.UsuarioService;

/**
 * Servlet implementation class ManterFilmesController
 */
@WebServlet("/manterdados.do")
public class ManterDadosController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String acao = request.getParameter("acao");
		RequestDispatcher dispatcher;
		UsuarioService UService = null;
		StatusService sService = null;
		TimeService tService = null;
		CampeonatoService cService = null;
		Usuario usuario = null;
		Time time = null;
		Campeonato campeonato = null;
		HttpSession session;
		
		/*Usuario*/
		String id = request.getParameter("id");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		
		/*Campeonato*/
		String nomeCampeonato = request.getParameter("nome_campeonato");
		/*Status - Pontos*/
		String idP1 = request.getParameter("pontos1");
		String idP2 = request.getParameter("pontos2");
		String idP3 = request.getParameter("pontos3");
		String idP4 = request.getParameter("pontos4");
		
		/*Times*/
		String times = request.getParameter("nomes_times");
		

		switch (acao) {
		case "logar":
			usuario = new Usuario();
			UService = new UsuarioService();
			usuario.setLogin(login);
			usuario.setSenha(senha);
			
			boolean validacao = false;
			validacao = UService.consultarLogin(usuario);
			
			if(validacao == true)
			{
				usuario = UService.buscarUsuarioId(usuario);
				session = request.getSession();
				session.setAttribute("usuario", usuario);
				
				dispatcher = request.getRequestDispatcher("usuario.jsp");
				dispatcher.forward(request, response);
				break;
			}
			else{
					dispatcher = request.getRequestDispatcher("login.jsp");
					dispatcher.forward(request, response);
					break;
				}

		case "cadastrar":
			usuario = new Usuario();
			UService = new UsuarioService();

			usuario.setLogin(login);
			usuario.setSenha(senha);
			usuario.setNome(nome);
			usuario.setEmail(email);
			
			int id1 = UService.inserirUsuario(usuario);
			
			usuario = new Usuario();
			UService = new UsuarioService();
			usuario.setLogin(login);
			usuario.setSenha(senha);
			boolean validacaoCadastro = UService.consultarLogin(usuario);
			
			if(validacaoCadastro == true)
			{
				usuario = UService.buscarUsuarioId(usuario);
				session = request.getSession();
				session.setAttribute("usuario", usuario);
				
				dispatcher = request.getRequestDispatcher("usuario.jsp");
				dispatcher.forward(request, response);
				break;
			}
			else if(validacaoCadastro == false){
					break;
			}
			
			dispatcher = request.getRequestDispatcher("usuario.jsp");
			dispatcher.forward(request, response);
			break;
			

		case "carregarStatus":
			
			/*Carregando o Status*/
			sService = new StatusService();
			usuario = new Usuario();
			UService = new UsuarioService();
			ArrayList<Status> status = sService.listarStatus();
			session = request.getSession();
			session.setAttribute("status", status);
			/**/
			
			/*Carregar id*/
			dispatcher = request.getRequestDispatcher("novoCampeonatoAtual.jsp");
			dispatcher.forward(request, response);
			break;
			
		case "cadastrarCampeonato":
			cService = new CampeonatoService();
			campeonato = new Campeonato();
			usuario = new Usuario();
			sService = new StatusService();
			
			campeonato.setNome(nomeCampeonato);
			usuario.setId(Integer.parseInt(id));
			int idCampeonato = cService.inserirCampeonato(campeonato, usuario);
			
			
			int id10 = 0; 
			int p1 = Integer.parseInt(idP1);
			id10 = sService.inserirPontos(p1, idCampeonato, 1);
			
			int p2 = Integer.parseInt(idP2);
			id10 = sService.inserirPontos(p2, idCampeonato, 2);
			
			int p3 = Integer.parseInt(idP3);
			id10 = sService.inserirPontos(p3, idCampeonato, 3);
			
			int p4 = Integer.parseInt(idP4);
			id10 = sService.inserirPontos(p4, idCampeonato, 4);
			
			
			
			dispatcher = request.getRequestDispatcher("usuario.jsp");
			dispatcher.forward(request, response);
			break;
			

		case "inserirTimes":
			tService = new TimeService();
			time = new Time();
			
			time.setNome(times);
			tService.inserirUsuario(time);
			
			dispatcher = request.getRequestDispatcher("usuario.jsp");
			dispatcher.forward(request, response);
			break;
		}
			
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
