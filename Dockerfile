# Пример Dockerfile для запуска Matterbridge
FROM matterbridge/matterbridge:latest
CMD ["/matterbridge", "-conf", "/config/matterbridge.toml"]
