package ca.markp.servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ca.markp.classes.DogEntryBean;
import ca.markp.dao.ConnectDB;

/**
 * Servlet implementation class EditEntry
 */
@WebServlet("/EditEntry")
public class EditEntry extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dogId = Integer.parseInt(request.getParameter("dogid"));
		
		ConnectDB conn = new ConnectDB();
		DogEntryBean entry = conn.viewEntryById(dogId);
		boolean fromHandler = Boolean.parseBoolean(request.getParameter("fromHandler"));
		
		switch (entry.getBreed()) {
		case "Sporting Dog":
			request.setAttribute("sporting", "selected");
			break;
		case "Hounds":
			request.setAttribute("hounds", "selected");
			break;
		case "Non-Sporting":
			request.setAttribute("nonsporting", "selected");
			break;
		case "Terrier":
			request.setAttribute("terrier", "selected");
			break;
		case "Toys":
			request.setAttribute("toys", "selected");
			break;
		case "Herding":
			request.setAttribute("herding", "selected");
			break;
		case "Working Dog":
			request.setAttribute("working", "selected");
			break;
		default:
			break;
			
		}
		
		switch (entry.getGender()){
		case "male":
			request.setAttribute("ma", "checked");
			break;
		case "Male":
			request.setAttribute("ma", "checked");
			break;
		case "female":
			request.setAttribute("fe", "checked");
			break;
		case "Female":
			request.setAttribute("fe", "checked");
			break;
		default:
			break;
		}
		
		switch (entry.getGame()){
		case "class":
			request.setAttribute("cl", "checked");
			break;
		case "Class":
			request.setAttribute("cl", "checked");
			break;
		case "specialty":
			request.setAttribute("sp", "checked");
			break;
		case "Specialty":
			request.setAttribute("sp", "checked");
			break;
		default:
			break;
		}
		
		boolean[] dates = conn.getDate(entry.getEntryid());
		System.out.println(Arrays.toString(dates));
		
		if(dates[0]==true) {
			request.setAttribute("dayOne", "checked");
		}
		if(dates[1]==true) {
			request.setAttribute("dayTwo", "checked");
		}
		if(dates[2]==true) {
			request.setAttribute("dayThree", "checked");
		}
		
		boolean handler = entry.getIsHandler();
		if(handler==true) {
			request.setAttribute("hh", "checked");
		}
		
		
		
		HttpSession session = request.getSession();
		session.setAttribute("dogId", dogId);
		request.setAttribute("entry",entry);
		
		if(fromHandler) {
			request.getRequestDispatcher("handlermodify.jsp").forward(request, response);
			System.out.println("Goto handler view");
		} else {
			request.getRequestDispatcher("modify.jsp").forward(request, response);
			System.out.println("Goto normal view");
		}
		
	
		
	}

}
