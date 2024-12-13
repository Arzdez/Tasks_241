#!/bin/bash

mkdir task_2
cd task_2
pwd

# 4) Создать файл с содержимым не используя текстовые редактор
echo "Soderjimoe." | cat > file1

# 3) Вывести содержание файла не используя текстовые редакторы
cat file1

# 5) Перенаправить stdout в stderr и обратно на примере команды kinit, ping, tracert
ping -c 1 vk.com 1>&2 1> file2 2>&1
cat file2

# 8) Как отправить весь вывод команды в пустоту?
ping -c 1 vk.com 1> /dev/null
