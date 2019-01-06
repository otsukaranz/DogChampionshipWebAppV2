package ca.markp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetUserRoleSession
 */
@WebServlet("/HandlerPage")
public class LoginPage extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		boolean isOwner = request.isUserInRole("owner");
		session.setAttribute("owner", isOwner);
		System.out.println("Role is Owner: "+isOwner);
		request.getRequestDispatcher("handlerpage.jsp").forward(request,response);
	}

}
