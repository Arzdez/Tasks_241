
# Шарим


## 1. Установите пакет samba

```bash
sudo apt-get install samba
```

## 2. ЧТо такое побщая папка, зачем оно может быть нужно?

**Общая папка** — это папка, доступ к которой могут иметь несколько пользователей или устройства через сеть (Даже через другие ОС).

## 3. Создайте общую папку без пароля с правами только на чтение файлов
```bash
sudo mkdir -p /srv/samba/shared_folder
sudo chmod 444 /srv/samba/shared_folder
```
```bash
sudo chown -R nobody:users /srv/samba/shared_folder
```


```bash
sudo nano /etc/samba/smb.conf
```
```ini
[shared_folder]
   path = /srv/samba/shared_folder
   browsable = yes
   read only = yes
   guest ok = yes
   force user = nobody
```

```bash
sudo systemctl restart smb
```

```bash
ls -ld /srv/samba/shared_folder
```

(Для всех чтение)
<div style="text-align: center;">
  <img src="Screnshoots\Screen1.png" alt="Мой скриншот" />
</div>


## 4. Создайте общую папку с паролем с правами на чтение и запись

```bash
sudo mkdir -p /srv/samba/shared_folder_with_write
sudo chmod 111 /srv/samba/shared_folder_with_write
```
```bash
sudo chown -R nobody:users /srv/samba/shared_folder_with_write
```

```bash
sudo nano /etc/samba/smb.conf
```

```ini
[shared_folder_with_write]
   path = /srv/samba/shared_folder_with_write
   browsable = yes
   read only = no    
   guest ok = no      
   valid users = mostov 

```

```bash
sudo systemctl restart smb
```

```bash
ls -ld /srv/samba/shared_folder
```
<div style="text-align: center;">
  <img src="Screnshoots\Screen1.png" alt="Мой скриншот" />
</div>


## 5. Создайте общую папку с доступом для какой-то группы с полными правами

```bash
sudo mkdir -p /srv/samba/shared_folder_group
sudo chmod 070 /srv/samba/shared_folder_group
```

```bash
sudo groupadd group8
sudo chown nobody:group8 /srv/samba/shared_folder_group
```

```bash
sudo nano /etc/samba/smb.conf
```

```ini
[shared_folder_group]
   path = /srv/samba/shared_folder_group
   browsable = yes
   read only = no          
   guest ok = no           
   valid users = @group8    
```

```bash
sudo usermod -aG group8 mostov             
```

```bash
sudo systemctl restart smb
```

```bash
ls -ld /srv/samba/shared_folder_group
```

<div style="text-align: center;">
  <img src="Screnshoots\Screen2.png" alt="Мой скриншот" />
</div>



## 6. Создайте общую папку в которой у одной группы будет полный доступ, а у другой только доступ на чтение.

```bash
sudo useradd user_samba_1
sudo useradd user_samba_2
sudo useradd user_samba_3
```

```bash
sudo passwd user_samba_1
sudo passwd user_samba_2
sudo passwd user_samba_3
```

```bash
sudo groupadd full_access
sudo groupadd read_only
sudo groupadd no_access
```

```bash
sudo usermod -aG full_access user_samba_1
sudo usermod -aG read_only user_samba_2
sudo usermod -aG no_access user_samba_3
```

```bash
sudo mkdir -p /srv/samba/shared_folder_with_3_group
sudo chmod 770 /srv/samba/shared_folder_with_3_group
```

```bash
sudo nano /etc/samba/smb.conf
```

```ini
[shared_folder_with_3_group]
    path = /srv/samba/shared_folder_with_3_group
    browsable = yes
    guest ok = no
    valid users = @full_access, @read_only, @no_access
    writeable = yes
    read only = no
    create mask = 0775
    directory mask = 0775

    # Права доступа для full_access (полный доступ)
    force group = full_access
    valid users = @full_access
    writeable = yes

    # Права доступа для read_only (только чтение)
    valid users = @read_only
    read only = yes
```

```bash
sudo systemctl restart smb
```

<div style="text-align: center;">
  <img src="Screnshoots\Screen3.png" alt="Мой скриншот" />
</div>
