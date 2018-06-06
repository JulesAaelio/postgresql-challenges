CREATE TABLE show (
  show_id integer CONSTRAINT show_key PRIMARY KEY,
  name VARCHAR(255),
  description TEXT,
  realease_year INT CHECK (realease_year <= date_part('year', CURRENT_DATE)),
  genre VARCHAR(255),
  network VARCHAR(50)
);

\set fullpath :absolutePath/show.csv
COPY show FROM :'fullpath' DELIMITER ',' CSV HEADER;