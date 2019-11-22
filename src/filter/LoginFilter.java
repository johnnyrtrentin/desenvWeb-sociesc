package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.ContatoRepository;
import sun.rmi.server.Dispatcher;

@WebFilter(urlPatterns = "/login")
public class LoginFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		boolean authorized = false;
		String loginUrl = "/login.jsp";

		ContatoRepository accounts = new ContatoRepository();

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpSession session = httpRequest.getSession();

		String email = httpRequest.getParameter("email");
		String password = httpRequest.getParameter("password");

		authorized = accounts.verifyLogin(email, password);

		if (authorized) {
			session.setAttribute("authorized", true);
			session.setMaxInactiveInterval(5 * 60);

			chain.doFilter(request, response);
		} else {
			if (password == null || "".equals(password) || email == null || "".equals(email)) {
				session.setAttribute("errorMsg1", "Usuário ou senha não informado!");
				RequestDispatcher dispatcher = request.getRequestDispatcher(loginUrl);
				dispatcher.include(request, response);
				
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
				PrintWriter out = response.getWriter();
				out.print("Usuário inexistente!");
				dispatcher.forward(request, response);
			}
		}
		return;
	}
}