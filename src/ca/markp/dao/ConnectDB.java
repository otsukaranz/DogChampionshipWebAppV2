package ca.markp.dao;

import ca.markp.classes.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
/*import java.util.concurrent.TimeUnit;*/

public class ConnectDB {
	public ArrayList<DogEntryBean> generateDummy(int num) {
		System.out.println("Method: generateDummy");
		ArrayList<DogEntryBean> list = new ArrayList<>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			   Connection conn = null;


			   conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   
			   ArrayList<Dummy> dumdum = new ArrayList<>();
			   for(int i=0; i<num; i++) {
				   dumdum.add(new Dummy());
			   }
			   for(int i=0; i<dumdum.size(); i++) {
			   String q = "Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url) values("+dumdum.get(i).toString()+")";
			   Statement st = conn.createStatement();
			   st.executeUpdate(q);
			   //TimeUnit.SECONDS.sleep(2);
			   //System.out.println("Generated: "+ dumdum.get(i).toString());
			   System.out.println("("+dumdum.get(i).toString()+"),");
			   
			   }

			   String qq ="SELECT * from dog_entry order by dog_id desc limit "+num;
			   Statement st = conn.createStatement();
			   ResultSet rs = st.executeQuery(qq);
			   			   
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
				   
				   list.add(newEntry);
			   }
			   
			   System.out.println("Connection Success");
			   
			   conn.close();
		
		} catch  (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
			   
			   
		}
		return list;
	}
	
	public String throwToDB(DogEntryBean entry) {
		System.out.println("Method: DogEntryBean");
		String result;
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   String q ="Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values("+entry.toString()+")";
			   Statement st = conn.createStatement();
			   st.executeUpdate(q);
			   System.out.println("Query: "+q);
			   System.out.println("Connection Success");
			   result = "success";
			   conn.close();
		} catch (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
			   result = "fail";
		}
		
		return result;
	}
	
	public ArrayList<DogEntryBean> viewDB() {
		System.out.println("Method: viewDB");
		ArrayList<DogEntryBean> list = new ArrayList<>();
		
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   String q ="SELECT * from dog_entry";
			   
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
				   list.add(newEntry);
			   }
			   
			   System.out.println("SELECT Query Success");
			   conn.close();
		} catch (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
		}
		return list;
	}
	
	public ArrayList<DogEntryBean> searchDB(String search, String by) {
		System.out.println("Method: searchDB");
		ArrayList<DogEntryBean> list = new ArrayList<>();
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   /*String queryHandler;
			   if(userIsHandler) {
				   queryHandler = "and ishandler = 'true'";
			   } else {
				   queryHandler = "";
			   }*/ // to use, add boolean userIsHandler parameter; add +queryHandler to query;
			   
			   String q ="SELECT * from dog_entry where "+by+" REGEXP '"+search+"'";
			   System.out.println(q);
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
				   newEntry.setHandler(rs.getBoolean(10));
				   list.add(newEntry);
				   System.out.println(newEntry.toString());
			   }
			   
			   System.out.println("SELECT Query Success");
			   conn.close();
		} catch (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
		}
		return list;
	}
	
	public ArrayList<DogEntryBean> searchDBHandler(String name, String day) {
		System.out.println("Method: searchDB - for date");
		ArrayList<DogEntryBean> list = new ArrayList<>();
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   
			   String q ="SELECT * from dog_show where "+day+"='true'";
			   System.out.println(q);
			   Statement st = conn.createStatement();
			   ResultSet rs = st.executeQuery(q);
			   ArrayList<Integer> dogIdList = new ArrayList<>();
			   while(rs.next()) {
				   dogIdList.add(rs.getInt(1));
			   }
			   
			   System.out.println("Dog Id list query success, Entries: "+dogIdList.size());
			   
			   
			   for(int i=0; i<dogIdList.size(); i++) {
				   
				   String join ="select b.dog_id,dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,ishandler "
				   				+ "from dog_show a "
				   				+ "inner join dog_entry b on a.dog_id = b.dog_id"
				   				+ " where "+name+" b.dog_id='"+dogIdList.get(i)+"'";
				   System.out.println(join);
				   rs = st.executeQuery(join);
				   while(rs.next()){
					   DogEntryBean newEntry = new DogEntryBean();
					   newEntry.setEntryid(rs.getInt(1));
					   newEntry.setDogname(rs.getString(2));
					   newEntry.setOwner(rs.getString(3));
					   newEntry.setBreed(rs.getString(4));
					   newEntry.setGroup(rs.getString(5));
					   newEntry.setGender(rs.getString(6));
					   newEntry.setGame(rs.getString(7));
					   newEntry.setHandler(rs.getBoolean((8)));
					   list.add(newEntry);
					   System.out.println("Added to list");
				   }
			   }
			   conn.close();
			   return list;
			   
		} catch (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
		}
		return list;
	}
	
	public ArrayList<ListBean> showList(String group,String day) {
		System.out.println("Method: showList");
		
		if(day.equals("one")) {
			day = "and dog_show.dayOne='true'";
		}
		
		if(day.equals("two")) {
			day = "and dog_show.dayTwo='true'";
		}
		
		if(day.equals("three")) {
			day = "and dog_show.dayThree='true'";
		}
		
		if(day.equals("all")) {
			day = "";
		}
		
		if(group.equals("Sporting")) {
			group = "Sporting Dog";
		}
		
		if(group.equals("Working")) {
			group = "Working Dog";
		}
		
		if(group.equals("NonSporting")) {
			group = "Non-Sporting";
		}
		
		ArrayList<ListBean> list = new ArrayList<>();
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			  
			   String q = "SELECT \r\n" + 
			   		"		Count(*) as 'Total', \r\n" + 
			   		"		dog_breed as 'Breed', \r\n" + 
			   		"		Count(CASE WHEN dog_gender = 'male' and dog_game='class' THEN dog_entry.dog_id END) as 'Class-Male',\r\n" + 
			   		"		Count(CASE WHEN dog_gender = 'female' and dog_game='class' THEN dog_entry.dog_id END) as 'Class-Female',\r\n" + 
			   		"		Count(CASE WHEN dog_gender = 'male' and dog_game='specialty' THEN dog_entry.dog_id END) as 'Specialty-Male',\r\n" + 
			   		"		Count(CASE WHEN dog_gender = 'female' and dog_game='specialty' THEN dog_entry.dog_id END) as 'Specialty-Female'\r\n" + 
			   		"		from dog_entry \r\n" + 
			   		"		inner join dog_show on (dog_entry.dog_id = dog_show.dog_id) \r\n"+
			   		"		where dog_group ='"+group+"' "+day+"\r\n" + 
			   		"		group by dog_breed;";
			   System.out.println(q);
			   Statement st = conn.createStatement();
			   ResultSet rs = st.executeQuery(q);
			
			   while(rs.next()) {
				   ListBean entries = new ListBean();
				   entries.setTotal(rs.getInt(1));
				   entries.setDog_breed(rs.getString(2));
				   entries.setClassMale(rs.getInt(3));
				   entries.setClassFemale(rs.getInt(4));
				   entries.setSpecialtyMale(rs.getInt(5));
				   entries.setSpecialtyFemale(rs.getInt(6));
				   list.add(entries);
				   System.out.println(entries.toString());
			   }
			   
			   System.out.println("SELECT Query Success");
			   conn.close();
		} catch (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
		}
		return list;
	}
	
	public DogEntryBean viewEntryById(int dogId) {
		System.out.println("Method: viewEntryById");
		DogEntryBean entry = new DogEntryBean();
		
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   
			   String q ="SELECT * from dog_entry WHERE dog_id='"+dogId+"'";
			   System.out.println(q);
			   Statement st = conn.createStatement();
			   ResultSet rs = st.executeQuery(q);
			   
			   while(rs.next()) {
				   entry.setEntryid(rs.getInt(1));
				   entry.setDogname(rs.getString(2));
				   entry.setOwner(rs.getString(3));
				   entry.setBreed(rs.getString(4));
				   entry.setGroup(rs.getString(5));
				   entry.setGender(rs.getString(6));
				   entry.setGame(rs.getString(7));
				   entry.setUrl(rs.getString(8));
				   entry.setEmail(rs.getString(9));
				   entry.setHandler(rs.getBoolean(10));
			   }
			   System.out.println(entry.toString());
			   System.out.println("SELECT Query Success");
			   conn.close();
		} catch (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
		}
		return entry;
	}
	
	public String deleteEntry(int dogId) {
		System.out.println("Method: deleteEntry");
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			  
			   String q ="DELETE from dog_entry WHERE dog_id='"+dogId+"'";
			   System.out.println(q);
			   Statement st = conn.createStatement();
			   st.executeUpdate(q);
			   System.out.println("Delete Query Success");
			   conn.close();
			   return "Success";
		} catch (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
			   return "Fail";
		}
	}
	
	public String updateEntry(DogEntryBean entry, int dogId) {
		System.out.println("Method: updateEntry");
			try {
				   Class.forName("com.mysql.jdbc.Driver");
				   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
				  
				   String q ="UPDATE dog_entry SET "
				   		+ "dog_name='"+entry.getDogname()+"',"
				   		+ "dog_owner='"+entry.getOwner()+"',"
				   		+ "dog_breed='"+entry.getBreed()+"',"
				   		+ "dog_group='"+entry.getGroup()+"',"
				   		+ "dog_gender='"+entry.getGender()+"',"
				   		+ "dog_game='"+entry.getGame()+"',"
				   		+ "url='"+entry.getUrl()+"',"
				   		+ "email='"+entry.getEmail()+"',"
				   		+ "ishandler='"+entry.getIsHandler()+"' "
				   		+ "WHERE dog_id='"+dogId+"'";
				   System.out.println(q);
				   Statement st = conn.createStatement();
				   st.executeUpdate(q);
				   System.out.println("Update Query Success");
				   conn.close();
				   return "Success";
			} catch (Exception e) {
				   System.out.println("Connection Failed");
				   System.out.println(e);
				   return "Fail";
			}
		
	}
	
	public String addLogin(String username, String password, String role) {
		System.out.println("Method: addLogin");
		String result;
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/tomcat_realm_for_dog_championship?autoReconnect=true&useSSL=false", "root", "root");
			   Statement st = conn.createStatement();
			   String check = "Select * from tomcat_users where user_name ='"+username+"'";
		
			   ResultSet rs = st.executeQuery(check);
			   if(rs.next()) {
				   return "exists";
			   }
			   
			   String q ="Insert into tomcat_users (user_name,password) values('"+username+"','"+password+"')";
			   String q1 ="Insert into tomcat_users_roles (user_name,role_name) values('"+username+"','"+role+"')";
			   
			   
			   st.executeUpdate(q);
			   st.executeUpdate(q1);
			   System.out.println(q);
			   System.out.println(q1);
			   System.out.println("Connection Success");
			   result = "success";
			   conn.close();
		} catch (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
			   result = "fail";
		}
		
		return result;
	}
	
	public String setDate(int dog_id, boolean dayOne, boolean dayTwo, boolean dayThree) {
		System.out.println("Method: setDate");
		String result;
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   Statement st = conn.createStatement();
			   String update = "INSERT INTO dog_show (dog_id, dayOne, dayTwo, dayThree) values ('"+dog_id+"','"+dayOne+"','"+dayTwo+"','"+dayThree+"') ON DUPLICATE KEY UPDATE dayOne='"+dayOne+"', dayTwo='"+dayTwo+"', dayThree='"+dayThree+"';";
			   System.out.println(update);
			   st.executeUpdate(update);
			   System.out.println(update);
			   System.out.println("Connection Success");
			   result = "success";
			   conn.close();
		} catch (Exception e) {
			   System.out.println("Connection Failed");
			   System.out.println(e);
			   result = "fail";
		}
		
		return result;
	}
	

	
	public int getDogId(DogEntryBean entry) {
		//System.out.println("Method: getDogId");
		int dogId = 0;
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   Statement st = conn.createStatement();
			   String check = "Select * from dog_entry where "+entry.toStringMod();
			   //System.out.println(check);
			   ResultSet rs = st.executeQuery(check);
			   if(rs.next()) {
				   dogId = (rs.getInt(1));
			   } else {
				   dogId = 0;
			   }
			   
			   conn.close();
		} catch (Exception e) {
			  e.printStackTrace();
		}
		return dogId;
	}
	
	public boolean[] getDate(int dog_id) {
		//System.out.println("Method: getDate");
		boolean [] dates = new boolean[3];
		try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dog_championshipv2?autoReconnect=true&useSSL=false", "root", "root");
			   Statement st = conn.createStatement();
			   String check = "Select * from dog_show where dog_id='"+dog_id+"'";
	
			   ResultSet rs = st.executeQuery(check);
			   
			   while(rs.next()) {
				  dates[0]=Boolean.parseBoolean(rs.getString(2));
				  dates[1]=Boolean.parseBoolean(rs.getString(3));
				  dates[2]=Boolean.parseBoolean(rs.getString(4));
			   }
			   
			   conn.close();
		} catch (Exception e) {
			  e.printStackTrace();
		}
		return dates;
		
	}
	
}
