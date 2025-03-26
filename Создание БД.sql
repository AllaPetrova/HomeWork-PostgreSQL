CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS executor (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);


CREATE TABLE IF NOT EXISTS GenreExecutor (
	id SERIAL PRIMARY KEY,
	genre_id INT NOT NULL REFERENCES genre(id),
    executor_id INT NOT NULL REFERENCES executor(id),
    CONSTRAINT unique_genre_executor UNIQUE (genre_id, executor_id) 
);


CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	вuration INT NOT NULL,  
    albums_id INT NOT NULL REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year_of_release INT
);


CREATE TABLE IF NOT EXISTS ExecutorAlbums (
	id SERIAL PRIMARY KEY,
    executor_id INT NOT NULL REFERENCES executor(id),
    albums_id INT NOT NULL REFERENCES albums(id),
    CONSTRAINT unique_executor_album UNIQUE (executor_id, albums_id)
);


CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year_of_release INT NOT NULL
);


CREATE TABLE IF NOT EXISTS TracksCollection (
	id SERIAL PRIMARY KEY,
    tracks_ID INT NOT NULL REFERENCES tracks(id),
    collection_id INT NOT NULL REFERENCES collection(id),
    CONSTRAINT unique_track_collection UNIQUE (tracks_id, collection_id)
);
