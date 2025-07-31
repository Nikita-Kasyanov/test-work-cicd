# Используем официальный образ Nginx
FROM nginx:alpine 

# Добавляем нашу кастомную страницу
RUN echo "Hello from DevOps!" > /usr/share/nginx/html/index.html

# Порт 80 будет доступен снаружи
EXPOSE 80
