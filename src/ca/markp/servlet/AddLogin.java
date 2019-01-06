package ca.markp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ca.markp.dao.*;
/**
 * Servlet implementation class AddLogin
 */
@WebServlet("/AddLogin")
public class AddLogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		String role = (String)request.getParameter("role");
		
		ConnectDB conn = new ConnectDB();
		String result = conn.addLogin(username, password, role);
		System.out.println(result);
		request.setAttribute("added",result);
		request.getRequestDispatcher("addloginpage.jsp").forward(request,response);
		
	}

}
