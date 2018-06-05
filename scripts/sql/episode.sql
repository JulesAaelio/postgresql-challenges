CREATE  TABLE episode (
  episode_id INTEGER CONSTRAINT episode_key PRIMARY KEY,
  show_id INTEGER REFERENCES show(show_id) NOT NULL,
  season INT NOT NULL,
  number INT NOT NULL,
  date TIMESTAMP
);


COPY episode FROM '/mnt/c/Users/Jules LAURENT/Documents/1-YNOV/2-B2/16-POSTGRESQL/csv2/episode.csv' DELIMITER ',' CSV HEADER;