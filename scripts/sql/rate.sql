-- DROP TABLE IF EXISTS user_rate_show CASCADE;

CREATE TABLE user_rate_show (
  user_id INTEGER REFERENCES users(user_id) NOT NULL,
  show_id INTEGER REFERENCES show(show_id) NOT NULL,
  rating INTEGER CHECK (rating <= 5 AND rating >= 0) NOT NULL,
  rating_date TIMESTAMP
);

COPY user_rate_show FROM '/mnt/c/Users/Jules LAURENT/Documents/1-YNOV/2-B2/16-POSTGRESQL/csv2/user_rate_show.csv' DELIMITER ',' CSV HEADER;