package ca.markp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ca.markp.classes.DogEntryBean;
import ca.markp.dao.ConnectDB;

/**
 * Servlet implementation class SearchEntryFromDB
 */
@WebServlet("/SearchEntryFromDB")
public class SearchEntryFromDB extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean userIsHandler= request.isUserInRole("handler");
		System.out.println("Is Handler: "+userIsHandler);

		HttpSession session = request.getSession();
		session.setAttribute("userIsHandler", userIsHandler);
		
		session.setAttribute("owner", request.isUserInRole("handler"));
		
		String search = (String)request.getParameter("search");
		String by = (String)request.getParameter("by");
		session.setAttribute("by", by);
		boolean fromHandler = Boolean.parseBoolean((request.getParameter("fromHandler")));
		
		if(fromHandler) {
			by = "dog_owner";
			search = request.getRemoteUser();
		}
		
		
		ConnectDB conn = new ConnectDB();
		ArrayList<DogEntryBean> list = conn.searchDB(search, by);
		
		switch (by) {
		case "dog_id":
			by = "Dog ID";
			break;
		case "dog_name":
			by = "Dog Name";
			break;
		case "dog_owner":
			by = "Dog Owner/Handler";
			break;
		case "dog_breed":
			by = "Dog Breed";
			break;
		case "dog_group":
			by = "Dog Group";
			break;
		default:
			break;
		}
		
		ArrayList<Integer> dogIds = new ArrayList<>();
		for(int i=0; i<list.size(); i++) {
			DogEntryBean holder = list.get(i);
			dogIds.add(conn.getDogId(holder));
			
		}
		
		request.setAttribute("dogIds", dogIds);
		String zero;
		String entries;
		
		String all = (String)request.getParameter("all");
		
			if(all.equals("0")) {
				if(list.size()>0) {
					if(list.size()<2) {
						entries = "entry";
					} else {
						entries = "entries";
					}
					zero = "Your search \""+search+"\" by \""+by+"\" returned "+list.size()+" "+entries+".";
				} else {
					zero = "Your search \""+search+"\" by \""+by+"\" did not match any entry.";
				}
			} else {
				if(list.size()>0) {
					if(list.size()<2) {
						entries = "entry";
					} else {
						entries = "entries";
					}
					zero = "Viewing all "+list.size()+" "+entries+" from Dogs List";
				} else {
					zero = "There is no entry from Dogs List";
				}
			}
		
		
		session.setAttribute("search", search);
		session.setAttribute("by", by);
		System.out.println(zero);
		request.setAttribute("zero", zero);
		request.setAttribute("list", list);
		
		if(fromHandler) {
			request.getRequestDispatcher("handlerview.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("viewentry.jsp").forward(request, response);
		}
	}
}