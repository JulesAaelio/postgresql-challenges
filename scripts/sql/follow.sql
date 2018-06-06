-- DROP TABLE IF EXISTS user_follow_show;

CREATE TABLE user_follow_show (
  user_id INTEGER REFERENCES users(user_id),
  show_id INTEGER REFERENCES show(show_id),
  follow_date TIMESTAMP
);

COPY user_follow_show FROM :absolutePath +'/user_follow_show.csv' DELIMITER ',' CSV HEADER;