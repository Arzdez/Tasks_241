# Шарим
## 1. Установите пакет samba.
```bash
apt-get install samba
```
## 2. Что такое общая папка, зачем оно может быть нужно?
**Общая папка** — это каталог на компьютере, доступный другим пользователям или компьютерам в сети. Она позволяет:
1. Совместное использование файлов и документов.
2. Централизованное хранение данных.
3. Облегчение совместной работы в командах.
4. Обеспечение доступа к ресурсам из разных операционных систем (например, Windows и Linux).
## 3. Создайте общую папку без пароля с правами только на чтение файлов.
```bash
mkdir -p /srv/samba/public_read
```
```bash
chmod 755 /srv/samba/public_read
```
```bash
groupadd nogroup
```
```bash
chown -R nobody:nogroup /srv/samba/public_read
```
```bash
vim /etc/samba/smb.conf
```
В `/etc/samba/smb.conf` нужно добавить в конец:
```ini
[ReadOnlyShare]
    path = /srv/samba/read_only_share
    browsable = yes
    read only = yes
    guest ok = yes
    force user = nobody
```
```bash
systemctl restart smb
systemctl restart nmb
```
## 4. Создайте общую папку с паролем с правами на чтение и запись.
```bash
mkdir -p /srv/samba/read_write_share
```
```bash
chmod 2770 /srv/samba/read_write_share
```
```bash
chown -R nobody:users /srv/samba/read_write_share
```
```bash
apt-get install samba-client
```
```bash
smbpasswd -a lunis
```
```bash
vim /etc/samba/smb.conf
```
В `/etc/samba/smb.conf` нужно добавить в конец:
```ini
[ReadWriteShare]
    path = /srv/samba/read_write_share
    browsable = yes
    read only = no
    valid users = lunis
```
```bash
systemctl restart smb
systemctl restart nmb
```
## 5. Создайте общую папку с доступом для какой-то группы с полными правами.
```bash
groupadd samba_full_access
```
```bash
usermod -aG samba_full_access lunis
```
```bash
mkdir -p /srv/samba/full_access_share
```
```bash
chmod 2770 /srv/samba/full_access_share
```
```bash
chown -R :samba_full_access /srv/samba/full_access_share
```
```bash
vim /etc/samba/smb.conf
```
В `/etc/samba/smb.conf` нужно добавить в конец:
```ini
[FullAccessShare]
    path = /srv/samba/full_access_share
    browsable = yes
    read only = no
    valid users = @samba_full_access
```
```bash
systemctl restart smb
systemctl restart nmb
```
## 6. Создайте общую папку в которой у одной группы будет полный доступ, а у другой только доступ на чтение. Третья группа не должна иметь к ней доступа.
```bash
useradd user1
useradd user2
useradd user3
```
```bash
passwd user1
passwd user2
passwd user3
```
```bash
groupadd group_full
groupadd group_read
groupadd group_no_access
```
```bash
usermod -aG group_full user1
usermod -aG group_read user2
usermod -aG group_no_access user3
```
```bash
mkdir -p /srv/samba/mixed_access_share
```
```bash
chmod 2770 /srv/samba/mixed_access_share
```
```bash
chown -R :group_full /srv/samba/mixed_access_share
```
В `/etc/samba/smb.conf` нужно добавить в конец:
```ini
[MixedAccessShare]
    path = /srv/samba/mixed_access_share
    browsable = yes
    read only = no
    valid users = @group_full @group_read
    write list = @group_full
    read list = @group_read
    force group = group_full
    create mask = 0660
    directory mask = 2770
```
```bash
setfacl -m g:group_full:rwx /srv/samba/mixed_access_share
setfacl -m g:group_read:rx /srv/samba/mixed_access_share
setfacl -m g:group_no_access:--- /srv/samba/mixed_access_share
```
```bash
systemctl restart smb
systemctl restart nmb
```

## Подтверждение, что папка видна из сети
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/samba/Tasks/Samba/images/photo_2024-12-17_20-48-04.jpg)
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/samba/Tasks/Samba/images/photo_2024-12-17_20-48-10.jpg)
Там не только добавленные папки из этого задания, я еще дополнительно добавляла.
