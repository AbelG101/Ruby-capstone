CREATE DATABASE catalog_of_my_things;

CREATE TABLE items (
	id int GENERATED ALWAYS AS IDENTITY,
	genre_id integer,
	author_id integer,
	source_id integer,
	label_id integer,
	publish_date date,
	archived bit,
	PRIMARY KEY (id),
	FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE,
	FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE,
	FOREIGN KEY (source_id) REFERENCES sources(id) ON DELETE CASCADE,
	FOREIGN KEY (label_id) REFERENCES labels(id) ON DELETE CASCADE
);

CREATE TABLE books (
  id integer GENERATED ALWAYS AS IDENTITY,
  publisher varchar,
  cover_state varchar,
  label_id integer,
  item_id integer,
  PRIMARY KEY (id),
  FOREIGN KEY (label_id) REFERENCES labels(id) ON DELETE CASCADE,
  FOREIGN KEY (item_id) REFERENCES items(id) ON DELETE CASCADE
);

CREATE TABLE labels (
  id integer GENERATED ALWAYS AS IDENTITY,
  title varchar,
  color varchar,
  book_id integer,
  PRIMARY KEY (id),
  FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE
);

CREATE TABLE MUSICALBUM (
  id integer GENERATED ALWAYS AS IDENTITY,
  on_spotify BOOLEAN,
  genre_id integer,
  item_id integer,
  PRIMARY KEY (id),
  FOREIGN KEY(genre_id) REFERENCES GENRE (id) ON DELETE CASCADE,
  FOREIGN KEY (item_id) REFERENCES items(id) ON DELETE CASCADE
);

CREATE TABLE GENRE (
  id integer GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100),
  music_id integer,
  PRIMARY KEY (id),
  FOREIGN KEY(music_id) REFERENCES MUSICALBUM (id) ON DELETE CASCADE,
);

CREATE TABLE authors (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  FOREIGN KEY(item_id) REFERENCES item(id)
);

CREATE TABLE games (
    id  INT,
    multiplayer BOOLEAN,
    last_played_at DATE,
    PRIMARY KEY (id),
    FOREIGN KEY(game_id) REFERENCES games(id),
    FOREIGN KEY(author_id) REFERENCES authors(id)
)

CREATE TABLE source(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE movies(
  id SERIAL PRIMARY KEY,
  type_of_item text
  label_id INTEGER,
  genre_id INTEGER,
  author_id INTEGER,
  source_id INTEGER,
  publish_date DATE,
  archived BOOLEAN,
  SILET BOOLEAN,
  FOREIGN KEY (label_id) REFERENCES labels(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id),
  FOREIGN KEY (author_id) REFERENCES authors(id),
  FOREIGN KEY (source_id) REFERENCES sources(id)
);

