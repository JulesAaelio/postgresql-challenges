-- DROP TABLE IF EXISTS user_follow_show;

CREATE TABLE user_follow_show (
  user_id INTEGER REFERENCES users(user_id),
  show_id INTEGER REFERENCES show(show_id),
  follow_date TIMESTAMP
);

ALTER TABLE "user_follow_show" DISABLE TRIGGER ALL;

\set fullpath :absolutePath/user_follow_show.csv
COPY user_follow_show FROM :'fullpath' DELIMITER ',' CSV HEADER;

ALTER TABLE "user_follow_show" ENABLE TRIGGER ALL;