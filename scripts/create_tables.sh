ABSOLUTE_PATH='$(pwd)/csv/';

psql --username=admin -c '\set absolutePath $ABSOLUTE_PATH;'
psql  --username=admin -f sql/database.sql
psql shows --username=admin\
    -f sql/show.sql\
    -f sql/episode.sql\
    -f sql/user.sql\
    -f sql/follow.sql\
    -f sql/rate.sql