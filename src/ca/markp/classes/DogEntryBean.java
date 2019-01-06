package ca.markp.classes;

public class DogEntryBean {
	private int entryid;
	private String dogname;
	private String owner;
	private String breed;
	private String group;
	private String gender;
	private String game;
	private String url;
	private String email;
	private boolean isHandler;

	public DogEntryBean() {
		super();
	}
	
	
	public DogEntryBean( String dogname, String owner, String breed, String group, String gender,
			String game, String url, String email, boolean isHandler) {
		this.dogname = dogname;
		this.owner = owner;
		this.breed = breed;
		this.group = group;
		this.gender = gender;
		this.game = game;
		this.url = url;
		this.email = email;
		this.isHandler = isHandler;
	}



	public String getDogname() {
		return dogname;
	}
	public void setDogname(String dogname) {
		this.dogname = dogname;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getBreed() {
		return breed;
	}
	public void setBreed(String breed) {
		this.breed = breed;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getGame() {
		return game;
	}
	public void setGame(String game) {
		this.game = game;
	}

	
	public int getEntryid() {
		return entryid;
	}

	public void setEntryid(int entryid) {
		this.entryid = entryid;
	}
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public boolean getIsHandler() {
		return isHandler;
	}


	public void setHandler(boolean isHandler) {
		this.isHandler = isHandler;
	}


	@Override
	public String toString() {
		return "'"+dogname+"','"+owner+"','"+breed+"','"+group+"','"+gender+"','"+game+"','"+url+"','"+email+"','"+isHandler+"'";
	}
	
	public String toStringMod() {
		return "dog_name='"+dogname+"' and dog_owner='"+owner+"' and dog_breed='"+breed+"' and dog_group='"+group+"' and dog_gender='"+gender+"' and dog_game='"+game+"' and url='"+url+"' and email='"+email+"' and ishandler='"+isHandler+"'";
	}
	
}
