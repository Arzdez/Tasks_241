# Струтура каталогов

## 1 Какая структура каталогов в linux? выведите список файлов в корне системы
Структура каталога имеет древовидную структуру, корнем которой является корневой каталог /.
```bash
ls -la /
drwxr-xr-x   6 root root  4096 ноя 16 10:15 home
drwxr-xr-x  26 root root  4096 сен 19 21:09 lib
drwxr-xr-x   8 root root 12288 сен 27 22:32 lib64
drwxr-xr-x   2 root root  4096 сен  4  2020 libx32
drwx------   2 root root 16384 сен 19 23:24 lost+found
drwxr-xr-x   2 root root  4096 сен  4  2020 media
drwxr-xr-x   2 root root  4096 сен  4  2020 mnt
drwxr-xr-x   2 root root  4096 сен  4  2020 opt
-rw-r--r--   1 root root    11 ноя  2 10:53 podpapka2
dr-xr-xr-x 294 root root     0 ноя 16  2024 proc
drwx------  12 root root  4096 ноя 16 11:24 root
drwxr-xr-x  45 root root  1160 ноя 16 10:00 run
drwxr-xr-x   2 root root 12288 сен 19 21:09 sbin
dr-xr-xr-x   2 root root  4096 сен  4  2020 selinux
drwxr-xr-x   2 root root  4096 сен  4  2020 srv
dr-xr-xr-x  13 root root     0 ноя 16  2024 sys
drwxrwxrwt  17 root root  4096 ноя 16 10:05 tmp
drwxr-xr-x  14 root root  4096 сен 19 23:25 usr
drwxr-xr-x  17 root root  4096 сен 19 19:38 var
```
## 2 Где хранятся папки пользователей в системе?
В /home.
## 3 Где домашняя папка суперпользователя?
/root
## 4 Где хранятся основые конфигурационные файлы в системе?
/etc
## 5 Что за папки /bin,/sbin,usr/sbin,/usr/sbin
1. /bin
   
   Содержит системные исполняемые файлы (бинарники).
2. /sbin

   Идет со старых версий Linux, ссылается на /bin для поддержание совместимости со старыми утилитами.
3. /usr/bin

   Содержит пользовательские исполняемые файлы.
4. /usr/sbin

   Аналогично /sbin.
