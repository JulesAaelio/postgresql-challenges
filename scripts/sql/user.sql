-- DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
  user_id integer CONSTRAINT user_key PRIMARY KEY,
  registration_date TIMESTAMP,
  firstname VARCHAR(255),
  lastname VARCHAR(255),
  email VARCHAR(255) UNIQUE CHECK (email LIKE '%@%'),
  password VARCHAR(255)
);

\set fullpath :absolutePath/user.csv
COPY users FROM :'fullpath' DELIMITER ',' CSV HEADER;