
insert into singers (name)
values ('Ariana Grande'),
		('Taylor Swift'),
		('Ed Sheeran'),
		('Beyonce'),
		('Selena Gomez'),
		('Lady Gaga'),
		('Adele'),
		('Rihanna');
		
insert into genres (name)
values ('pop'),
		('R&B'),
		('pop-rock'),
		('folk-pop'),
		('electropop'),
		('pop soul');
		
				
insert into genres_singers (genre_id, singer_id)
values (1,1),
		(2,1),
		(3,2),
		(4,3),
		(1,3),
		(2,4),
		(5,5),
		(1,5),
		(5,6),
		(1,6),
		(6,7),
		(2,8);
		
	
insert into albums (name, year)
values ('Sweetener', 2018),
		('Positions', 2020),
		('Fearless', 2008),
		('5', 2015),
		('Renaissance', 2022),
		('Rare', 2020),
		('Artpop', 2013),
		('30', 2021),
		('Loud', 2010);




insert into albums_singers (album_id, singer_id)
values (1,1),
		(2,1),
		(3,2),
		(4,3),
		(5,4),
		(6,5),
		(7,6),
		(8,7),
		(9,8);

	
insert into songs (name, album_id, duration)
values ('God is a woman', 1, 240),
		('Blazed', 1, 197),
		('My hair', 2, 158),
		('Off the table', 2, 240),
		('You belong with me', 3, 233),
		('Tell me why', 3, 200),
		('Cold coffee', 4, 254),
		('Family', 4, 255),
		('Break my soul', 5, 278),
		('Move', 5, 203),
		('Ring', 6, 149),
		('Let me get me', 6, 189),
		('Aura', 7, 234),
		('My little love', 8, 389),
		('I drink wine', 8, 376),
		('Easy on me', 8, 224),
		('What is my name?', 9, 263),
		('Fading', 9, 200);
		
insert into digest (name, year, song_id)	
values ('digest_1', 2018, 2),
		('digest_1', 2018, 6),
		('digest_1', 2018, 7),
		('digest_2', 2015, 8),
		('digest_2', 2015, 13),
		('digest_3', 2011, 18),
		('digest_4', 2020, 3),
		('digest_4', 2020, 10),
		('digest_5', 2009, 6),
		('digest_6', 2021, 9),
		('digest_6', 2021, 10),
		('digest_6', 2021, 15),
		('digest_7', 2014, 13),
		('digest_8', 2019, 1),
		('digest_8', 2019, 7);
		

		
		
		
		