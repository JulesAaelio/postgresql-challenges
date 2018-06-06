COPY episode TO :backupPath/episode.csv' DELIMITER ',' CSV HEADER;
COPY show TO :backupPath/show.csv' DELIMITER ',' CSV HEADER;
COPY users TO :backupPath/users.csv' DELIMITER ',' CSV HEADER;
COPY user_follow_show TO :backupPath/user_follow_show.csv' DELIMITER ',' CSV HEADER;
COPY user_rate_show TO :backupPath/user_rate_show.csv' DELIMITER ',' CSV HEADER;