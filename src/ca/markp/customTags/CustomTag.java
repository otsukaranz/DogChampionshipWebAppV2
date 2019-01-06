package ca.markp.customTags;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import ca.markp.dao.*;

public class CustomTag extends SimpleTagSupport {
		
		private int dogId;

		public void setDogId(int dogId) {
			this.dogId = dogId;
		}


		public void doTag() throws JspException, IOException {
			
			ConnectDB conn = new ConnectDB();
			boolean[] dates = conn.getDate(this.dogId);
			
			
			JspWriter out = getJspContext().getOut();
			
			
			if(dates[0]==true) {
				out.println("Jan-18'19(Fri)<br>");
			}
			if(dates[1]==true) {
				out.println("Jan-19'19(Sat)<br>");
			}
			if(dates[2]==true) {
				out.println("Jan-20'19(Sun)");
			}
			
			if(dates[0]==false && dates[1]==false && dates[2]==false) {
				out.println("No Date Selected");
			}
			
		}
	}
