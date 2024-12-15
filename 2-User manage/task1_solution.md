# Управление пользователями

## 1 Добавьте пользователей user1 и user2:
### 1.1 user1 - оболочка bash
```bash
adduser -s /bin/bash user1
getent passwd user1
user1:x:503:504::/home/user1:/bin/bash
```
### 1.2 user2 - оболочка sh
```bash
adduser -s /bin/sh user2
getent passwd user2
user2:x:504:505::/home/user2:/bin/sh
```
### 1.3 установите им пароли
```bash
usermod -p pass1 user1
usermod -p pass2 user2
```
## 2 Назначьте пользователю 1 группу администраторов, польователя 2 добавте в группу пользователя 1
```bash
usermod -G wheel -a user1
id user1
uid=503(user1) gid=504(user1) группы=10(wheel),504(user1)

usermod -G user1 -a user2
id user2
uid=504(user2) gid=505(user2) группы=504(user1),505(user2)
```
## 3 Что такое права доступа? Выведите права доступа на файлы в директории пользователя
Это разрешения для пользователей и групп на действия с файлом.
```bash
ls -la /home/student
итого 64
drwx------ 9 student student 4096 ноя 21 13:47 .
drwxr-xr-x 7 root    root    4096 ноя 21 15:23 ..
-rw------- 1 student student    5 ноя 21 13:16 .bash_history
-rw------- 1 student student  217 июл 26  2021 .bash_logout
-rw------- 1 student student  259 июл 26  2021 .bash_profile
-rw------- 1 student student  188 июл 26  2021 .bashrc
drwx------ 2 student student 4096 июл 26  2021 .cache
drwx------ 2 student student 4096 июл 26  2021 .config
drwx------ 3 student student 4096 сен 14  2023 .local
-rw------- 1 student student   17 июл 26  2021 .lpoptions
drwx------ 3 student student 4096 сен 14  2023 .mutt
-rw------- 1 student student  121 июл 26  2021 .rpmmacros
drwx------ 2 student student 4096 сен 14  2023 .ssh
drwxr-xr-x 6 root    root    4096 ноя 21 14:42 Tasks_241
-rwx------ 1 student student  319 июл 26  2021 .xprofile
drwx------ 2 student student 4096 июл 26  2021 .xsession.d
```
## 4 Как изменить права на файлы? Создайте файл который будет на который у всез пользователей будут все возможные права
С помощью команды chmod.
```bash
touch file
chmod 777 file
ls -la
итого 28
drwxr-xr-x 2 root root 4096 ноя 21 15:49 .
drwxr-xr-x 6 root root 4096 ноя 21 14:42 ..
-rwxrwxrwx 1 root root    0 ноя 21 15:49 file
-rw-r--r-- 1 root root 1307 ноя 21 13:47 task1.md
-rw-r--r-- 1 root root  409 ноя 21 15:44 task1_script.sh
-rw-r--r-- 1 root root  409 ноя 21 15:43 task1_script.sh~
-rw-r--r-- 1 root root 2886 ноя 21 15:44 task1_solution.md
-rw-r--r-- 1 root root 1910 ноя 21 15:40 task1_solution.md~
```
## 5 Как называется учётная запись встренного (встроенного?) администратора в linux?
root
## 6 Как выполнить команду от имени администратора?
Написать перед ней sudo.
## 7 Есть ли ограничения у суперпользователя?
Нет.
## 8 Удалите пользователя 2 с помощью пользователя 1
```bash
su - user1
sudo userdel user2
id user2
id: «user2»: такого пользователя нет
```
## 9 Как можно изменить владельца папки? измените владельца папки из пункта 4
С помощью команды chown.
```bash
chown user1 file
ls -l
итого 20
-rwxrwxrwx 1 user1 root    0 ноя 21 15:49 file
-rw-r--r-- 1 root  root 1307 ноя 21 13:47 task1.md
-rw-r--r-- 1 root  root  355 ноя 21 16:57 task1_script.sh
-rw-r--r-- 1 root  root  310 ноя 21 16:23 task1_script.sh~
-rw-r--r-- 1 root  root 3612 ноя 21 16:57 task1_solution.md
-rw-r--r-- 1 root  root 3552 ноя 21 16:56 task1_solution.md~
```
