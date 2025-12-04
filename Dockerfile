FROM 42wim/matterbridge:latest

# Эта команда создает файл matterbridge.toml из переменной окружения
CMD /bin/sh -c 'echo "$MATTERBRIDGE_CONFIG" > /etc/matterbridge/matterbridge.toml && /matterbridge -conf /etc/matterbridge/matterbridge.toml'
