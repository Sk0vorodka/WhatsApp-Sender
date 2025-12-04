CMD ["/bin/sh", "-c"]

# Используем флаг -e для echo, чтобы интерпретировать \n
CMD ["echo -e \"$MATTERBRIDGE_CONFIG\" > /matterbridge.toml && matterbridge -conf /matterbridge.toml"]
