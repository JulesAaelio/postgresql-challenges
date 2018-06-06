ABSOLUTE_PATH=$(pwd)/csv;

psql    --username=admin\
        -f sql/database.sql

psql shows --username=admin\
    --set=absolutePath="'$ABSOLUTE_PATH"\
    -f sql/disableForKey.sql\
    -f sql/show.sql\
    -f sql/episode.sql\
    -f sql/user.sql\
    -f sql/follow.sql\
    -f sql/rate.sql\
    -f sql/enableForKey.sql