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

/**
 * Servlet implementation class ViewEntryFromDB
 */
@WebServlet("/ViewEntryFromDB")
public class ViewEntryFromDB extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getAttribute("sort")!=null) {
			
		}
		
		ConnectDB newConn = new ConnectDB();
		ArrayList<DogEntryBean> list = newConn.viewDB();
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("viewentry.jsp").forward(request,response);
		
	}

	

}
