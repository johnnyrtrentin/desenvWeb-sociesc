package filter;

import java.io.IOException;
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

@WebFilter(urlPatterns = "/login")
public class LoginFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		boolean authorized = false;
		
		ContatoRepository accounts = new ContatoRepository();

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpSession session = httpRequest.getSession(false);

		String email = httpRequest.getParameter("email");
		String password = httpRequest.getParameter("password");

		authorized = accounts.verifyLogin(email, password);

		if (authorized)
			session.setAttribute("authorized", true);
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/login.html");
			dispatcher.forward(request,response);		
		}

		if (session != null && session.getAttribute("authorized") != null)
			chain.doFilter(request, response);

		return;
	}
}