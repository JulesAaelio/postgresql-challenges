CREATE TABLE show (
  show_id integer CONSTRAINT show_key PRIMARY KEY,
  name VARCHAR(255),
  description TEXT,
  realease_year INT CHECK (realease_year <= date_part('year', CURRENT_DATE)),
  genre VARCHAR(255),
  network VARCHAR(50)
);

COPY show FROM :absolutePath + '/show.csv' DELIMITER ',' CSV HEADER;