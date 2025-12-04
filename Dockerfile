# Пример Dockerfile для запуска Matterbridge
FROM 42wim/matterbridge:latest
CMD ["/matterbridge", "-conf", "/config/matterbridge.toml"]
