/bin/bash install-postgresql.sh
/bin/bash create_user_admin.sh admin admin42
/bin/bash create_tables.sh
/bin/bash crypt_password.sh
/bin/bash create_read_user.sh