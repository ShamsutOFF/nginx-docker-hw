FROM nginx:alpine

# Копируем конфигурацию nginx
COPY default.conf /etc/nginx/conf.d/default.conf

# Копируем HTML файл
COPY index.html /usr/share/nginx/html/index.html

# Открываем порт
EXPOSE 80
