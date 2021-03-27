#!/bin/bash

DATA=`date +"%Y-%m-%d_%H-%M"`
#Можно и нужно указать путь до директории куда будут сохраняться бекапы:
PATHB=/home/$USER

# Бэкапим дампом
docker exec otus-docker-wp-cli_db_1 /usr/bin/mysqldump -u root --password=wordpress wordpress > "$PATHB"/"$DATA"-db_name.sql

# Жмем
/bin/gzip "$PATHB"/"$DATA"-db_name.sql
# Чистим, удаляя файлы старше 10-ти дней
/usr/bin/find "$PATHB" -type f -mtime +10 -exec rm -rf {} \;
