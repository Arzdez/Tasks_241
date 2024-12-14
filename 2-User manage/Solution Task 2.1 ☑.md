## **1. Добавьте пользователей user1 и user2:**
#### **1.1) user1 - оболочка bash**

```bash
useradd -m -s /bin/bash user1
```
#### **1.2) user2 - оболочка sh**

```bash
useradd -m -s /bin/sh user2
```

#### **1.3) установите им пароли**

```bash
passwd user1
passwd user2
```

Выведем всех имеющихся пользователей в системе:

```bash
cat /etc/passwd | tail -n 2
```
```output
user1:x:1001:1001::/home/user1:/bin/bash
user2:x:1002:1002::/home/user2:/bin/sh
```

## **2. Назначьте пользователю 1 группу администраторов, пользователя 2 добавьте в группу пользователя 1**

```bash
usermod -aG adm user1
usermod -aG sudo user1
usermod -aG user1 user2
```

Выведем, что получилось:

```bash
groups user1
groups user2
```
```output
user1 : user1 adm suduser2 : user2 user1
o
```

## **3. Что такое права доступа? Выведите права доступа на файлы в директории пользователя**

Права доступа можно увидеть при выполнении команды:

```bash
ls -l | head -n 5
```
```output
total 24761total 247616
-rw-rw-r--  1 cudok cudok     97344 Jun 23 23:58 2024-06-23 23-58-21.mkv
-rw-rw-r--  1 cudok cudok  18469732 Jun 24 00:00 2024-06-23 23-59-15.mkv
-rw-rw-r--  1 cudok cudok 120666197 Nov 19 17:54 2024-11-19 17-53-52.mkv
drwxrwxr-x  6 cudok cudok      4096 Sep 14 17:40 FinamPy
6
```

Например, `drwxrwxr-x`. Здесь через указывается владелец / группа / другие, причём `r` - право на чтение, `w` - право на запись, `x` - право на выполнение; `d` - директория.

Соответственно, нужно для того, чтобы определять, кто и что может делать.

## **4. Как изменить права на файлы? Создайте файл который будет на который у всех пользователей будут все возможные права**

```bash
ls -l file.txt
chmod 777 file.txt
ls -l file.txt
```
```output
-rw-rw-r-- 1 cudok cudok 9 Dec 12 13:45 file.tx-rwxrwxrwx 1 cudok cudok 9 Dec 12 13:45 file.txt
t
```

Примечание:  7 = 4 + 2 + 1 = чтение, запись и выполнение, где 4 - `r`, 2 - `w`, 1 - `x`.

## **5. Как называется учётная запись встроенного администратора в linux?**

`root`. Он имеет полный доступ к системе.

## **6. Как выполнить команду от имени администратора?**

```bash
sudo command
```

К примеру,  я на KUbuntu выполнял `sudo passwd user1`. Иначе мне выводило, что я бесправный. Ещё можно без пароля попасть в админку через команду `sudo -i`.

## **7. Есть ли ограничения у суперпользователя?**

Из ограничений - системные и настройки безопасности. Вроде бы их ещё можно самостоятельно установить (`/etc/sudoers`???). 

## **8. Удалите пользователя 2 с помощью пользователя 1.**

Пример с `sudo`:

```bash
sudo userdel user2
```

Посмотрим список пользователей той же командой, что и ранее:

```bash
cat /etc/passwd | tail -n 2
```
```output
sshd:x:124:65534::/run/sshd:/usr/sbin/nologin
user1:x:1001:1001::/home/user1:/bin/bash
```

## **9. Как можно изменить владельца папки? измените владельца папки из пункта 4**

```bash
mkdir -p papka
ls -la papka
```
```output
total 8
drwxrwxr-x  2 cudok cudok 4096 Dec 12 14:32 .
drwxr-x--- 51 cudok cudok 4096 Dec 12 14:32 ..
```

```bash
chown user1:user1 papka
```

```bash
ls -la papka
rmdir papka
```
```output
total 8
drwxrwxr-x  2 user1 user1 4096 Dec 12 14:32 .
drwxr-x--- 51 cudok cudok 4096 Dec 12 14:32 ..
```



