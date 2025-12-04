FROM 42wim/matterbridge:latest

# КРИТИЧЕСКИ ВАЖНО: Сбрасываем стандартную точку входа образа, 
# чтобы мы могли выполнять свои команды shell.
ENTRYPOINT []

# 1. Берем переменную окружения.
# 2. Записываем её в файл в папку /tmp (там точно есть права на запись).
# 3. Запускаем Matterbridge с этим файлом.
CMD /bin/sh -c "echo \"$MATTERBRIDGE_CONFIG\" > /tmp/matterbridge.toml && /matterbridge -conf /tmp/matterbridge.toml"
