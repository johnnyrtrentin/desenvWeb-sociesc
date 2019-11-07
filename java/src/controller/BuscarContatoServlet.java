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

@WebServlet("/busca-contato")
public class BuscarContatoServlet extends HttpServlet {
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		ContatoRepository repositorio = new ContatoRepository();
		Contato contato = repositorio.getByID(Integer.valueOf(req.getParameter("id")));
		
		req.setAttribute("contato", contato);
		
		RequestDispatcher rd = req.getRequestDispatcher("altera-contato.jsp");
		
		rd.forward(req, resp);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
