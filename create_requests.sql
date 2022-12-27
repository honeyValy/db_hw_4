CREATE TABLE singers (
	id Serial PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE genres (
	id Serial PRIMARY KEY,
	name VARCHAR(60) unique NOT NULL
);

CREATE TABLE genres_singers (
	id Serial PRIMARY KEY,
	genre_id INTEGER REFERENCES genres(id),
	singer_id INTEGER REFERENCES singers(id) 
);

CREATE TABLE albums (
	id Serial PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT null check(year > 1900)
);


CREATE TABLE albums_singers (
	id Serial PRIMARY KEY,
	album_id INTEGER REFERENCES albums(id),
	singer_id INTEGER REFERENCES singers(id) 
);

create table songs (
	id serial primary key,
	name varchar(100) not null,
	duration integer not null check(duration > 0),
	album_id INTEGER REFERENCES albums(id)    
);

create table digests (
	id Serial primary key,
	name varchar(60) not null,
	year integer not null check(year > 2000)
);


create table digests_songs (
	id Serial primary key,
	song_id integer references songs(id),
	digest_id integer references digests(id)
);
