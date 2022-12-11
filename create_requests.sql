CREATE TABLE singers (
	id Serial PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE genres (
	id Serial PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE genres_singers (
	id Serial PRIMARY KEY,
	genre_id INTEGER REFERENCES genres(id),
	singer_id INTEGER REFERENCES singers(id) 
);

CREATE TABLE albums (
	id Serial PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
);


CREATE TABLE albums_singers (
	id Serial PRIMARY KEY,
	album_id INTEGER REFERENCES albums(id),
	singer_id INTEGER REFERENCES singers(id) 
);

CREATE TABLE songs (
	id Serial PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES albums(id)
);

CREATE TABLE digest (
	id Serial PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL,
	song_id INTEGER REFERENCES songs(id)
);