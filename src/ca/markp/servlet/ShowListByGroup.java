package ca.markp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.markp.classes.ListBean;
import ca.markp.dao.ConnectDB;

/**
 * Servlet implementation class ShowListByGroup
 */
@WebServlet("/ShowListByGroup")
public class ShowListByGroup extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ConnectDB newConn = new ConnectDB();
		String dayOption = (String)request.getParameter("day");
		
		System.out.println("Show dog for day "+dayOption);
		
		String[] group = {
				"Sporting",
				"Hounds",
				"Working",
				"Terrier",
				"Toys",
				"NonSporting",
				"Herding",
		};
		for(int i=0; i<group.length; i++) {
			ArrayList<ListBean> list = newConn.showList(group[i],dayOption);
			request.setAttribute(group[i], list);
		}
		request.getRequestDispatcher("participants.jsp").forward(request,response);
	
	}
	

}
