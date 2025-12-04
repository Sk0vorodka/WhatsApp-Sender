FROM 42wim/matterbridge:latest

# Команда для запуска, которая читает переменную $MATTERBRIDGE_CONFIG и создает из нее файл.
CMD /bin/sh -c 'echo "$MATTERBRIDGE_CONFIG" > /etc/matterbridge/matterbridge.toml && /matterbridge -conf /etc/matterbridge/matterbridge.toml'
