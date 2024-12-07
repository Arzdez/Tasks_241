**1. Что такое шебанг?**

Шебанг (shebang) — строка комментария, начинающаяся с символов #!, которая играет важную роль в запуске скриптов на языках программирования Bash и Python. Шебанг указывает операционной системе, какой интерпретатор нужно использовать для выполнения скрипта.

---

2. Обязательно ли исполняемый файл дожен иметь соотвествующее расширение?

Нет

---

3. Напишите скрипт который выполнит автоматически действия из блока работы с файлами. 
( не забудьте включить set -euo pipefail для того что бы ваш 
скрипт было удобнее отлаживать. 
Опишите что включают эти флаги )

-e: Прерывание выполнения скрипта при ошибке
-u: Ошибка при использовании неинициализированных переменных
-o pipefail: Прерывание скрипта при ошибке в любом звене конвейера

```sh
#!/bin/bash
set -euo pipefail

mkdir -p task1/num4

echo "aboba" > task1/num4/aboba.txt

mkdir -p task1.6
mv task1/num4/aboba.txt task1.6/

cp task1.6/aboba.txt task1/

mv task1/aboba.txt task1/abobus.txt

diff task1/abobus.txt task1.6/aboba.txt || echo "Файлы отличаются"

sort task1/abobus.txt
sort -r task1/abobus.txt

rm -rf task1 task1.6

cat aboba.txt
less aboba.txt

echo "Мяу мяу мяу мяу" > mya.txt
cat >> mya.txt

kinit > /dev/null 2>&1
ping -c 4 google.com > output.txt 2>&1
traceroute google.com 1>&2
traceroute google.com 2>&1

command > /dev/null 2>&1

echo "Скрипт выполнен успешно!"
```
