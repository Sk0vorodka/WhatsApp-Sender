FROM 42wim/matterbridge:latest

# Переключаемся на пользователя root, чтобы гарантировать право на запись файла конфигурации
USER root

# Используем ENTRYPOINT в "exec-формате" (квадратные скобки).
# Это жестко задает команду запуска, игнорируя любые настройки по умолчанию.
ENTRYPOINT ["/bin/sh", "-c", "echo \"$MATTERBRIDGE_CONFIG\" > /matterbridge.toml && /matterbridge -conf /matterbridge.toml"]
