package ca.markp.dao;

import ca.markp.classes.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class GetWinnersDB {
	
	public ArrayList<DogEntryBean> bestofbreed(){
		System.out.println("bestofbreed");
		ArrayList<DogEntryBean> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   String q = "SELECT * from dog_entry a inner join winner_best_of_breed b on (a.dog_id = b.dog_id)";
			   
			   Statement st = conn.createStatement();
			   ResultSet rs = st.executeQuery(q);
			   
			   while(rs.next()) {
				   DogEntryBean newEntry = new DogEntryBean();
				   newEntry.setEntryid(rs.getInt(1));
				   newEntry.setDogname(rs.getString(2));
				   newEntry.setOwner(rs.getString(3));
				   newEntry.setBreed(rs.getString(4));
				   newEntry.setGroup(rs.getString(5));
				   newEntry.setGender(rs.getString(6));
				   newEntry.setGame(rs.getString(7));
				   newEntry.setUrl(rs.getString(8));
				   newEntry.setEmail(rs.getString(9));
				   newEntry.setHandler(rs.getBoolean(10));
				   list.add(newEntry);
			   }
			   
			   System.out.println("Query 'bestofbreed' Success");
			   conn.close();
		
		} catch  (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
			   
			   
		}
		return list;  
	}
}
