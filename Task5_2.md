1. Создайте скрипт который создаёт папку заполняет её файлами ( имена 1 - 4 ) и записывает в них информацию о текущей дате, версии ядра, имени компьютера и списе всех файлов в домашнем каталоге пользователя от которого выполняется скрипт ( не забудьте сделать проверку на существование файлов и папок )

```bush
#!/bin/bash
set -euo pipefail
# Переключение в домашний каталог
cd "$HOME"
# Имя директории
DIR_NAME="my_directory"
# Проверка и создание директории
if [[ -d "$DIR_NAME" ]]; then
    echo "Папка $DIR_NAME уже существует."
else
    echo "Создаю папку $DIR_NAME..."
    mkdir "$DIR_NAME"
fi
# Создание и заполнение файлов
for i in {1..4}; do
    FILE_PATH="$DIR_NAME/$i"
    
    if [[ -f "$FILE_PATH" ]]; then
        echo "Файл $FILE_PATH уже существует."
    else
        echo "Создаю файл $FILE_PATH и записываю информацию..."
        {
            echo "Текущая дата: $(date)"
            echo "Версия ядра: $(uname -r)"
            echo "Имя компьютера: $(hostname)"
            echo "Список файлов в домашнем каталоге:"
            ls "$HOME"
        } > "$FILE_PATH"
    fi
done
echo "Готово! Папка $DIR_NAME создана, файлы заполнены."
```

---

2. Создайте юнит который будет вызывать этот скрипт при запуске. Проверьте

```bush
nano /etc/systemd/system/script.service
```

```sh
[Unit]
Description=Запуск скрипта для создания папки и файлов
After=network.target

[Service]
Type=simple
ExecStart=/bin/bash /home/veronika_steklo/script.sh
User=veronika_steklo
WorkingDirectory=/home/veronika_steklo
Restart=on-failure

[Install]
WantedBy=multi-user.target
```

```bush
sudo systemctl daemon-reload
sudo systemctl enable script.service
sudo systemctl start script.service
sudo systemctl status script.service
```

---

3. Создайте таймер который будет вызывать выполнение одноимённого systemd юнита каждые 5 минут.

```bush
nano /etc/systemd/system/script.timer
```

```sh
[Unit]
Description=Таймер для вызова script.service

[Timer]
OnUnitActiveSec=5min
OnBootSec=1min

[Install]
WantedBy=timers.target
```

```bush
sudo systemctl daemon-reload
sudo systemctl enable script.timer
sudo systemctl start script.timer
sudo systemctl status script.timer
```

---

4. От какого пользователя вызыаются юниты по умолчанию?

root

---

5. Создайте пользователя от имени которого будет выполняться ваш скрипт.

```bush
useradd -m -s /bin/bash my_user
passwd my_user
```

---

6. Дополните юнит информацией о пользователе от которого должен выполняться скрипт.

В script.service:

```sh
User=my_user
WorkingDirectory=/home/my_user
```

---

7. Дополните ваш скрипт так, что бы он независимо от местоположения всегда выполнялся в домашней папке того кто его вызывает.

```sh
set -euo pipefail
cd "$HOME"
```
