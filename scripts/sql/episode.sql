CREATE  TABLE episode (
  episode_id INTEGER CONSTRAINT episode_key PRIMARY KEY,
  show_id INTEGER REFERENCES show(show_id) NOT NULL,
  season INT NOT NULL,
  number INT NOT NULL,
  date TIMESTAMP
);

\set fullpath :absolutePath/episode.csv
COPY episode FROM :'fullpath' DELIMITER ',' CSV HEADER;