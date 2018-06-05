-- DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
  user_id integer CONSTRAINT user_key PRIMARY KEY,
  registration_date TIMESTAMP,
  firstname VARCHAR(255),
  lastname VARCHAR(255),
  email VARCHAR(255) UNIQUE CHECK (email LIKE '%@%'),
  password VARCHAR(255)
);

COPY users FROM '/mnt/c/Users/Jules LAURENT/Documents/1-YNOV/2-B2/16-POSTGRESQL/csv2/user.csv' DELIMITER ',' CSV HEADER;