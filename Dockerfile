FROM 42wim/matterbridge:latest

# Правильно оформленная команда CMD
CMD ["/bin/sh", "-c", "echo \"$MATTERBRIDGE_CONFIG\" > /etc/matterbridge/matterbridge.toml && /matterbridge -conf /etc/matterbridge/matterbridge.toml"]
