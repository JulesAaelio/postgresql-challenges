psql --username=admin -f 'sql/ynov/create_ynov_database.sql'\
    -f 'sql/ynov/student.sql'\
    -f 'sql/ynov/classe.sql'\
    -f 'sql/ynov/notes.sql'\
    -f 'sql/ynov/make_fixtures.sql'\
    -f 'sql/ynov/create_average_view.sql'