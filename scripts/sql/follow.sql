-- DROP TABLE IF EXISTS user_follow_show;

CREATE TABLE user_follow_show (
  user_id INTEGER REFERENCES users(user_id) NOT NULL,
  show_id INTEGER REFERENCES show(show_id) NOT NULL,
  follow_date TIMESTAMP
);

COPY user_follow_show FROM '/mnt/c/Users/Jules LAURENT/Documents/1-YNOV/2-B2/16-POSTGRESQL/csv2/user_follow_show.csv' DELIMITER ',' CSV HEADER;