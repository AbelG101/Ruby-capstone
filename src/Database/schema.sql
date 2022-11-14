CREATE TABLE books (
  id integer GENERATED ALWAYS AS IDENTITY,
  genre_id integer,
  author_id integer,
  source_id integer,
  label_id integer,
  publish_date date,
  archived bit,
  publisher varchar,
  cover_state varchar,
  PRIMARY KEY (id),
  FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE,
  FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE,
  FOREIGN KEY (source_id) REFERENCES sources(id) ON DELETE CASCADE,
  FOREIGN KEY (label_id) REFERENCES labels(id) ON DELETE CASCADE
);