#!/bin/bash
set -euo pipefail

# Task 1

ls
ls -a
mkdir papka
cd papka
mkdir podpapka1
mkdir podpapka2
ls
cd podpapka1
touch failik
echo "chto-nibud3" | cat >> failik
echo "chto-nibud1" | cat >> failik
echo "chto-nibud2" | cat >> failik
cat failik
mv failik ../podpapka2
cd ../podpapka2
ls
cp failik ../podpapka1
cd ../podpapka1
ls
mv failik failik2
ls
diff -s failik2 ../podpapka2/failik
sort failik2
sort -r failik2
cd ../..
rm -rf papka

# Task 2

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
