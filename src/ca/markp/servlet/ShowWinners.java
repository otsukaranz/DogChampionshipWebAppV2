package ca.markp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.markp.classes.DogEntryBean;
import ca.markp.dao.GetWinnersDB;

/**
 * Servlet implementation class ShowWinners
 */
@WebServlet("/ShowWinners")
public class ShowWinners extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String opt = (String)request.getParameter("opt");
	
	switch (opt) {
	case "1":
		System.out.println("1 selected, bestofbreeds");
		GetWinnersDB show = new GetWinnersDB();
		ArrayList<DogEntryBean> list = show.bestofbreed();
		request.setAttribute("list", list);
		request.getRequestDispatcher("winnerbestofbreed.jsp").forward(request, response);
		break;
	case "2":
		
		request.getRequestDispatcher("winnerreserve.jsp").forward(request, response);
		break;
	case "3":
		request.getRequestDispatcher("winners/bestofopsex.jsp").forward(request, response);
		break;
	case "4":
	
		request.getRequestDispatcher("winners/groupwinners.jsp").forward(request, response);
		break;
	case "5":
	
		request.getRequestDispatcher("winners/bestinshow.jsp").forward(request, response);
		break;
	default:
		System.out.println("Going down to default");
		break;
	}
	
	
	}

}
