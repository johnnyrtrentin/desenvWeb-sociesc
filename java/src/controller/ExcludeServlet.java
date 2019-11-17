package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contato;
import model.ContatoRepository;

@WebServlet(urlPatterns = "/excluir-contato")
public class ExcludeServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		ContatoRepository repositorio = new ContatoRepository();
		repositorio.Excluir(Integer.valueOf(req.getParameter("id")));
		
		List<Contato> lista = repositorio.getContatos();
		
		req.setAttribute("contatos", lista);
		
		RequestDispatcher rd = req.getRequestDispatcher("lista-contatos.jsp");
		
		rd.forward(req, resp);
	}
}
