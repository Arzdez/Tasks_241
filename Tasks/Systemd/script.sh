#!/bin/bash

# Определение домашнего каталога пользователя scriptuser
HOME_DIR=$(eval echo "~scriptuser")

# Переход в домашний каталог
cd "$HOME_DIR" || { echo "Не удалось перейти в домашний каталог"; exit 1; }

# Имя создаваемой папки
FOLDER_NAME="my_folder"

# Проверка существования папки, создание если не существует
if [ ! -d "$FOLDER_NAME" ]; then
mkdir "$FOLDER_NAME"
echo "Папка '$FOLDER_NAME' создана."
else
echo "Папка '$FOLDER_NAME' уже существует."
fi

# Переход в создаваемую папку
cd "$FOLDER_NAME" || { echo "Не удалось перейти в папку '$FOLDER_NAME'"; exit 1; }

# Создание и заполнение файлов
for i in {1..4}; do
FILE_NAME="$i"
if [ ! -f "$FILE_NAME" ]; then
touch "$FILE_NAME"
echo "Файл '$FILE_NAME' создан."
else
echo "Файл '$FILE_NAME' уже существует."
fi

# Запись информации в файл
{
echo "Текущая дата: $(date)"
echo "Версия ядра: $(uname -r)"
echo "Имя компьютера: $(hostname)"
echo "Список файлов в домашнем каталоге:"
ls "$HOME_DIR"
} > "$FILE_NAME"
done

echo "Скрипт выполнен успешно."
