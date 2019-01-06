package ca.markp.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.markp.classes.*;
import ca.markp.dao.ConnectDB;

/**
 * Servlet implementation class AddEntryToDB
 */
@WebServlet("/AddEntryToDB")
public class AddEntryToDB extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dogName = (String)request.getParameter("dogname");
		String owner = (String)request.getParameter("owner");
		String breed = (String)request.getParameter("breed");
		String group = (String)request.getParameter("group");
		String gender = (String)request.getParameter("gender");
		String game = (String)request.getParameter("game");
		String userEmail = (String)request.getParameter("email");
		String url = (String)request.getParameter("photoURL");
		boolean fromHandler = Boolean.parseBoolean(request.getParameter("fromHandler"));
		boolean isHandler = Boolean.parseBoolean(request.getParameter("ishandler"));
		boolean dayOne = Boolean.parseBoolean(request.getParameter("dayOne"));
		boolean dayTwo = Boolean.parseBoolean(request.getParameter("dayTwo"));
		boolean dayThree = Boolean.parseBoolean(request.getParameter("dayThree"));
		
		ConnectDB conn = new ConnectDB();
		DogEntryBean entry = new DogEntryBean(dogName,owner,breed,group,gender,game,url,userEmail,isHandler);
		
		String date = " ";
		
		if(dayOne) {
			date+=" Jan 18,2019 (Fri) ";
		}
		if(dayTwo) {
			date+=" Jan 19,2019 (Sat) ";
		}
		if(dayThree) {
			date+=" Jan 20,2019 (Sun) ";
		}
		
		String result = conn.throwToDB(entry);
		if (result.equals("success")) {
			SendEmail send = new SendEmail();
			try {
				send.mailRegisteredOwner(dogName,owner,breed,group,gender,game,userEmail,isHandler,date);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			result = "fail";
		}
		
		int dogId = conn.getDogId(entry);
		System.out.println(dogId);
		conn.setDate(dogId,dayOne,dayTwo,dayThree);
		
		request.setAttribute("added", result);
		System.out.println("Done add entry!");
		
		System.out.println("From Handler access? "+fromHandler);
		
		if(fromHandler) {
			request.getRequestDispatcher("handlerAddDog.jsp").forward(request, response);
		} else {		
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
//		response.sendRedirect("addentry.jsp");
		
		
		
	}
}