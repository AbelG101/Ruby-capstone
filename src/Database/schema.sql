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

