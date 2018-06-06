psql --username=admin shows -c "CREATE EXTENSION IF NOT EXISTS pgcrypto;"\
	-c "UPDATE users SET password=crypt(password, gen_salt('md5'));"
