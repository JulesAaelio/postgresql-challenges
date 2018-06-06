#! /bin/bash

BACKUP_PATH=$(pwd)/backup;

psql shows --username=admin\
        --set=backupPath="'$BACKUP_PATH"\
        -f sql/backupAll.sql\