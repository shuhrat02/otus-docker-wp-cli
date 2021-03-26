# otus-docker-wp-cli
Docker образ с CMS WordPress

### Установка wordpress через docker-compose

Выполните команду:
```bash
git clone https://github.com/shuhrat02/otus-docker-wp-cli.git
```

После этого перейдите в директорию otus-docker-wp-cli и выполните команды:
```bash
cd otus-docker-wp-cli
docker-compose up -d
```
Далее в браузере откройте url:
`localhost:80` 
или 
`localhost:80/wp-admin`

### Backup mysql базы в docker контейнере
Для бэкапа mysql базы следует запустить mysqldump в контейнере и сохранить файл на хост командой:
```bash
docker exec otus-docker-wp-cli_db_1 /usr/bin/mysqldump -u root --password=wordpress wordpress > wordpress_db_$(date +%d%m%y,%T).sql
```
