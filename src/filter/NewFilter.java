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

import model.ContatoRepository;

@WebFilter(urlPatterns = "/novo-contato")
public class NewFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest httpRequest = (HttpServletRequest) request;

		String fName = httpRequest.getParameter("nome");
		String fLastName = httpRequest.getParameter("sobrenome");
		String fEmail = httpRequest.getParameter("email");
		String fPassword = httpRequest.getParameter("password");
		String fPhoneNumber = httpRequest.getParameter("telefone");

		ContatoRepository accounts = new ContatoRepository();
		String newContactURL = "/novo-contato.html";
		boolean haveAccount;

		if (fName == null || "".equals(fName) || fLastName == null || "".equals(fLastName) || fEmail == null
				|| "".equals(fEmail) || fPassword == null || "".equals(fPassword) || fPhoneNumber == null
				|| "".equals(fPhoneNumber)) {

			RequestDispatcher dispatcher = request.getRequestDispatcher(newContactURL);
			dispatcher.forward(request, response);
		} else {
			haveAccount = accounts.verifyEmail(fEmail);

			if (haveAccount) {
				RequestDispatcher dispatcher = request.getRequestDispatcher(newContactURL);
				dispatcher.forward(request, response);
			} else {
				chain.doFilter(request, response);				
			}
		}
	}
}
