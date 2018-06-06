-- DROP TABLE IF EXISTS user_rate_show CASCADE;

CREATE TABLE user_rate_show (
  user_id INTEGER REFERENCES users(user_id),
  show_id INTEGER REFERENCES show(show_id),
  rating INTEGER CHECK (rating <= 5 AND rating >= 0),
  rate_date TIMESTAMP
);

ALTER TABLE "user_rate_show" DISABLE TRIGGER ALL;

\set fullpath :absolutePath/user_rate_show.csv
COPY user_rate_show FROM :'fullpath' DELIMITER ',' CSV HEADER;


ALTER TABLE "user_rate_show" ENABLE TRIGGER ALL;