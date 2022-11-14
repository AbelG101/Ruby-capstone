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
