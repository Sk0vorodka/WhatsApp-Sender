FROM 42wim/matterbridge:latest

# Переключаемся на root для прав записи
USER root

# Сбрасываем entrypoint
ENTRYPOINT []

# ИСПРАВЛЕНИЕ:
# 1. Записываем конфиг в файл /matterbridge.toml
# 2. Запускаем "matterbridge" (БЕЗ слэша в начале), чтобы система сама его нашла.
CMD /bin/sh -c "echo \"$MATTERBRIDGE_CONFIG\" > /matterbridge.toml && matterbridge -conf /matterbridge.toml"
