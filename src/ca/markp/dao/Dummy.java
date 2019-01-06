package ca.markp.dao;

public class Dummy {
	private String name;
	private String owner;
	private String breed;
	private String group;
	private String gender;
	private String game;
	private String url;
	private String email;
	private String ishandler;
	
	

	public Dummy() {
		this.name = dogName();
		this.owner = dogOwner();
		this.breed = dogBreed();
		this.group = dogGroup();
		this.gender = dogGender();
		this.game = dogGame();
		this.url = url();
		this.email = email();
		this.ishandler = ishandler();
		
	}

	
	
	public String getGame() {
		return game;
	}



	public void setGame(String game) {
		this.game = game;
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



	public String getIshandler() {
		return ishandler;
	}



	public void setIshandler(String ishandler) {
		this.ishandler = ishandler;
	}



	@Override
	public String toString() {
		return "'"+name+"','"+owner+"','"+breed+"','"+group+"','"+gender+"','"+game+"','"+url+"','"+email+"','"+ishandler+"'";
	}


	

/*	public Dummy(String name, String owner, String breed, String group, String gender, String game, String url,
			String email, String ishandler) {
		super();
		this.name = name;
		this.owner = owner;
		this.breed = breed;
		this.group = group;
		this.gender = gender;
		this.game = game;
		this.url = url;
		this.email = email;
		this.ishandler = ishandler;
	}*/



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getDogGame() {
		return game;
	}

	public void setDogGame(String game) {
		this.game = game;
	}

	private String dogBreed() {
		System.out.println("Method: dogBreed");
		String[] breed = {
				"German Shepherd Dogs",
				"Retrievers",
				"French Bulldogs",
				"Bulldogs",
				"Beagles",
				"Poodles",
				"Rottweilers",
				//"Yorkshire Terriers",
				"Boxers",
				"Siberian Huskies",
				"Dachshunds",
				"Great Danes",
				"Doberman Pinschers",
				"Shih Tzu",
				//"Boston Terriers",
				//"Pomeranians",
				//"Havanese",
				//"Shetland Sheepdogs",
				//"Bernese Mountain Dogs",
				"Mastiffs",
				"Pugs",
				"Chihuahuas",
				//"Maltese",
				//"Miniature American Shepherds",
				"Newfoundlands",
				"Cane Corso",
				//"Border Collies",
				//"Belgian Malinois",
				"Shiba Inu",
				//"Bichons Frises",
				//"Akitas",
				"St. Bernards",
				//"Soft Coated Wheaten Terriers",
				"Bloodhounds",
				//"Bullmastiffs",
				//"Portuguese Water Dogs",
				//"Airedale Terriers",
				//"Australian Cattle Dogs",
				//"Scottish Terriers",
				//"Alaskan Malamutes",
				//"Bull Terriers",
				//"Whippets",
				"Dalmatians",
				//"Chinese Shar-Pei",
				//"Wirehaired Pointing Griffons",
				//"Great Pyrenees",
				//"Old English Sheepdogs",
				"Miniature Pinschers",
				//"Setters (Irish)",
				//"Irish Wolfhounds",
				//"Italian Greyhounds",
				"Chow Chows",
				//"Lhasa Apsos",
				//"Russell Terriers",
				//"Chinese Crested",
				//"Giant Schnauzers",
				//"Coton de Tulear",
				//"Staffordshire Bull Terriers",
				//"American Staffordshire Terriers",
				//"Pekingese",
				//"Standard Schnauzers",
				"Norwegian Elkhounds",
				//"Border Terriers",
				//"Afghan Hounds",
				"Tibetan Terriers",
				//"Borzois",
				//"Belgian Tervuren",
				//"Setters (Gordon)",
				//"Norwich Terriers",
				//"Japanese Chin",
				//"Welsh Terriers",
				//"Toy Fox Terriers",
				//"Pointers",
				//"Irish Terriers",
				//"Miniature Bull Terriers",
				//"Black Russian Terriers",
				"American Eskimo Dogs"                 
		};
	
		int random = (int )(Math.random() * breed.length);
		//System.out.println(random);
		return breed[random];		
	}
	
	private String dogGroup() {
		String[] group = {
				"Sporting Dog",
				"Hounds",
				"Working Dog",
				"Terrier",
				"Toys",
				"Non-Sporting",
				"Herding",
		};
		
		int random = (int )(Math.random() * group.length);
		//System.out.println(random);
		return group[random];		
	}
	
	private String dogName() {
		String[] name = {
				"Aaliyah",
				"Abby",
				"Abe",
				"Abigail",
				"Abu",
				"Ace",
				"Action",
				"Adalyn",
				"Addie",
				"Addison",
				"Adele",
				"Adeline",
				"Adella",
				"Adler",
				"Admiral",
				"Adrian Monk",
				"Aesop",
				"Agatha",
				"Agent 47",
				"Aiden",
				"Aigis",
				"Aimee",
				"Ajax",
				"Akuma",
				"Al Bundy",
				"Aladdin",
				"Alaska",
				"Alcott",
				"Aldous",
				"Alexander",
				"Alfonso",
				"Alfred",
				"Alice",
				"Alistair",
				"Allie",
				"Alpha",
				"Alton",
				"Alucard",
				"Amaterasu",
				"Ambassador",
				"Ambrosia",
				"Amelia",
				"Amelie",
				"Amethyst",
				"Amy Rose",
				"Baby",
				"Bad Boy",
				"Bagheera",
				"Bailey",
				"Bald Bull",
				"Baloo",
				"Balrog",
				"Balthier",
				"Bambi",
				"Bandit",
				"Banjo",
				"Banshee",
				"Banzai",
				"Baraka",
				"Barclay",
				"Barney",
				"Barney Fife",
				"Barney Rubble",
				"Barney Stinson",
				"Bart Simpson",
				"Bartley",
				"Bashful",
				"Basil Fawlty",
				"Batman",
				"Baxter",
				"Bayleaf",
				"Baylor",
				"Beagle",
				"Beamer",
				"Bean",
				"Beans",
				"Bear",
				"Beast",
				"Beau",
				"Beckham",
				"Beethoven",
				"Bella",
				"Belle",
				"Bender",
				"Benjamin",
				"Benji",
				"Benny",
				"Bentley",
				"Berkeley",
				"Berlin",
				"C3PO",
				"Cabernet",
				"Caden",
				"Cadillac",
				"Cage",
				"Cagney",
				"Cairo",
				"Calamity Jane",
				"Caleb",
				"Cali",
				"Callaway",
				"Callie",
				"Callisto",
				"Calvin",
				"Cameron",
				"Camilla",
				"Cammy",
				"Camry  ",
				"Captain",
				"Captain Falcon",
				"Captain Olimar",
				"Captain Qwark",
				"Carlton",
				"Carlton Banks",
				"Carlyle",
				"Carmen",
				"Carmen Sandiego",
				"Carol Peletier",
				"Carter",
				"Casey",
				"Cash",
				"Cassie Cage",
				"Castle",
				"Catcher",
				"Celia",
				"Cersei",
				"Chalupa",
				"Champ",
				"Chance",
				"Chandler",
				"Chandler Bing",
				"Chanel",
				"Channing",
				"Chantilly",
				"Chaos",
				"Fa la",
				"Faithful",
				"Falco Lombardi",
				"Faline",
				"Fancy",
				"Fandango",
				"Fang",
				"Faulkner",
				"Fauna",
				"Fawful",
				"Fei Long",
				"Feisty",
				"Feller",
				"Ferdie",
				"Ferris",
				"Fifi",
				"Figaro",
				"Finn",
				"Fiver",
				"Flash",
				"Fletcher",
				"Flora",
				"Flounder",
				"Fluffy",
				"Flynn",
				"Fonzie",
				"Forester",
				"Forrest",
				"Fox McCloud",
				"Fox Mulder",
				"Foxy",
				"Francesca",
				"Frank Costanza",
				"Frank West",
				"Frankie",
				"Frasier Crane",
				"Fred Flintstone",
				"Frederick",
				"Frisco",
				"Frisky",
				"Frodo",
				"Frou-Frou",
				"Fry",
				"Fulgore",
				"Quan Chi",
				"Quanika",
				"Quantum",
				"Quark",
				"Quasar",
				"Quby",
				"Queen",
				"Queenie",
				"Quenby",
				"Quimby",
				"Quincy",
				"Quinn",
				"Quip",
				"Quyen",
				"Nacho",
				"Nadia",
				"Nala",
				"Nana",
				"Nani",
				"Napoleon",
				"Nash",
				"Natalie",
				"Nathan",
				"Navi",
				"Nellie",
				"Nelly",
				"Nemo",
				"Neo",
				"Newbie",
				"Newman",
				"Nibbles",
				"Nicholas",
				"Nightwolf",
				"Nikki",
				"Niko Bellic",
				"Niles",
				"Niles Crane",
				"Ninja",
				"Nit Pik",
				"Noah",
				"Noob Saibot",
				"Nora",
				"Norm Peterson",
				"Norman",
				"Nova",
				"Vader",
				"Valentine",
				"Vega",
				"Vegas",
				"Velocity",
				"Veto",
				"Vicky",
				"Victoria",
				"Violet",
				"Vivian",
				"Vulcan",
				"Lacey",
				"Lacie",
				"Lacy",
				"Laddie Boy",
				"Lady",
				"Lady Rover",
				"Landon",
				"Lara",
				"Lara Kroft",
				"Largo",
				"Lark",
				"Lars Alexandersson",
				"Laser",
				"Lassie",
				"Later",
				"Latte",
				"Lauren",
				"Layla",
				"Lazarus",
				"Le Beau",
				"Leah",
				"Legolas",
				"Leia",
				"Leifang",
				"Lemon",
				"Leo",
				"Leonard Hofstadter",
				"Leonard McCoy",
				"Leprechaun",
				"Leroy Jethro Gibbs",
				"Leslie Knope",
				"Lester",
				"Levi",
				"Lex Luthor",
				"Lexa",
				"Lexi",
				"Lexie",
				"Liam",
				"Liberty",
				"Licorice",
				"Lightning",
				"Lili",
				"Lillian",
				"Lilly",
				"Lilo",
				"Mac",
				"Macbeth",
				"Mackenzie",
				"Macy",
				"Maddie",
				"Madelyn",
				"Madison",
				"Madonna",
				"Mafia",
				"Maggie",
				"Magic",
				"Majestic",
				"Major",
				"Mako",
				"Makoto",
				"Mal",
				"Manchu",
				"Marge Simpson",
				"Maria",
				"Marie",
				"Mario",
				"Mariya",
				"Marlboro",
				"Marley",
				"Martin Crane",
				"Mary",
				"Mary Richards",
				"Mason",
				"Master Chief",
				"Matisse",
				"Matthew",
				"Matzoball",
				"Maui",
				"Max",
				"Max Factor",
				"Max Payne",
				"Maxi",
				"Maxwell",
				"Maya",
				"Meatball",
				"Meeko",
				"Mega Man",
				"Meggie",
				"Mellow",
				"Melody"
		};
		int random = (int )(Math.random() * name.length);
		//System.out.println(random);
		return name[random];	
	}
	
	private String dogOwner() {
		String[] owner = {
				"Annett",
				"Rudy",
				"Cherryl",
				"Tam",
				"Tamela",
				"Karena",
				"Ethan",
				"Felipe",
				"Karol",
				"Roland",
				"Annita",
				"Noble",
				"Michaele",
				"Cory",
				"Aleta",
				"Terrie",
				"Carolee",
				"Delinda",
				"Stewart",
				"Anjanette",
				"Mitsuko",
				"Bernadette",
				"Lionel",
				"Orville",
				"Kamilah",
				"Tara",
				"Zina",
				"Hassan",
				"Natalie",
				"Mark",
				"Vanessa",
				"Mark",
				"Vanessa",
				"Mark",
				"Vanessa",
				"Mark",
				"Vanessa",
				"Mark",
				"Vanessa",
				"Mark",
				"Vanessa",
				"Mark",
				"Vanessa",
		};
		
		int random = (int )(Math.random() * owner.length);
		//System.out.println(random);
		return owner[random];
	}

	private String dogGender() {
		String[] gender = {
			"Male",
			"Female"
		};
		
		int random = (int )(Math.random() * gender.length);
		//System.out.println(random);
		return gender[random];
	}

	private String dogGame() {
		String[] game = {
			"Class",
			"Specialty"
		};
		
		int random = (int )(Math.random() * game.length);
		//System.out.println(random);
		return game[random];
	}
	
	private String ishandler() {
		System.out.println("Method: ishandler");
		String[] ishandler = {
			"True",
			"False"
		};
		
		int random = (int )(Math.random() * ishandler.length);
		//System.out.println(random);
		return ishandler[random];
	}
	
	private String email() {
		System.out.println("Method: email");
		String[] email = {
				"dummypg001@gmail.com",
				"kanadyanp@gmail.com",
				"otsukaranz@gmail.com"
			};
			
		int random = (int )(Math.random() * email.length);
		//System.out.println(random);
		return email[random];
	}
	
	private String url() {
		System.out.println("Method: url");
		String[] url = {
				"https://buzzsharer.com/wp-content/uploads/2015/05/funny-lab-face.jpg",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLbHMwdRa74Z2q_IflZLd4m3J09u_4gMccuH-NEhJqG4elcQlH",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcr8E4n5jGPk42mxoJ7_uBc59GLhxbhPIjP8-5BmXY6iE8n_E_8Q",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY6LJcSQEv6zWxHHMtyOrG5beLUUXCS4Mp7bszQSjjJVZvbEJ2",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn1Ade4r8jC2rDEs9fYZ0rCvYGwD9t5hsIYz73Ytz2uywc0qQFeg",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0sVL-UVGBYgLvGbehMyQ9-oJYU9d0D6LBjPT4wGODOq3KwCUYKQ",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq89-6C7yZvv5Y1PtNVGFEPdbDzdMyezaiPpTRP-G4tdVrhoze",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPBQQ5OhG9k6HYTM6OY1jAnvwtptMkymSzWoPb-7rbwOqUlx0n",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdMP5aSZ3desf89AJsuWmy5deF9oFP51jaoFMxoJdn1FxPp162",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-bMYhnmI_Xa5H71unafIY8C6LF9tsNn7aLQXX4jMJnJIiju4Tg",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg3DprZDzvkCzruK8-XZCAjDtNcB9an0qGlf1v6hlnJ0nEU4tP",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCQoMxZ9ZWsFGinj87YKE2MPhVp5QQ6OshkIGlc-c-4UmrE8nX",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM9tYpH4KeOfQ3JZRek25DPhY3gXvUacXEaGN_SN2_Z0-dEUTI",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMoRhKmqNGliEjlRsND38UWRW43THZe3OMpKaF8nEiL5S40C8T",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQElW75Hyga21qvJq86VmL4TJ19en1g6FGzuvbkjOI-GXAe7HGK",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSmmWA_zrY0SUb-uKUSQ02qVE2mEWJ8Nqlrsx9Ri9D5o3UmEAv",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA4eYNeB0UxFb-CXN1wsygQDxFJlx9llO3XLUX0OrKu8fGlL0y",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjf6hNNkkuQnfGaygZh-M_r4mLlkLjKI3fAzHVHspupNfxJKHVOg",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLCyainRP07Xg4coAkbfMj05L--qdZ0-zjdiST33RkcRQ9ip0YYA",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8OD-nu8No4_osLx5CObaLdIPFO_4Iy4g4qlYuHjamcXYACAE_",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNabZBhmqglvyiRfibwTcZ2ReT4nhs-bGBQDtJB5MLbXwRqlolbw",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtdCvY0Mnipj6rqVIPfD7yOZzyBSuFsxZACXX921jiO_fYuXvehg",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKngV6wgr_s6F0KEk2MkFV7A16ObeCmFEY3s_HPhaIMqdnQCxWCw",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBbFcScwbRX-E8eK1OGmXTeJ75dp9gg_ioS8lDcnjBoMo1XJwM2w",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMYZkz53QZ8go9_wrh0QEBczlOAk6ZwTXk7gkvrFxpPCh6viar2A",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDMbZJY3q90BXLMkC6OzOwqHrWIE6fmo0gtFMQkDbNZtFlSQlnSA",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCdHBfsKGx-jkZ3VtqtmJ3JT7Cfh1V0iNJMV5Vo6yXW1O0ZzGL",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOj4xqHSGxiM-H4d9WvLFz-ewZceUUiselDV6BjbTky-H5f0bvqQ",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr4Nd39rlsvk0iA-4OzgbsX6aD_xRcsO-P5T4--OA7BsXFTBlPrQ",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNvdcKOBka12yygtm0KDzb8XTaTyeKR3Mw80kjiUzhu7aLN8E",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAQmGNUbM5qIor31T86FZGXuiVWBS76fCR1GI_v1uGKbcc3o5M5w",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQE0K3n2Xp3oZBsphj_TGJUHNAB2zdcjl7aLcqT5S71KfLxrKkKA",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLo4rp6Vbo3AHKVyFtmFy3ONYu2bc70-rsvJJ6-C5OP_AUGLmSZw",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUho6_7dGicE5vUZzaqmo05DVlsHllPvkTsQ_XU8X_aK2rvFKz",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo91Rr-B7Z56wYSDIUCZNT1Gw0Dqy94gDZykpQUJiQp8ih5bK3",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdwzZDD9bfn0VJOo0uwuKwdsxIuxSGrqlaH0iRLY3hgqvhlw7hIg",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgsvqtBBOShLyZpe23BZMje2gCM7-9nl1UV7r99MzdLSIZS2AO",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkWeMo1MFcrsCQrdBA_76c59VqVHPg_fCv6lwVXiUySPRcfBWTiQ",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2a8-SkN4un3f5eHgJz3ti_6C2-osdCq8wN8ZpOeEwGf-gjuV",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWOwp2pbX_fQH3dSdF0izYEIUrX829YB1gNc5hbWyjfGraqHjn",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVi7mzX6nyW_42BX5aYBSUXicdkaS0S91BczpAdSIrZPDCXXhT",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTidhtZ5BS5vnXQBdUQr2_eAVUITWrkvZp71-vBypXnALJZ2ig8",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7R-yowvhupPDsKrdS3A4y34qcfg7sD5boTj32YXGKZCkzlwbl",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg3EPTcLdLLz8TvVmaw8_uU0mLUUGRTgZJy2nn1KhJMXQqAK-DZg",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNntJkdeCIVvpztOIITzGBRfMkz2pGoBpYlqsfY9_vBwHgaGdM",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIQICAI0EZbJwdG1kO0cFeiWrtkAyFUtj51N4wmAD5JrSXoub14w",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6mkPuIKCVWYOL-mOnUTGTtOgf2_lsquatSXCYmtU4vEFm7MWP",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkS6B9UzlOKtEVoE-P3nN-WQuqqgxDAFbqV-u_ftrxszFVgRzdiA",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmBKHGyF5s0ixTU4kiANvKtfcUSrd6I0y5VOqRWpH-gi8_PvpNOw",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQelcxrFSBmAxAED3Kh3N7bOBY4tqDjuaz0wuNMj4L3EoUyjmAD",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCQD3CpUUuWpAOl1O1STxC7P3XjDUWefmzx-q6MmE5XB-YU1HvNw",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdIY_PgQNsJ1roa4dwmSVwVuGLGLur7A8FSsMFklq5S33GPp8L",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6k2x7HexFItqa0IGWr-QFBG4NwZPijolC7lFA6D9MjqBW7odAyg",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXiF18F_nUeqy82fqH28vLK6GUDU5Ok_fEEemFToMghcOxlr7C",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIq1yThfFGpJjAQsN29op_9HiAb4s8QWWBOO3_720k01JtCPQy",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6xP4nsCu_m8ugB4LnoTLnti0d8-m5jhJ2Oeeq0qF3VhrxmO9l",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsTCzxz51HEMRTheEtNm2NpImywTp04Org5cpKnLI91LtP9ebj8A",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbF46HAf5bJ4IEhL4Q_BIeWXs0c_dNyz7s0MXJYlp4lBNmCitKHQ",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4Vd732qjITRmewKNgm7C_-N3AyuNMt58eIJJAVjnrIEerLtT0qw",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9LS1eV6cdlVfhuXnl44W6AWbLUkE2Sp_hJcjJpVllYLDzphdhBA",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1NJXbI_A7TzgSPOoQ1b5Wg9bf4-5_L3zOWS5lukwoU_dp4aIC4g",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWT0EgQSoKSis0C-l1m507suvX8Ksef1IFjObhe-KiBA-CmWAe",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf07D6zgtDxSNjrWLJL3UVB-0w9gjc1nzBLVEblqZp3U_cEqr2",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1jnjut9QivAU9jLcroJzlt9PG7nG3NSQKmXE54YOtTfDFHzZw",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9Yn5fdhxdwI9o-s7cBPWqPebHAul96OJSaCOEOJkAxoVKiuyDGA",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ4YWidm4OCkTHV74UdmpDtHdUqOHwRAO9XomMYtIX0At9nUeo"
			};
			
		int random = (int )(Math.random() * url.length);
		//System.out.println(random);
		return url[random];
	}
}
