package br.usjt.ads.best.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.usjt.ads.best.model.entity.Status;
import br.usjt.ads.best.model.entity.Usuario;
import br.usjt.ads.best.model.service.StatusService;
import br.usjt.ads.best.model.service.UsuarioService;

/**
 * Servlet implementation class ManterFilmesController
 */
@WebServlet("/manterdados.do")
public class ManterFilmesController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String acao = request.getParameter("acao");
		RequestDispatcher dispatcher;
		UsuarioService UService = null;
		StatusService sService = null;
		Usuario usuario = null;
		HttpSession session;
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		

		switch (acao) {
		case "logar":
			usuario = new Usuario();
			UService = new UsuarioService();
			usuario.setLogin(login);
			usuario.setSenha(senha);
			boolean validacao = UService.consultarLogin(usuario);
			
			if(validacao == true)
			{
				usuario = UService.buscarUsuarioId(usuario);
				session = request.getSession();
				session.setAttribute("usuario", usuario);
				
				dispatcher = request.getRequestDispatcher("usuario.jsp");
				dispatcher.forward(request, response);
				break;
			}
			else if(validacao == false){
					break;
				}

		case "cadastrar":
			usuario = new Usuario();
			UService = new UsuarioService();

			usuario.setLogin(login);
			usuario.setSenha(senha);
			usuario.setNome(nome);
			usuario.setEmail(email);
			
			int id = UService.inserirUsuario(usuario);
			
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
			dispatcher = request.getRequestDispatcher("novoCampeonato.jsp");
			dispatcher.forward(request, response);
			break;
			
		case "cadastrarResultadoStatus":
			break;
		}
			
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
