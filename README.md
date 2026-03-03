# Nginx Docker Homework

Домашнее задание по работе с Docker и Nginx.

## Структура проекта

nginx-docker-hw/
├── Dockerfile # Dockerfile для сборки образа
├── default.conf # Конфигурация Nginx
├── index.html # HTML страница
└── README.md # Описание проекта


## Как запустить

### 1. Собрать образ
```bash
docker build -t nginx-hw:latest .
2. Запустить контейнер
docker run -d -p 8080:80 --name nginx-hw nginx-hw:latest
3. Проверить в контейнере
docker exec nginx-hw curl http://localhost
4. Проверить в браузере
Открой: http://localhost:8080

Команды для управления
# Остановить контейнер
docker stop nginx-hw

# Запустить снова
docker start nginx-hw

# Удалить контейнер
docker rm -f nginx-hw

# Посмотреть логи
docker logs nginx-hw

# Зайти в контейнер
docker exec -it nginx-hw sh
Выполненные задачи
 Создан index.html с кастомным содержимым
 Написан Dockerfile на основе nginx:alpine
 Конфиг nginx помещён в /etc/nginx/conf.d/default.conf
 HTML файл помещён в /usr/share/nginx/html
 Контейнер запущен и протестирован через curl
 Dockerfile добавлен в репозиторий