DROP ROLE IF EXISTS :new_username;
CREATE ROLE :new_username LOGIN PASSWORD :new_password;
GRANT reader TO :new_username;
