CREATE TABLE IF NOT EXISTS genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL UNIQUE
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

CREATE TABLE IF NOT EXISTS albums (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year_of_release INT CHECK (year_of_release >= 1900 AND year_of_release <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE IF NOT EXISTS tracks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    duration INTERVAL NOT NULL CHECK (duration > INTERVAL '0 seconds' AND duration <= INTERVAL '1 hour'),
    albums_id INT NOT NULL REFERENCES albums(id),
    CONSTRAINT unique_track_album UNIQUE (name, albums_id)
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
    year_of_release INT NOT NULL CHECK (year_of_release >= 1900 AND year_of_release <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE IF NOT EXISTS TracksCollection (
    id SERIAL PRIMARY KEY,
    tracks_id INT NOT NULL REFERENCES tracks(id),
    collection_id INT NOT NULL REFERENCES collection(id),
    CONSTRAINT unique_track_collection UNIQUE (tracks_id, collection_id)
);
