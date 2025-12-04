FROM 42wim/matterbridge:latest

# Копируем локальный файл matterbridge.toml в нужное место внутри контейнера
COPY matterbridge.toml /etc/matterbridge/matterbridge.toml

# Запускаем Matterbridge, указывая путь к скопированному файлу
CMD ["/matterbridge", "-conf", "/etc/matterbridge/matterbridge.toml"]
