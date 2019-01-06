package ca.markp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ca.markp.classes.DogEntryBean;
import ca.markp.dao.ConnectDB;

/**
 * Servlet implementation class UpdateEntryValue
 */
@WebServlet("/UpdateEntryValue")
public class UpdateEntryValue extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userClicked = (String)request.getParameter("userClicked");
		HttpSession session = request.getSession();
		String search = (String)session.getAttribute("search");
		String by = (String)session.getAttribute("by");
		boolean fromHandler = Boolean.parseBoolean(request.getParameter("fromHandler"));
		
		switch (userClicked) {
		
			case "Go back to search":
				switch (by) {
				case "Dog ID":
					by = "dog_id";
					break;
				case "Dog Owner/Handler":
					by = "dog_owner";
					break;
				case "Dog Owner":
					by = "dog_owner";
					break;
				case "Dog Name":
					by = "dog_name";
					break;
				case "Dog Breed":
					by = "dog_breed";
					break;
				case "Dog Group":
					by = "dog_group";
					break;
				default:
					break;
				}
				
				if(fromHandler) {
					String link = "SearchEntryFromDB?fromHandler=true&all=0";
					request.getRequestDispatcher(link).forward(request, response);
				} else {
					String link = "SearchEntryFromDB?all=1&search="+search+"&by="+by;
					request.getRequestDispatcher(link).forward(request, response);
				}
				break;
				
			case "Update":
				DogEntryBean entry = new DogEntryBean();
				entry.setDogname((String)request.getParameter("dogname"));
				entry.setOwner((String)request.getParameter("owner"));
				entry.setBreed((String)request.getParameter("breed"));
				entry.setGroup((String)request.getParameter("group"));
				entry.setGender((String)request.getParameter("gender"));
				entry.setGame((String)request.getParameter("game"));
				entry.setEmail((String)request.getParameter("email"));
				entry.setUrl((String)request.getParameter("photoURL"));
				entry.setHandler(Boolean.parseBoolean(request.getParameter("ishandler")));
				System.out.println("Is Handler value: "+request.getParameter("ishandler"));
				int dogId = (int)session.getAttribute("dogId");
				ConnectDB conn = new ConnectDB();
				conn.updateEntry(entry, dogId);
			
				boolean dayOne = Boolean.parseBoolean(request.getParameter("dayOne"));
				boolean dayTwo = Boolean.parseBoolean(request.getParameter("dayTwo"));
				boolean dayThree = Boolean.parseBoolean(request.getParameter("dayThree"));
				session.setAttribute("dayOne", dayOne);
				session.setAttribute("dayTwo", dayTwo);
				session.setAttribute("dayThree", dayThree);
				
				String setDate = conn.setDate(dogId, dayOne, dayTwo, dayThree);
				System.out.println("Set Date: "+setDate);
				
				if(fromHandler) {
					request.getRequestDispatcher("EditEntry?dogid="+dogId+"&fromHandler=true").forward(request, response);
				} else {
					String link1 = "EditEntry?dogid="+dogId;
					request.getRequestDispatcher(link1).forward(request, response);
				}
				
				
				break;
				
			case "Delete":
				ConnectDB conn1 = new ConnectDB();
				String result = conn1.deleteEntry((int)session.getAttribute("dogId"));//use this to trigger js
				switch (by) {
				case "Dog ID":
					by = "dog_id";
					break;
				case "Dog Owner/Handler":
					by = "dog_owner";
					break;
				case "Dog Owner":
					by = "dog_owner";
					break;
				case "Dog Name":
					by = "dog_name";
					break;
				case "Dog Breed":
					by = "dog_breed";
					break;
				case "Dog Group":
					by = "dog_group";
					break;
				default:
					break;
				}
				System.out.println(result);
				
				if(fromHandler) {
					String link = "SearchEntryFromDB?all=0&fromHandler=true";
					request.getRequestDispatcher(link).forward(request, response);
				} else {
					String link11 = "SearchEntryFromDB?all=1&search="+search+"&by="+by;
					request.getRequestDispatcher(link11).forward(request, response);
				}
				
				
				break;
			default:
				break;
		}
	}
	
	
}
