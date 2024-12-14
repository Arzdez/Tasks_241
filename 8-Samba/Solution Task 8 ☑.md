## **1. Установите пакет samba**

```bash
sudo apt-get install samba
```

## **2. Что такое общая папка, зачем оно может быть нужно?**

**Общая папка** — это папка, которая настроена для доступа несколькими пользователями в сети. Она позволяет хранить файлы и предоставлять к ним доступ другим устройствам в локальной сети или даже в глобальной. Доступ осуществляется, грубо говоря, через **`samba`**.

## **3. Создайте общую папку без пароля с правами только на чтение файлов**

```bash
sudo mkdir -p /srv/samba/folder
sudo chmod 444 /srv/samba/folder
```

```bash
sudo chown -R nobody:users /srv/samba/folder
```

```bash
[folder]
   path = /srv/samba/folder
   browsable = yes
   read only = yes
   guest ok = yes
   force user = nobody
```

```bash
ls -ld /srv/samba/folder
```

Получился вывод:

```bash
dr--r--r-- 2 nobody users 4096 дек 13 22:21 /srv/samba/folder
```

## **4. Создайте общую папку с паролем с правами на чтение и запись**

```bash
sudo mkdir -p /srv/samba/folder_write
sudo chmod 711 /srv/samba/folder_write
```

```bash
sudo chown -R nobody:users /srv/samba/folder_write
```

```bash
sudo nano /etc/samba/smb.conf
```

```bash
[folder_write]  
  path = /srv/samba/folder_write  
  browsable = yes      
  read only = no        
  guest ok = no           
  valid users = cudok
```

```bash
drwx--x--x 2 nobody users 4096 дек 13 22:34 /srv/samba/folder_write
```

## **5. Создайте общую папку с доступом для какой-то группы с полными правами**

```bash
sudo mkdir -p /srv/samba/folder_group
sudo chmod 770 /srv/samba/folder_group
```

```bash
sudo groupadd group8  
sudo chown nobody:group8 /srv/samba/folder_group
```

```bash
sudo usermod -aG group8 cudok
sudo systemctl restart smb
ls -ld /srv/samba/folder_group
```

Вывод получился следующий:

```bash
drwxrwx--- 2 nobody group8 4096 дек 13 22:29 /srv/samba/folder_group
```

## **6. Создайте общую папку в которой у одной группы будет полный доступ, а у другой только доступ на чтение. Третья группа не должна иметь к ней доступа.**

```bash
sudo useradd samba1
sudo useradd samba2
sudo useradd samba3
```

```bash
sudo passwd samba1
sudo passwd samba2
sudo passwd samba3
```

```bash
sudo groupadd full_access
sudo groupadd read_only
sudo groupadd no_access
```

```bash
sudo usermod -aG full_access samba1  
sudo usermod -aG read_only samba2  
sudo usermod -aG no_access samba3
```

```bash
sudo mkdir -p /srv/samba/folder3_group  
sudo chmod 770 /srv/samba/folder3_group
```

```bash
[folder3_group]  
   path = /srv/samba/folder3_group  
   browsable = yes  
   guest ok = no  
   valid users = @full_access, @read_only, @no_access  
   writeable = yes  
   read only = no  
   create mask = 0775  
   directory mask = 0775  
  
  
   force group = full_access  
   valid users = @full_access  
   writeable = yes  
      
   valid users = @read_only  
   read only = yes
```

```bash
ip a
```

Это показывает мой айпи (нужно поискать, хе-хе).

Потом мы просто вставляем его в команду следующую:

```bash
smbclient -L //192.168.0.104 -U cudok
```

Вывод:

```bash
Password for [WORKGROUP\cudok]:  
  
       Sharename       Type      Comment  
       ---------       ----      -------  
       print$          Disk      Printer Drivers  
       folder          Disk         
       folder_group    Disk         
       folder_write    Disk         
       folder3_group   Disk         
       IPC$            IPC       IPC Service (syscudo server (Samba, Ubuntu))  
SMB1 disabled -- no workgroup available
```