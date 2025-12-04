FROM 42wim/matterbridge:latest

# Переключаемся на root и устанавливаем 'cat' для чтения файлов.
USER root
RUN apk update && apk add coreutils

# ENTRYPOINT и CMD:
# 1. Записать конфиг из переменной MATTERBRIDGE_CONFIG в файл /matterbridge.toml
# 2. Запустить matterbridge (он создаст файл сессии и QR)
# 3. В случае успеха он запишет QR в файл.
ENTRYPOINT ["/bin/sh", "-c"]

# ВАЖНО: Мы запускаем matterbridge, ждем, чтобы он создал файл QR-кода, 
# а затем немедленно выводим содержимое этого файла на экран (в логи).
CMD ["echo \"$MATTERBRIDGE_CONFIG\" > /matterbridge.toml && matterbridge -conf /matterbridge.toml & sleep 5 && cat matterbridge-qr.txt"]
