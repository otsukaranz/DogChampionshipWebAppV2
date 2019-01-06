DROP DATABASE IF EXISTS dog_championshipv2;
CREATE DATABASE dog_championshipv2;
USE dog_championshipv2;

CREATE TABLE dog_entry (
	dog_id int(11) not null auto_increment,
	dog_name  varchar(50),
	dog_owner  varchar(50),
	dog_breed  varchar(50),
	dog_group  varchar(50),
	dog_gender  varchar(50),
	dog_game  varchar(50),
	url  varchar(200),
	email  varchar(100),
	ishandler  varchar(50),
	PRIMARY KEY (dog_id)
);

ALTER TABLE dog_entry AUTO_INCREMENT = 101647;

Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Max Factor','Vanessa','Pugs','Sporting Dog','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCQD3CpUUuWpAOl1O1STxC7P3XjDUWefmzx-q6MmE5XB-YU1HvNw','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Manchu','Anjanette','Chihuahuas','Non-Sporting','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsTCzxz51HEMRTheEtNm2NpImywTp04Org5cpKnLI91LtP9ebj8A','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Niles Crane','Michaele','German Shepherd Dogs','Sporting Dog','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLo4rp6Vbo3AHKVyFtmFy3ONYu2bc70-rsvJJ6-C5OP_AUGLmSZw','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Ninja','Karena','Rottweilers','Working Dog','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLCyainRP07Xg4coAkbfMj05L--qdZ0-zjdiST33RkcRQ9ip0YYA','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Meggie','Mitsuko','Shih Tzu','Herding','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWT0EgQSoKSis0C-l1m507suvX8Ksef1IFjObhe-KiBA-CmWAe','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Leprechaun','Mark','Tibetan Terriers','Hounds','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdMP5aSZ3desf89AJsuWmy5deF9oFP51jaoFMxoJdn1FxPp162','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Lemon','Stewart','Norwegian Elkhounds','Working Dog','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn1Ade4r8jC2rDEs9fYZ0rCvYGwD9t5hsIYz73Ytz2uywc0qQFeg','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Fandango','Mark','Norwegian Elkhounds','Sporting Dog','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKngV6wgr_s6F0KEk2MkFV7A16ObeCmFEY3s_HPhaIMqdnQCxWCw','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Meggie','Rudy','American Eskimo Dogs','Non-Sporting','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXiF18F_nUeqy82fqH28vLK6GUDU5Ok_fEEemFToMghcOxlr7C','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Carlyle','Noble','Bulldogs','Working Dog','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ4YWidm4OCkTHV74UdmpDtHdUqOHwRAO9XomMYtIX0At9nUeo','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Figaro','Vanessa','Dalmatians','Toys','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLo4rp6Vbo3AHKVyFtmFy3ONYu2bc70-rsvJJ6-C5OP_AUGLmSZw','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Nana','Felipe','Rottweilers','Toys','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCQD3CpUUuWpAOl1O1STxC7P3XjDUWefmzx-q6MmE5XB-YU1HvNw','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Bald Bull','Mark','Doberman Pinschers','Non-Sporting','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9LS1eV6cdlVfhuXnl44W6AWbLUkE2Sp_hJcjJpVllYLDzphdhBA','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Chandler','Orville','Doberman Pinschers','Sporting Dog','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWT0EgQSoKSis0C-l1m507suvX8Ksef1IFjObhe-KiBA-CmWAe','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Quip','Mark','Shih Tzu','Working Dog','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY6LJcSQEv6zWxHHMtyOrG5beLUUXCS4Mp7bszQSjjJVZvbEJ2','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Norm Peterson','Annett','Dalmatians','Hounds','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNabZBhmqglvyiRfibwTcZ2ReT4nhs-bGBQDtJB5MLbXwRqlolbw','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Frederick','Natalie','Dachshunds','Herding','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6xP4nsCu_m8ugB4LnoTLnti0d8-m5jhJ2Oeeq0qF3VhrxmO9l','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Vader','Carolee','Newfoundlands','Hounds','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsTCzxz51HEMRTheEtNm2NpImywTp04Org5cpKnLI91LtP9ebj8A','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Abby','Vanessa','Boxers','Herding','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTidhtZ5BS5vnXQBdUQr2_eAVUITWrkvZp71-vBypXnALJZ2ig8','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Fauna','Tam','Miniature Pinschers','Toys','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDMbZJY3q90BXLMkC6OzOwqHrWIE6fmo0gtFMQkDbNZtFlSQlnSA','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Layla','Annett','Shiba Inu','Toys','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2a8-SkN4un3f5eHgJz3ti_6C2-osdCq8wN8ZpOeEwGf-gjuV','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Niles','Zina','Poodles','Herding','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLbHMwdRa74Z2q_IflZLd4m3J09u_4gMccuH-NEhJqG4elcQlH','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Agent 47','Vanessa','Shih Tzu','Hounds','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg3EPTcLdLLz8TvVmaw8_uU0mLUUGRTgZJy2nn1KhJMXQqAK-DZg','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Maddie','Ethan','Miniature Pinschers','Toys','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2a8-SkN4un3f5eHgJz3ti_6C2-osdCq8wN8ZpOeEwGf-gjuV','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Fiver','Mark','Dachshunds','Hounds','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgsvqtBBOShLyZpe23BZMje2gCM7-9nl1UV7r99MzdLSIZS2AO','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Carlton Banks','Tara','Mastiffs','Hounds','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1NJXbI_A7TzgSPOoQ1b5Wg9bf4-5_L3zOWS5lukwoU_dp4aIC4g','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Later','Kamilah','Tibetan Terriers','Sporting Dog','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQElW75Hyga21qvJq86VmL4TJ19en1g6FGzuvbkjOI-GXAe7HGK','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Liam','Mark','Bloodhounds','Terrier','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0sVL-UVGBYgLvGbehMyQ9-oJYU9d0D6LBjPT4wGODOq3KwCUYKQ','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Vegas','Annita','Miniature Pinschers','Working Dog','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAQmGNUbM5qIor31T86FZGXuiVWBS76fCR1GI_v1uGKbcc3o5M5w','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Lazarus','Roland','Newfoundlands','Working Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtdCvY0Mnipj6rqVIPfD7yOZzyBSuFsxZACXX921jiO_fYuXvehg','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Celia','Terrie','Tibetan Terriers','Working Dog','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo91Rr-B7Z56wYSDIUCZNT1Gw0Dqy94gDZykpQUJiQp8ih5bK3','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Benji','Mark','Cane Corso','Toys','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf07D6zgtDxSNjrWLJL3UVB-0w9gjc1nzBLVEblqZp3U_cEqr2','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Faithful','Mark','Bulldogs','Working Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjf6hNNkkuQnfGaygZh-M_r4mLlkLjKI3fAzHVHspupNfxJKHVOg','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Ace','Vanessa','Bloodhounds','Terrier','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDMbZJY3q90BXLMkC6OzOwqHrWIE6fmo0gtFMQkDbNZtFlSQlnSA','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Beethoven','Vanessa','German Shepherd Dogs','Terrier','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8OD-nu8No4_osLx5CObaLdIPFO_4Iy4g4qlYuHjamcXYACAE_','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Calvin','Natalie','Cane Corso','Working Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgsvqtBBOShLyZpe23BZMje2gCM7-9nl1UV7r99MzdLSIZS2AO','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Nova','Carolee','Mastiffs','Working Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQE0K3n2Xp3oZBsphj_TGJUHNAB2zdcjl7aLcqT5S71KfLxrKkKA','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Finn','Zina','Mastiffs','Terrier','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAQmGNUbM5qIor31T86FZGXuiVWBS76fCR1GI_v1uGKbcc3o5M5w','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Adrian Monk','Mark','Pugs','Hounds','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkWeMo1MFcrsCQrdBA_76c59VqVHPg_fCv6lwVXiUySPRcfBWTiQ','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Nit Pik','Anjanette','Cane Corso','Hounds','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo91Rr-B7Z56wYSDIUCZNT1Gw0Dqy94gDZykpQUJiQp8ih5bK3','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Leonard McCoy','Vanessa','Tibetan Terriers','Terrier','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIq1yThfFGpJjAQsN29op_9HiAb4s8QWWBOO3_720k01JtCPQy','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Fry','Lionel','Newfoundlands','Terrier','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf07D6zgtDxSNjrWLJL3UVB-0w9gjc1nzBLVEblqZp3U_cEqr2','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Nightwolf','Mitsuko','Doberman Pinschers','Working Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdIY_PgQNsJ1roa4dwmSVwVuGLGLur7A8FSsMFklq5S33GPp8L','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Alexander','Vanessa','Pugs','Toys','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLo4rp6Vbo3AHKVyFtmFy3ONYu2bc70-rsvJJ6-C5OP_AUGLmSZw','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Adele','Mark','Newfoundlands','Working Dog','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNabZBhmqglvyiRfibwTcZ2ReT4nhs-bGBQDtJB5MLbXwRqlolbw','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Nani','Noble','Cane Corso','Toys','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPBQQ5OhG9k6HYTM6OY1jAnvwtptMkymSzWoPb-7rbwOqUlx0n','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Master Chief','Karol','Bloodhounds','Sporting Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdIY_PgQNsJ1roa4dwmSVwVuGLGLur7A8FSsMFklq5S33GPp8L','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Action','Hassan','Dalmatians','Hounds','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-bMYhnmI_Xa5H71unafIY8C6LF9tsNn7aLQXX4jMJnJIiju4Tg','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Flounder','Vanessa','Poodles','Terrier','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMoRhKmqNGliEjlRsND38UWRW43THZe3OMpKaF8nEiL5S40C8T','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Bear','Mark','Bulldogs','Non-Sporting','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLbHMwdRa74Z2q_IflZLd4m3J09u_4gMccuH-NEhJqG4elcQlH','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Cali','Natalie','German Shepherd Dogs','Sporting Dog','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6k2x7HexFItqa0IGWr-QFBG4NwZPijolC7lFA6D9MjqBW7odAyg','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Bean','Mitsuko','Bulldogs','Non-Sporting','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1jnjut9QivAU9jLcroJzlt9PG7nG3NSQKmXE54YOtTfDFHzZw','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Newman','Vanessa','Norwegian Elkhounds','Non-Sporting','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1NJXbI_A7TzgSPOoQ1b5Wg9bf4-5_L3zOWS5lukwoU_dp4aIC4g','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Captain Olimar','Delinda','German Shepherd Dogs','Herding','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9Yn5fdhxdwI9o-s7cBPWqPebHAul96OJSaCOEOJkAxoVKiuyDGA','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Fox Mulder','Tara','Bloodhounds','Working Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1jnjut9QivAU9jLcroJzlt9PG7nG3NSQKmXE54YOtTfDFHzZw','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Lexi','Mark','Bloodhounds','Non-Sporting','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn1Ade4r8jC2rDEs9fYZ0rCvYGwD9t5hsIYz73Ytz2uywc0qQFeg','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Lemon','Cory','Retrievers','Herding','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq89-6C7yZvv5Y1PtNVGFEPdbDzdMyezaiPpTRP-G4tdVrhoze','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Bandit','Mark','Shiba Inu','Non-Sporting','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMYZkz53QZ8go9_wrh0QEBczlOAk6ZwTXk7gkvrFxpPCh6viar2A','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Carlyle','Mark','Bulldogs','Working Dog','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr4Nd39rlsvk0iA-4OzgbsX6aD_xRcsO-P5T4--OA7BsXFTBlPrQ','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Mafia','Aleta','Bulldogs','Toys','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-bMYhnmI_Xa5H71unafIY8C6LF9tsNn7aLQXX4jMJnJIiju4Tg','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Ninja','Annett','Chihuahuas','Terrier','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQelcxrFSBmAxAED3Kh3N7bOBY4tqDjuaz0wuNMj4L3EoUyjmAD','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Catcher','Ethan','Bloodhounds','Terrier','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWT0EgQSoKSis0C-l1m507suvX8Ksef1IFjObhe-KiBA-CmWAe','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Celia','Zina','American Eskimo Dogs','Working Dog','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf07D6zgtDxSNjrWLJL3UVB-0w9gjc1nzBLVEblqZp3U_cEqr2','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Fauna','Roland','Bulldogs','Working Dog','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNntJkdeCIVvpztOIITzGBRfMkz2pGoBpYlqsfY9_vBwHgaGdM','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Chance','Cherryl','Bloodhounds','Sporting Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIq1yThfFGpJjAQsN29op_9HiAb4s8QWWBOO3_720k01JtCPQy','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Flynn','Vanessa','French Bulldogs','Terrier','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMoRhKmqNGliEjlRsND38UWRW43THZe3OMpKaF8nEiL5S40C8T','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Frank West','Felipe','Retrievers','Non-Sporting','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNabZBhmqglvyiRfibwTcZ2ReT4nhs-bGBQDtJB5MLbXwRqlolbw','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Quip','Tamela','Dalmatians','Non-Sporting','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMoRhKmqNGliEjlRsND38UWRW43THZe3OMpKaF8nEiL5S40C8T','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Alton','Michaele','American Eskimo Dogs','Hounds','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcr8E4n5jGPk42mxoJ7_uBc59GLhxbhPIjP8-5BmXY6iE8n_E_8Q','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Queen','Tamela','Chihuahuas','Terrier','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcr8E4n5jGPk42mxoJ7_uBc59GLhxbhPIjP8-5BmXY6iE8n_E_8Q','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Lexi','Annita','French Bulldogs','Toys','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmBKHGyF5s0ixTU4kiANvKtfcUSrd6I0y5VOqRWpH-gi8_PvpNOw','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Amelia','Mark','French Bulldogs','Herding','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9Yn5fdhxdwI9o-s7cBPWqPebHAul96OJSaCOEOJkAxoVKiuyDGA','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Cabernet','Mark','Beagles','Working Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBbFcScwbRX-E8eK1OGmXTeJ75dp9gg_ioS8lDcnjBoMo1XJwM2w','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Liam','Annita','Dachshunds','Hounds','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn1Ade4r8jC2rDEs9fYZ0rCvYGwD9t5hsIYz73Ytz2uywc0qQFeg','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Adrian Monk','Mark','Chihuahuas','Hounds','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWT0EgQSoKSis0C-l1m507suvX8Ksef1IFjObhe-KiBA-CmWAe','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Laser','Felipe','German Shepherd Dogs','Hounds','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQElW75Hyga21qvJq86VmL4TJ19en1g6FGzuvbkjOI-GXAe7HGK','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Addie','Mark','Rottweilers','Hounds','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjf6hNNkkuQnfGaygZh-M_r4mLlkLjKI3fAzHVHspupNfxJKHVOg','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Meggie','Aleta','Miniature Pinschers','Hounds','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDMbZJY3q90BXLMkC6OzOwqHrWIE6fmo0gtFMQkDbNZtFlSQlnSA','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Leia','Mark','Miniature Pinschers','Terrier','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQE0K3n2Xp3oZBsphj_TGJUHNAB2zdcjl7aLcqT5S71KfLxrKkKA','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Chaos','Hassan','Dalmatians','Working Dog','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf07D6zgtDxSNjrWLJL3UVB-0w9gjc1nzBLVEblqZp3U_cEqr2','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Macbeth','Delinda','Cane Corso','Sporting Dog','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBbFcScwbRX-E8eK1OGmXTeJ75dp9gg_ioS8lDcnjBoMo1XJwM2w','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Benji','Vanessa','German Shepherd Dogs','Herding','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-bMYhnmI_Xa5H71unafIY8C6LF9tsNn7aLQXX4jMJnJIiju4Tg','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Alpha','Mitsuko','Beagles','Hounds','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2a8-SkN4un3f5eHgJz3ti_6C2-osdCq8wN8ZpOeEwGf-gjuV','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Meeko','Natalie','Bloodhounds','Herding','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg3DprZDzvkCzruK8-XZCAjDtNcB9an0qGlf1v6hlnJ0nEU4tP','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Balrog','Aleta','Rottweilers','Hounds','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWOwp2pbX_fQH3dSdF0izYEIUrX829YB1gNc5hbWyjfGraqHjn','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Bailey','Cherryl','Pugs','Non-Sporting','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWT0EgQSoKSis0C-l1m507suvX8Ksef1IFjObhe-KiBA-CmWAe','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Beau','Vanessa','Retrievers','Sporting Dog','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTidhtZ5BS5vnXQBdUQr2_eAVUITWrkvZp71-vBypXnALJZ2ig8','otsukaranz@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Beans','Natalie','Bulldogs','Terrier','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6xP4nsCu_m8ugB4LnoTLnti0d8-m5jhJ2Oeeq0qF3VhrxmO9l','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Abigail','Vanessa','Bulldogs','Herding','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDMbZJY3q90BXLMkC6OzOwqHrWIE6fmo0gtFMQkDbNZtFlSQlnSA','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Carmen Sandiego','Karena','Newfoundlands','Sporting Dog','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWT0EgQSoKSis0C-l1m507suvX8Ksef1IFjObhe-KiBA-CmWAe','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Beast','Orville','Dachshunds','Sporting Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQElW75Hyga21qvJq86VmL4TJ19en1g6FGzuvbkjOI-GXAe7HGK','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Lacie','Vanessa','Chow Chows','Sporting Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUho6_7dGicE5vUZzaqmo05DVlsHllPvkTsQ_XU8X_aK2rvFKz','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Baxter','Aleta','Shiba Inu','Herding','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdIY_PgQNsJ1roa4dwmSVwVuGLGLur7A8FSsMFklq5S33GPp8L','kanadyanp@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Adalyn','Mark','Chihuahuas','Sporting Dog','Male','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ4YWidm4OCkTHV74UdmpDtHdUqOHwRAO9XomMYtIX0At9nUeo','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Fawful','Karol','Retrievers','Herding','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNabZBhmqglvyiRfibwTcZ2ReT4nhs-bGBQDtJB5MLbXwRqlolbw','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Vegas','Mark','French Bulldogs','Herding','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSmmWA_zrY0SUb-uKUSQ02qVE2mEWJ8Nqlrsx9Ri9D5o3UmEAv','dummypg001@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Captain Falcon','Delinda','Chihuahuas','Sporting Dog','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6xP4nsCu_m8ugB4LnoTLnti0d8-m5jhJ2Oeeq0qF3VhrxmO9l','dummypg001@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Forester','Kamilah','Chow Chows','Working Dog','Female','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLbHMwdRa74Z2q_IflZLd4m3J09u_4gMccuH-NEhJqG4elcQlH','kanadyanp@gmail.com','False');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Neo','Mark','Tibetan Terriers','Terrier','Male','Specialty','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmBKHGyF5s0ixTU4kiANvKtfcUSrd6I0y5VOqRWpH-gi8_PvpNOw','otsukaranz@gmail.com','True');
Insert into dog_entry (dog_name,dog_owner,dog_breed,dog_group,dog_gender,dog_game,url,email,ishandler) values('Flynn','Vanessa','French Bulldogs','Toys','Female','Class','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPBQQ5OhG9k6HYTM6OY1jAnvwtptMkymSzWoPb-7rbwOqUlx0n','kanadyanp@gmail.com','True');

CREATE TABLE dog_show (
	dog_id int(11) not null,
	dayOne varchar(10),
	dayTwo varchar(10),
	dayThree varchar(10),
	PRIMARY KEY (dog_id)
);

Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101647','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101648','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101649','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101650','True','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101651','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101652','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101653','True','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101654','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101655','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101656','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101657','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101658','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101659','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101660','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101661','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101662','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101663','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101664','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101665','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101666','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101667','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101668','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101669','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101670','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101671','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101672','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101673','True','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101674','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101675','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101676','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101677','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101678','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101679','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101680','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101681','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101682','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101683','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101684','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101685','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101686','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101687','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101688','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101689','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101690','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101691','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101692','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101693','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101694','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101695','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101696','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101697','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101698','True','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101699','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101700','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101701','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101702','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101703','True','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101704','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101705','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101706','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101707','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101708','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101709','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101710','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101711','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101712','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101713','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101714','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101715','True','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101716','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101717','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101718','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101719','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101720','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101721','True','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101722','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101723','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101724','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101725','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101726','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101727','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101728','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101729','True','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101730','False','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101731','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101732','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101733','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101734','True','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101735','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101736','True','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101737','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101738','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101739','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101740','True','True','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101741','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101742','False','False','False');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101743','True','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101744','False','True','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101745','False','False','True');
Insert into dog_show (dog_id, dayOne, dayTwo, dayThree) values('101746','True','False','True');

DROP DATABASE IF EXISTS tomcat_realm_for_dog_championship;
CREATE DATABASE tomcat_realm_for_dog_championship;
USE tomcat_realm_for_dog_championship;
CREATE TABLE tomcat_users (
	user_name varchar(20) NOT NULL PRIMARY KEY,
	password varchar(32) NOT NULL
);
CREATE TABLE tomcat_roles (
	role_name varchar(20) NOT NULL PRIMARY KEY
);
CREATE TABLE tomcat_users_roles (
	user_name varchar(20) NOT NULL,
	role_name varchar(20) NOT NULL,
	PRIMARY KEY (user_name, role_name),
	CONSTRAINT tomcat_users_roles_foreign_key_1 FOREIGN KEY (user_name) REFERENCES tomcat_users (user_name),
	CONSTRAINT tomcat_users_roles_foreign_key_2 FOREIGN KEY (role_name) REFERENCES tomcat_roles (role_name)
);
INSERT INTO tomcat_users (user_name, password) VALUES ('Mark', 'Mark');
INSERT INTO tomcat_users (user_name, password) VALUES ('Makoy', 'Makoy');
INSERT INTO tomcat_users (user_name, password) VALUES ('Vanessa', 'Vanessa');

INSERT INTO tomcat_roles (role_name) VALUES ('handler');
INSERT INTO tomcat_roles (role_name) VALUES ('owner');

INSERT INTO tomcat_users_roles (user_name, role_name) VALUES ('Mark', 'handler');
INSERT INTO tomcat_users_roles (user_name, role_name) VALUES ('Makoy', 'owner');
INSERT INTO tomcat_users_roles (user_name, role_name) VALUES ('Vanessa', 'handler');

COMMIT;

USE mysql;
CREATE USER 'realm_access'@'localhost' IDENTIFIED BY 'realmpass';
GRANT SELECT ON tomcat_realm_for_dog_championship.* TO realm_access@localhost;