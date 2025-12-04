FROM 42wim/matterbridge:latest

# Переключаемся на root, чтобы избежать проблем с правами.
USER root

# Определяем ENTRYPOINT в "exec-формате".
# Теперь Docker точно знает, что первый элемент — это исполняемый файл (/bin/sh).
ENTRYPOINT ["/bin/sh", "-c"]

# CMD — это скрипт, который нужно выполнить.
# Здесь мы избегаем слэша перед matterbridge и пишем его без лишних экранирований,
# т.к. он будет выполнен внутри sh -c.
CMD ["echo \"$MATTERBRIDGE_CONFIG\" > /matterbridge.toml && matterbridge -conf /matterbridge.toml"]FROM 42wim/matterbridge:latest
