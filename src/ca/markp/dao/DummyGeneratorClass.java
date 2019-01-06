package ca.markp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;

import ca.markp.classes.DogEntryBean;

public class DummyGeneratorClass {
	public void generateDummy(int num) {
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			   Connection conn = null;
			   conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2", "root", "root");
			   ArrayList<Dummy> dumdum = new ArrayList<>();
			   ArrayList<DogEntryBean> dgBean = new ArrayList<>();
			   ConnectDB dbconn = new ConnectDB();
			   Statement st = conn.createStatement();
			   int dogId;
			   for(int i=0; i<num; i++) {
				   Dummy dd = new Dummy();
				   DogEntryBean doBean = new DogEntryBean();
				   doBean.setDogname(dd.getName());
				   doBean.setOwner(dd.getOwner());
				   doBean.setBreed(dd.getBreed());
				   doBean.setGender(dd.getGender());
				   doBean.setGroup(dd.getGroup());
				   doBean.setGame(dd.getGame());
				   doBean.setUrl(dd.getUrl());
				   doBean.setEmail(dd.getEmail());
				   doBean.setHandler(Boolean.parseBoolean(dd.getIshandler()));
				   dgBean.add(doBean);
				   dumdum.add(dd);
				   
			   }
			   for(int i=0; i<dumdum.size(); i++) {
			   String q = "Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values("+dumdum.get(i).toString()+")";
			   System.out.println(q);
			   st.executeUpdate(q);
			   DogEntryBean thisDog = dgBean.get(i);
			   dogId = dbconn.getDogId(thisDog);
			   String dayOne = ishandler();
			   String dayTwo = ishandler();
			   String dayThree = ishandler();
			   String qq = "Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('"+dogId+"','"+dayOne+"','"+dayTwo+"','"+dayThree+"')";
			   System.out.println(qq);
			   st.executeUpdate(qq);
			   
			   
			   //TimeUnit.SECONDS.sleep(2);
			   //System.out.println("Generated: "+ dumdum.get(i).toString());
			   System.out.println("("+dumdum.get(i).toString()+"),");
			   
			   }
			   
			   

//			   String qq ="SELECT * from dog_entry order by dog_id desc limit "+num;
//			   Statement st = conn.createStatement();
//			   ResultSet rs = st.executeQuery(qq);
//			   			   
//			   while(rs.next()) {
//				   DogEntryBean newEntry = new DogEntryBean();
//				   newEntry.setEntryid(rs.getInt(1));
//				   newEntry.setDogname(rs.getString(2));
//				   newEntry.setOwner(rs.getString(3));
//				   newEntry.setBreed(rs.getString(4));
//				   newEntry.setGroup(rs.getString(5));
//				   newEntry.setGender(rs.getString(6));
//				   newEntry.setGame(rs.getString(7));
//				   newEntry.setUrl(rs.getString(8));
//				   
//				   list.add(newEntry);
//			   }
			   
			   System.out.println("Connection Success");
			   
			   conn.close();
		
		} catch  (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
			   
			   
		}
	} 
	
	public static String ishandler() {
		String[] ishandler = {
				"True",
				"False"
			};
			
			int random = (int )(Math.random() * ishandler.length);
			//System.out.println(random);
			return ishandler[random];
	}
}
