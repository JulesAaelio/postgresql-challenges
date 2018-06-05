CREATE TABLE  show (
  show_id INTEGER CONSTRAINT show_key PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  realease_year INT CHECK (realease_year <= date_part('year', CURRENT_DATE)),
  genre VARCHAR(255),
  network VARCHAR(50)
);

COPY show FROM '/mnt/c/Users/Jules LAURENT/Documents/1-YNOV/2-B2/16-POSTGRESQL/csv2/show.csv' DELIMITER ',' CSV HEADER;