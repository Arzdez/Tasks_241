1. **Скрипт**
    ```
    #!/bin/bash

    set -euo pipefail
    # Название папки
    DIR_NAME="my_folder"

    # Проверка существования папки
    if [ -d "$DIR_NAME" ]; then
        echo "Папка '$DIR_NAME' уже существует."
    else
        mkdir "$DIR_NAME"
        echo "Папка '$DIR_NAME' создана."
    fi

    # Создание и заполнение файлов

    # Файл с текущей датой
    DATE_FILE="$DIR_NAME/1.txt"
    if [ -f "$DATE_FILE" ]; then
        echo "Файл '$DATE_FILE' уже существует."
    else
        echo "Текущая дата: $(date)" > "$DATE_FILE"
        echo "Файл '$DATE_FILE' создан и заполнен."
    fi

    # Файл с версией ядра
    KERNEL_FILE="$DIR_NAME/2.txt"
    if [ -f "$KERNEL_FILE" ]; then
        echo "Файл '$KERNEL_FILE' уже существует."
    else
        echo "Версия ядра: $(uname -r)" > "$KERNEL_FILE"
        echo "Файл '$KERNEL_FILE' создан и заполнен."
    fi

    # Файл с именем компьютера
    HOSTNAME_FILE="$DIR_NAME/3.txt"
    if [ -f "$HOSTNAME_FILE" ]; then
        echo "Файл '$HOSTNAME_FILE' уже существует."
    else
        echo "Имя компьютера: $(hostname)" > "$HOSTNAME_FILE"
        echo "Файл '$HOSTNAME_FILE' создан и заполнен."
    fi

    # Файл со списком файлов в домашнем каталоге
    HOME_FILES_FILE="$DIR_NAME/4.txt"
    if [ -f "$HOME_FILES_FILE" ]; then
        echo "Файл '$HOME_FILES_FILE' уже существует."
    else
        echo "Список файлов в домашнем каталоге:" > "$HOME_FILES_FILE"
        ls ~ >> "$HOME_FILES_FILE"
        echo "Файл '$HOME_FILES_FILE' создан и заполнен."
    fi

Чтобы использовать, надо создать файл с расширением .sh, вставить туда скрипт, сохранить, сделать файл исполняемым и запустить скрипт.
