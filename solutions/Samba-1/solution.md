# Общие папки
Если в дистрибутиве по умолчанию нет samba, то устанавливаем пакет из репозитория: `apt-get install -y samba samba-client`.
На всякий случай после установки создаем резервную копию файла конфигурации: `cp /etc/samba/smb.conf /etc/samba/smb.conf_sample`.

**Samba** – серверное приложение, реализующее доступ клиентских терминалов к папкам, принтерам и дискам про протоколу SMB/CIFS.
В частности, используется для общего доступа к папкам и файлам в локальной сети.

## Создание общей папки без пароля с правами только на чтение
Создаем общую папку, находясь под root. Меняем права доступа к ней на чтение и выполнение для остальных пользователей.
Меняем владельца и группу-владельца папки, чтобы она не принадлежала только root.
```
mkdir -p /media/samba/test1
chmod 755 /media/samba/test1
chown nobody:users /media/samba/test1
```
Далее добавим в конец файла `/etc/samba/smb.conf` следующий код:
```
[test1]
    path = /media/samba/test1
    guest ok = yes
    browsable = yes
    read only = yes
    writable = no
```
Каждая из настроек обозначает следующее:
- `path` - полный путь к каталогу;
- `guest ok = yes` - разрешить гостевой доступ;
- `browsable = yes` - показывать каталог в списке прочих общих каталогов;
- `read only = yes` - сделать каталог доступным только для чтения;
- `writable = no` - запретить запись в каталог.

Перезапускаем сервисы samba, чтобы применить изменения.
```
systemctl restart smb nmb
```

## Создание общей папки с паролем с правами на чтение и запись
Создаем общую папку, находясь под root. Меняем права доступа к ней на чтение и выполнение для остальных пользователей.
Меняем владельца и группу-владельца папки, чтобы она не принадлежала только root.
```
mkdir -p /media/samba/test2
chmod 777 /media/samba/test2
chown nobody:users /media/samba/test2
```
Далее добавим в конец файла `/etc/samba/smb.conf` следующий код:
```
[test2]
    path = /media/samba/test2
    guest ok = no
    browsable = yes
    read only = no
    writable = yes
    valid users = sosnovskiim
```
Настройка `valid users = sosnovskiim` означает, что только у данного пользователя есть доступ к общей папке.

Теперь добавим пользователя в samba.
```
smbpasswd -a sosnovskiim
```
Перезапускаем сервисы samba, чтобы применить изменения.
```
systemctl restart smb nmb
```

## Создание общей папки с доступ для конкретной группы с полными правами
Создаем общую папку, находясь под root. Меняем права доступа к ней на чтение и выполнение для остальных пользователей.
Меняем владельца и группу-владельца папки, чтобы она не принадлежала только root.
```
mkdir -p /media/samba/test3
chmod 777 /media/samba/test3
chown nobody:users /media/samba/test3
```
Далее добавим в конец файла `/etc/samba/smb.conf` следующий код:
```
[test3]
    path = /media/samba/test3
    guest ok = no
    browsable = yes
    read only = no
    writable = yes
    valid users = @sosnovskiim
```
Настройка `valid users = @sosnovskiim` означает, что только у данной группы пользователей есть доступ к общей папке.

Перезапускаем сервисы samba, чтобы применить изменения.
```
systemctl restart smb nmb
```

## Создайте общей папки, для которой у одной группы будет полный доступ, у другой только доступ на чтение, а третья не должна иметь доступа
Создаем общую папку, находясь под root. Меняем права доступа к ней на чтение и выполнение для остальных пользователей.
Меняем владельца и группу-владельца папки, чтобы она не принадлежала только root.
```
mkdir -p /media/samba/test4
chmod 777 /media/samba/test4
chown nobody:users /media/samba/test4
```
Создадим пользователей, зададим им пароли, добавим групппы и добавим пользователей в соответствующие группы.
```
useradd user_full_access
useradd user_read_only
useradd user_no_access

passwd user_full_access
passwd user_read_only
passwd user_no_access

groupadd group_full_access
groupadd group_read_only
groupadd group_no_access

usermod -aG group_full_access user_full_access
usermod -aG group_read_only user_read_only
usermod -aG group_no_access user_no_access
```
Далее добавим в конец файла `/etc/samba/smb.conf` следующий код:
```
[test4]
    path = /media/samba/test4
    guest ok = no
    browsable = yes
    read only = no
    writable = yes
    valid users = @group_full_access, @group_read_only
    read list = @group_full_access, @group_read_only
    write_list = @group_full_access
```
Настройка `read list` означает, что только у данных групп пользователей есть доступ на чтение к общей папке.

Настройка `write list` означает, что только у данных групп пользователей есть доступ на запись к общей папке.

Перезапускаем сервисы samba, чтобы применить изменения.
```
systemctl restart smb nmb
```

## Проверка работоспособности
Сначала настроим саму VirtualBox. Виртуальная машина должна быть выключена.
Открываем настройки виртуальной машины, вкладка "Сеть", выбираем неиспользуемый адаптер, включаем его и выбираем тип подключения — "Виртуальный адаптер хоста".

![1.png](/solutions/Samba-1/screenshots/1.png)

Удостоверимся, что новый сетевой интерфейс успешно добавлен, выполнив команду `ip a`.

![2.png](/solutions/Samba-1/screenshots/2.png)

Добавляем пользователя в samba, чтобы можно было авторизоваться под ним из Windows.
```
smbpasswd -a sosnovskiim
```

Теперь переходим в проводник Windows и в адресной строке вводим IP адрес добавленного сетевого интерфейса.

![3.png](/solutions/Samba-1/screenshots/3.png)

Жмем Enter, а затем вводим учетные данные ранее добавленного пользователя.

![4.png](/solutions/Samba-1/screenshots/4.png)

Теперь нам видны общие папки samba, доступные пользователю sosnovskiim.

![5.png](/solutions/Samba-1/screenshots/5.png)
