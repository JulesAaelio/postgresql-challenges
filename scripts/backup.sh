#! /bin/bash

BACKUP_PATH=$(pwd)/backup;


if [[ ! -d backup ]]; then
        mkdir backup;
        chmod 777 backup;
fi

psql shows --username=admin\
        --set=backupPath="'$BACKUP_PATH"\
        -f sql/backupAll.sql\