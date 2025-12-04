FROM 42wim/matterbridge:latest

# Переключаемся на root, чтобы точно иметь права на запись файла конфигурации
USER root

# Определяем ENTRYPOINT в "exec-формате", чтобы гарантировать запуск оболочки sh.
ENTRYPOINT ["/bin/sh", "-c"]

# CMD — это скрипт, который использует echo -e для корректной записи многострочного конфига.
CMD ["echo -e \"$MATTERBRIDGE_CONFIG\" > /matterbridge.toml && matterbridge -conf /matterbridge.toml"]
