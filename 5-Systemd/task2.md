# Пишем юниты

1) Создайте скрипт, который создаёт папку, заполняет её файлами (имена 1-4) и записывает в них информацию о текущей дате, версии ядра, имени компьютера и списке всех файлов в домашнем каталоге пользователя, от которого выполняется скрипт (не забудьте сделать проверку на существование файлов и папок).

```sh
#!/bin/bash
set -euo pipefail
M_DIR="$HOME/folder"

if [ ! -d "$M_DIR" ]; then
    mkdir "$M_DIR"
    echo "Папка folder успешно создана!"
else
    echo "Папка обнаружена |\/|"
fi

# mkdir folder
# touch folder/1 && date > folder/1
# touch folder/2 && cat /proc/version > folder/2
# touch folder/3 && hostname > folder/3
# touch folder/4 && ls -la > folder/4

for i in {1..4}; do
    if [ ! -f "$M_DIR/$i" ]; then
        touch $M_DIR/$i
        echo "Файл $i успешно создан!"
        if [ "$i" == 1 ]; then
             date > $M_DIR/1
        elif [ "$i" == 2 ]; then
             cat /proc/version > $M_DIR/2
        elif [ "$i" == 3 ]; then
             hostname > $M_DIR/3
        else
             ls -la > $M_DIR/4
    fi
    else
        echo "Файл $i обнаружен |\/|"
fi
done 
```

2) Создайте юнит, который будет вызывать этот скрипт при запуске. Проверьте работоспособность.

```sh
[Unit]
Description = This is a test unit!
After=network.target

[Service]
ExecStart=/home/systemd-script
User=ilya
Group=ilya
Type=oneshot
WorkingDirectory=/home/ilya

[Install]
WantedBy=multi-user.target
```

![image](https://github.com/user-attachments/assets/fc7f812b-cb46-4d63-977d-0af64b650c96)

3) Создайте таймер, который будет вызывать выполнение одноимённого systemd юнита каждые 5 минут.

```sh
[Unit]
Description=Таймер для периодического запуска myunit.service
Requires=myunit.service

[Timer]
Unit=myunit.service
OnUnitActiveSec=5m

[Install]
WantedBy=timers.target
```

4) От какого пользователя вызываются юниты по умолчанию?

По умолчанию юниты systemd вызываются от Root, но можно указать, от кого надо вызывать.

5) Создайте пользователя, от имени которого будет выполняться ваш скрипт.

Добавили

6) Дополните юнит информацией о пользователе, от которого должен выполняться скрипт.

Дополнили

7) Дополните ваш скрипт так, чтобы он независимо от местоположения всегда выполнялся в домашней папке того, кто его вызывает.

Дополнили
