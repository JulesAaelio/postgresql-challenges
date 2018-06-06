psql --username=admin -f 'sql/create_reader_role.sql' shows


new_username="read_only"
new_password_unquoted="read"
new_password="'$new_password_unquoted'";


psql --username=admin \
    --set=new_username="$new_username" \
    --set=new_password="$new_password" \
    -f 'sql/create_read_user.sql'\
    shows

acl="local all $new_username md5"
toadd="1s/^/$acl\n/"
sed -i "$toadd" /etc/postgresql/10/main/pg_hba.conf

echo *:*:*:$new_username:$new_password_unquoted >> ~/.pgpass
chmod 600 ~/.pgpass
service postgresql restart