package ca.markp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.markp.classes.DogEntryBean;
import ca.markp.dao.ConnectDB;
import ca.markp.dao.DummyGeneratorClass;

/**
 * Servlet implementation class GetDummy
 */
@WebServlet("/GetDummy")
public class GetDummy extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DummyGeneratorClass createDum = new DummyGeneratorClass();
		createDum.generateDummy(100);
		request.getRequestDispatcher("register.jsp").forward(request, response);
		
	}

}
