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
docker-compose exec -T wp-cli sh < install.sh
```
Далее в браузере откройте url:
`localhost:8080` 
или 
`localhost:8080/wp-admin`
Default admin login - `admin`
Default admin password - `123`

#### Можно изменять переменные окружения в `site.env` и `.env`.

Если не хватает прав вносить изменения в папке `wp-content`, следует выполнить команду:
```bash
sudo usermod -a -G www-data $USER
```

