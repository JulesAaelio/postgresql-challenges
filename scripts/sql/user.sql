-- DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
  user_id SERIAL CONSTRAINT user_key PRIMARY KEY,
  registration_timestamp TIMESTAMP NOT NULL,
  firstname VARCHAR(50) NOT NULL,
  lastname VARCHAR(50) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255)
);

COPY users FROM '/mnt/c/Users/Jules LAURENT/Documents/1-YNOV/2-B2/16-POSTGRESQL/csv2/user.csv' DELIMITER ',' CSV HEADER;