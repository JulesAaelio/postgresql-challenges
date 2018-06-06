CREATE  TABLE episode (
  episode_id INTEGER CONSTRAINT episode_key PRIMARY KEY,
  show_id INTEGER REFERENCES show(show_id) NOT NULL,
  season INT NOT NULL,
  number INT NOT NULL,
  date TIMESTAMP
);


COPY episode FROM :absolutePath/episode.csv' DELIMITER ',' CSV HEADER;