FROM 42wim/matterbridge:latest

# Переключаемся на root, чтобы точно иметь права на запись файла конфигурации
USER root

# Определяем ENTRYPOINT, чтобы гарантировать запуск оболочки sh.
ENTRYPOINT ["/bin/sh", "-c"]

# CMD — это скрипт, который нужно выполнить:
# 1. Записать конфиг из переменной MATTERBRIDGE_CONFIG в файл /matterbridge.toml
# 2. Запустить matterbridge (без слэша) с этим файлом
CMD ["echo \"$MATTERBRIDGE_CONFIG\" > /matterbridge.toml && matterbridge -conf /matterbridge.toml"]
