# Шарим

**1) Установите пакет samba**

Установка:

```
apt-get install samba
```

Проверка работы:

```sh
systemctl status smbd
```

![image](https://github.com/user-attachments/assets/3998288a-b412-4554-8a10-e12fbe6d7335)

**2) Что такое общая папка, зачем оно может быть нужно?**

С помощью samba можно делать общие сетевые папки, чтобы другой компьютер или несколько компьютеров могли обмениваться между собой файлами. Можно создавать или подключаться к сетевым папкам по протоколу. Физически сетевая папка находится на одном из компьютеров и для этого компьютера представляет собой обычную локальную папку.

Зачем это может быть нужно:

- Обмен файлами между устройствами по сети.
- Организация коллективной работы с разными правами доступа.
- Хранение общих данных.

**3) Создайте общую папку без пароля с правами только на чтение файлов**

```sh
mkdir -p /srv/samba/public
chmod 777 /srv/samba/public
chown nobody:nogroup /srv/samba/public
```

Примечание: Пользователь и группа nobody изначально существуют в системе, используются как гостевой аккаунт (guest account) по умолчанию и могут быть использованы в ресурсах для общего доступа с опцией guest ok = yes, благодаря чему пользователям не понадобится логиниться для доступа к таким ресурсам.

Редактирование конфига /etc/samba/smb.conf:

```sh
[public]
path = /srv/samba/public
browseable = yes
read only = yes
guest ok = yes
```

*Параметры:*

- path - путь к папке, которую нужно расшарить;
- browsable - будет ли папка отображаться в списке доступных шар;
- writable - будет ли папка доступна для записи;
- read only - папка доступна только для чтения;
- guest ok, public - будет ли разрешен гостевой доступ;
- only guest - если установлено yes, то папка будет доступна только гостям;
- hosts allow - ip адреса, с которых можно получить доступ к этому серверу;
- valid users - по умолчанию могут авторизоваться все пользователи, если в этом параметре передать список пользователей, то авторизоваться смогут только они;
- create mask - маска прав для создаваемых файлов.

Перезапуск samba:

```sh
systemctl restart smbd
```

![image](https://github.com/user-attachments/assets/338f2c68-c7d9-453d-9f9a-fecf97cdb867)
При попытке создать папку:

![image](https://github.com/user-attachments/assets/5b830f7f-d78c-490a-8907-b5a43cb88180)



**4) Создайте общую папку с паролем с правами на чтение и запись**

```sh
mkdir -p /srv/samba/secured
chmod 770 /srv/samba/secured
```

Примечание: в Samba пароль привязывается к пользователю, поэтому без отдельного пользователя задать пароль папке нельзя.

Создаем пользователя и задаем ему пароль в samba:

```sh
useradd smbuser
smbpasswd -a smbuser
chown  smbuser:smbuser /srv/samba/secured
```

Редактирование конфига /etc/samba/smb.conf:

```sh
[secured]
path = /srv/samba/secured
browseable = yes
writable = yes
valid users = smbuser
guest ok = no
```

Перезапуск samba:

```sh
systemctl restart smbd
```

![image](https://github.com/user-attachments/assets/3faf39c7-952d-4c2e-a729-b01e8e0e02e3)
![image](https://github.com/user-attachments/assets/9123432d-2fc8-4850-8dc7-d5d95ed80719)
При попытке создать папку:

![image](https://github.com/user-attachments/assets/dcf375aa-ce0d-499d-ac90-d436334318f6)

**5) Создайте общую папку с доступом для какой-то группы с полными правами**

```sh
mkdir -p /srv/samba/group
groupadd smbgroup
chown :smbgroup /srv/samba/group
chmod 770 /srv/samba/group
```

Редактирование конфига /etc/samba/smb.conf:

```sh
[group]
path = /srv/samba/group
read only = no
valid users = @smbgroup
```

Перезапуск samba:

```sh
systemctl restart smbd
```

Проверка:

Теперь, если пользователя нет в группе smbgroup, то он не будет иметь доступа к папке group:

![image](https://github.com/user-attachments/assets/4f02ead3-3e9c-43c1-b1ed-9ae65b97cd12)

Добавим smbuser в группу smbgroup:

```sh
usermod -aG smbgroup smbuser
systemctl restart smbd
```

![image](https://github.com/user-attachments/assets/50fdee96-892e-4746-8bc8-441c25c7a47b)

Теперь этот пользователь сможет делать все что захочет в папке group:

![image](https://github.com/user-attachments/assets/1c0bae89-a64b-481b-ade5-dd2bf143ca1b)

**6) Создайте общую папку, в которой у одной группы будет полный доступ, а у другой только доступ на чтение. Третья группа не должна иметь к ней доступа**

Пусть smbgroup имеет полный доступ, read_access - доступ только на чтение, а третью группу мы просто не укажем, тем самым, она не будет иметь доступа.

```sh
groupadd read_access
mkdir -p /srv/samba/mixed
chmod 770 /srv/samba/group
chown root:smbgroup /srv/samba/group
```

Редактирование конфига /etc/samba/smb.conf:

```sh
[group]
path = /srv/samba/group
browseable = yes
writable = no
valid users = @smbgroup, @read_access
write list = @smbgroup // список пользователей, которые имеют доступ к папке на чтение и запись.
force group = smbgroup
create mask = 0660
directory mask = 0770
```

Сделаем несколько пользователей для проверки:

```sh
useradd -m user1
useradd -m user2
usermod -aG smbgroup user1
usermod -aG read_access user2
smbpasswd -a user1
smbpasswd -a user2
```

Перезапуск samba:

```sh
systemctl restart smbd
```

Проверка:

Зашли под user2 и можем только читать:

![image](https://github.com/user-attachments/assets/17ab1643-9878-47c6-b558-7518d362639c)
![image](https://github.com/user-attachments/assets/fa31491c-1935-4a80-a392-4e70d437331c)


Зашли под user1, можем читать и редактировать:

![image](https://github.com/user-attachments/assets/78183afd-f67e-4686-8fb3-91ceed3e3f5e)
