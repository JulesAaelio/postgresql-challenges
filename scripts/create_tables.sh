psql  --username=admin -f sql/database.sql
sudo psql shows --username=admin\
    -f sql/show.sql\
    -f sql/episode.sql\
    -f sql/user.sql\
    -f sql/follow.sql\
    -f sql/rate.sql