package ca.markp.classes;

public class Dummy {
	private String name;
	private String owner;
	private String breed;
	private String group;
	private String gender;
	private String game;
	
	

	public Dummy() {
		super();
		this.name = dogName();
		this.owner = dogOwner();
		this.breed = dogBreed();
		this.group = dogGroup();
		this.gender = dogGender();
		this.game = dogGame();
	}

	
	
	@Override
	public String toString() {
		return "'"+name+"','"+owner+"','"+breed+"','"+group+"','"+gender+"','"+game+"'";
	}



	public Dummy(String name, String owner, String breed, String group, String gender, String game) {
		super();
		this.name = name;
		this.owner = owner;
		this.breed = breed;
		this.group = group;
		this.gender = gender;
		this.game = game;
	}
	

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
		String[] breed = {
				"Retrievers (Labrador)",
				"German Shepherd Dogs",
				"Retrievers (Golden)",
				"French Bulldogs",
				"Bulldogs",
				"Beagles",
				"Poodles",
				"Rottweilers",
				"Yorkshire Terriers",
				//"Pointers (German Shorthaired)",
				"Boxers",
				"Siberian Huskies",
				"Dachshunds",
				"Great Danes",
				//"Pembroke Welsh Corgis",
				"Doberman Pinschers",
				//"Australian Shepherds",
				//"Miniature Schnauzers",
				//"Cavalier King Charles Spaniels",
				"Shih Tzu",
				"Boston Terriers",
				"Pomeranians",
				"Havanese",
				"Shetland Sheepdogs",
				"Bernese Mountain Dogs",
				//"Brittanys",
				//"Spaniels (English Springer)",
				"Mastiffs",
				//"Spaniels (Cocker)",
				//"Vizslas",
				"Pugs",
				"Chihuahuas",
				"Maltese",
				//"Weimaraners",
				"Miniature American Shepherds",
				"Newfoundlands",
				"Cane Corso",
				"Border Collies",
				//"Basset Hounds",
				//"Collies",
				//"Rhodesian Ridgebacks",
				//"West Highland White Terriers",
				//"Retrievers (Chesapeake Bay)",
				"Belgian Malinois",
				"Shiba Inu",
				"Bichons Frises",
				"Akitas",
				"St. Bernards",
				"Soft Coated Wheaten Terriers",
				"Bloodhounds",
				"Bullmastiffs",
				//"Spaniels (English Cocker)",
				//"Papillons",
				"Portuguese Water Dogs",
				"Airedale Terriers",
				"Australian Cattle Dogs",
				//"Samoyeds",
				"Scottish Terriers",
				"Alaskan Malamutes",
				"Bull Terriers",
				"Whippets",
				//"Pointers (German Wirehaired)",
				"Dalmatians",
				"Chinese Shar-Pei",
				"Wirehaired Pointing Griffons",
				"Great Pyrenees",
				//"Dogues de Bordeaux",
				//"Cardigan Welsh Corgis",
				//"Cairn Terriers",
				"Old English Sheepdogs",
				"Miniature Pinschers",
				"Setters (Irish)",
				"Irish Wolfhounds",
				"Italian Greyhounds",
				//"Greater Swiss Mountain Dogs",
				"Chow Chows",
				"Lhasa Apsos",
				"Russell Terriers",
				"Chinese Crested",
				"Giant Schnauzers",
				"Coton de Tulear",
				"Staffordshire Bull Terriers",
				"American Staffordshire Terriers",
				//"Basenjis",
				//"Bouviers des Flandres",
				//"Anatolian Shepherd Dogs",
				//"Keeshonden",
				"Pekingese",
				//"Retrievers (Nova Scotia Duck Tolling)",
				"Standard Schnauzers",
				"Norwegian Elkhounds",
				"Border Terriers",
				"Afghan Hounds",
				//"Brussels Griffons",
				//"Setters (English)",
				//"Retrievers (Flat-Coated)",
				//"Rat Terriers",
				//"Spaniels (Boykin)",
				//"Fox Terriers (Wire)",
				//"Leonbergers",
				"Tibetan Terriers",
				"Borzois",
				"Belgian Tervuren",
				"Setters (Gordon)",
				"Norwich Terriers",
				//"Silky Terriers",
				//"Neapolitan Mastiffs",
				"Japanese Chin",
				"Welsh Terriers",
				//"Schipperkes",
				//"Spinoni Italiani",
				"Toy Fox Terriers",
				"Pointers",
				"Irish Terriers",
				"Miniature Bull Terriers",
				"Black Russian Terriers",
				//"Lagotti Romagnoli",
				"American Eskimo Dogs",
				//"Parson Russell Terriers",
				
		                                  
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
				"Niki",
				"Mariel",
				"Alice",
				"Olivia",
				"Kristine",
				"Joella",
				"Johnson",
				"Lashaunda",
				"Rina",
				"Signe",
				"Catina",
				"Gertrud",
				"Colton",
				"Darcey",
				"Beth",
				"Nicola",
				"Toshia",
				"Myrta",
				"Burl",
				"Simon",
				"Kandra"
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
	
	
}
