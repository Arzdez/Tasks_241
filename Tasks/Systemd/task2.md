# Пишем юниты
## 1. Создайте скрипт который создаёт папку заполняет её файлами (имена 1-4) и записывает в них информацию о текущей дате, версии ядра, имени компьютера и списке всех файлов в домашнем каталоге пользователя от которого выполняется скрипт (не забудьте сдлеать проверку на существование файлов и папок).
```bash
#!/bin/bash

# Определение домашнего каталога пользователя
HOME_DIR=$(eval echo "~$USER")

# Переход в домашний каталог
cd "$HOME_DIR" || { echo "Не удалось перейти в домашний каталог"; exit 1; }

# Имя создаваемой папки
FOLDER_NAME="my_folder"

# Проверка существования папки, создание если не существует
if [ ! -d "$FOLDER_NAME" ]; then
    mkdir "$FOLDER_NAME"
    echo "Папка '$FOLDER_NAME' создана."
else
    echo "Папка '$FOLDER_NAME' уже существует."
fi

# Переход в создаваемую папку
cd "$FOLDER_NAME" || { echo "Не удалось перейти в папку '$FOLDER_NAME'"; exit 1; }

# Создание и заполнение файлов
for i in {1..4}; do
    FILE_NAME="$i"
    if [ ! -f "$FILE_NAME" ]; then
        touch "$FILE_NAME"
        echo "Файл '$FILE_NAME' создан."
    else
        echo "Файл '$FILE_NAME' уже существует."
    fi

    # Запись информации в файл
    {
        echo "Текущая дата: $(date)"
        echo "Версия ядра: $(uname -r)"
        echo "Имя компьютера: $(hostname)"
        echo "Список файлов в домашнем каталоге:"
        ls "$HOME_DIR"
    } > "$FILE_NAME"
done

echo "Скрипт выполнен успешно."
```
## 2. Создайте юнит который будет вызывать этот скрипт при запуске. Проверьте его.
```bash
mv script.sh /usr/local/bin/
```
```bash
sudo chmod +x /usr/local/bin/script.sh
```
```bash
touch /etc/systemd/system/create_files.service
```
```bash
vim /etc/systemd/system/create_files.service
```
Содержимое create_files.service
```ini
[Unit]
Description=Создание папки и файлов с информацией
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/script.sh
```
```bash
systemctl daemon-reload
```
```bash
systemctl start create_files.service
```
```bash
systemctl status create_files.service
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd/Tasks/Systemd/images/Screenshot%202024-11-22%20164106.png)
## 3. Создайте таймер который будет вызывать выполнение одноимённого systemd юнита каждые 5 минут.
```bash
touch /etc/systemd/system/create_files.timer
```
```bash
vim /etc/systemd/system/create_files.timer
```
Содержимое create_files.timer
```ini
[Unit]
Description=Таймер для создания папки и файлов каждые 5 минут

[Timer]
OnBootSec=5min
OnUnitActiveSec=5min
Unit=create_files.service

[Install]
WantedBy=timers.target
```
```bash
systemctl daemon-reload
```
```bash
systemctl enable create_files.timer
```
```bash
systemctl start create_files.timer
```
```bash
systemctl status create_files.timer
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd/Tasks/Systemd/images/Screenshot%202024-11-22%20164130.png)
## 4. От какого пользователя вызыаются юниты по умолчанию?
По умолчанию, системные юниты выполняются от имени пользователя `root`.
## 5. Создайте пользователя от имени которого будет выполняться ваш скрипт.
```bash
useradd -m -s /bin/bash scriptuser
```
```bash
sudo passwd scriptuser
```
## 6. Дополните юнит информацией о пользователе от которого должен выполняться скрипт.
```bash
vim /etc/systemd/system/create_files.service
```
Содержимое create_files.service
```ini
[Unit]
Description=Создание папки и файлов с информацией
After=network.target

[Service]
Type=oneshot
User=scriptuser
ExecStart=/usr/local/bin/create_files.sh

[Install]
WantedBy=multi-user.target
```
```bash
systemctl daemon-reload
```
```bash
systemctl restart create_files.service
```
```bash
systemctl restart create_files.timer
```
## 7. Дополните ваш скрипт так, что бы он независимо от местоположения выполнялся в домашней папке того кто его вызывает.
[Скрипт](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd/Tasks/Systemd/script.sh)
```bash
#!/bin/bash

# Определение домашнего каталога пользователя scriptuser
HOME_DIR=$(eval echo "~scriptuser")

# Переход в домашний каталог
cd "$HOME_DIR" || { echo "Не удалось перейти в домашний каталог"; exit 1; }

# Имя создаваемой папки
FOLDER_NAME="my_folder"

# Проверка существования папки, создание если не существует
if [ ! -d "$FOLDER_NAME" ]; then
    mkdir "$FOLDER_NAME"
    echo "Папка '$FOLDER_NAME' создана."
else
    echo "Папка '$FOLDER_NAME' уже существует."
fi

# Переход в создаваемую папку
cd "$FOLDER_NAME" || { echo "Не удалось перейти в папку '$FOLDER_NAME'"; exit 1; }

# Создание и заполнение файлов
for i in {1..4}; do
    FILE_NAME="$i"
    if [ ! -f "$FILE_NAME" ]; then
        touch "$FILE_NAME"
        echo "Файл '$FILE_NAME' создан."
    else
        echo "Файл '$FILE_NAME' уже существует."
    fi

    # Запись информации в файл
    {
        echo "Текущая дата: $(date)"
        echo "Версия ядра: $(uname -r)"
        echo "Имя компьютера: $(hostname)"
        echo "Список файлов в домашнем каталоге:"
        ls "$HOME_DIR"
    } > "$FILE_NAME"
done

echo "Скрипт выполнен успешно."
```
