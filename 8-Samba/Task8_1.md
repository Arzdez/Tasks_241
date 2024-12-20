1. Установите пакет samba

```bush
apt-get install samba
```
---

2. Что такое общая папка, зачем оно может быть нужно?

Общая папка — это директория, доступ к которой предоставляется нескольким пользователям в локальной сети или через Интернет.

Она может использоваться для:
1. Совместной работы (обмен файлами).
2. Хранения общих данных (документов, мультимедиа).
3. Организации архивов, доступных для чтения или модификации определёнными пользователями.

---

3. Создайте общую папку без пароля с правами только на чтение файлов

```bush
sudo mkdir /srv/shared_read_only
sudo chmod 755 /srv/shared_read_only
```
```bush
nano /etc/samba/smb.conf
```
Добавить в конец файла:
```ini
[shared_read_only]
path = /var/samba/shared_read_only
browsable = yes
guest ok = yes
read only = yes
```
Перезапустить самбу:
```bush
systemctl restart smb nmb
```
---

4. Создайте общую папку с паролем с правами на чтение и запись

```bush
sudo mkdir /srv/share_rw
sudo chmod 770 /srv/share_rw
```
```bush
sudo smbpasswd -a veronika_steklo
```

В конец файла /etc/samba/smb.conf добавить:
```ini
[shared_rw]
path = /srv/shared_rw
read only = no
valid users = username
browseable = yes
```

Перезапустить самбу:
```bush
systemctl restart smb nmb
```

---

5. Создайте общую папку с доступом для какой-то группы с полными правами

```bush
groupadd full_access
usermod -aG full_access user1
usermod -aG full_access user2
```
```bush
mkdir /srv/group_full_access
chown :full_access /srv/group_full_access
chmod 770 /srv/group_full_access
```
В конец файла /etc/samba/smb.conf добавить:
```ini
[group_full_access]
path = /srv/group_full_access
read only = no
valid users = @full_access
browseable = yes
```
Перезапустить самбу:
```bush
systemctl restart smb nmb
```

---

6. Создайте общую папку в которой у одной группы будет полный доступ, а у другой только доступ на чтение. Третья группа не должна иметь к ней доступа

```bush
groupadd full_access
groupadd read_only
groupadd no_access
```
```bush
usermod -aG full_access user1
usermod -aG read_only user2
usermod -aG no_access user3
```
```bush
mkdir /srv/shared_folder
```
```bush
chown :full_access /srv/shared_folder
chmod 770 /srv/shared_folder
setfacl -m g:read_only:rx /srv/shared_folder
setfacl -m g:no_access:--- /srv/shared_folder
```
В конец файла /etc/samba/smb.conf добавить:
```ini
[shared_folder]
path = /srv/shared_folder
read only = no
valid users = @full_access, @read_only
write list = @full_access
browseable = yes
```
Перезапустить самбу:
```bush
systemctl restart smb nmb
```
