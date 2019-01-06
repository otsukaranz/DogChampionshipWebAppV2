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
 * Servlet implementation class GetDogsOnDay
 */
@WebServlet("/GetDogsOnDay")
public class GetDogsOnDay extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean dayOne = Boolean.parseBoolean(request.getParameter("dayOne"));
		boolean dayTwo = Boolean.parseBoolean(request.getParameter("dayTwo"));
		boolean dayThree = Boolean.parseBoolean(request.getParameter("dayThree"));
		String name;
		
		ConnectDB conn = new ConnectDB();
		
		String day = "";
		String d = "";
		if(dayOne) {
			day = "dayOne";
			d = "Day One - January 18, 2019.";
		}
		if(dayTwo) {
			day = "dayTwo";
			d = "Day Two - January 19, 2019.";
		}
		if(dayThree) {
			day = "dayThree";
			d = "Day Three - January 20, 2019.";
		}
		
		if(request.isUserInRole("handler")) {
			name = "dog_owner='"+request.getUserPrincipal().getName()+"' and";
			System.out.println("Handler Name: "+name);
		} else {
			name = "";
		}
		
		ArrayList<DogEntryBean> list = conn.searchDBHandler(name,day);
		
		String entries;
		String zero;
		
		if(list.size()>0) {
			if(list.size()<2) {
				entries = "entry";
			} else {
				entries = "entries";
			}
			zero = "You have "+list.size()+" "+entries+" to show on "+d;
		} else {
			zero = "You don't have any entry to show on "+d;
		}
	
		request.setAttribute("zero", zero);
		request.setAttribute("list",list);
		request.getRequestDispatcher("handlerview.jsp").forward(request, response);
		
		
	}
}
