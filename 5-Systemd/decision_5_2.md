# Пишем юниты

## 1. Создайте скрипт который создаёт папку заполняет её файлами ( имена 1-4 ) и записывает в них информацию
о текущей дате, версии ядра, имени компьютера и списе всех файлов в домашнем каталоге пользователя от которого выполняется скрипт( не забудьте сдлеать проверку на существование файлов и папок)

```bash
#!/bin/bash
set -euo pipefail

DIR_NAME="Folder5"
FILE_NAMES=("1" "2" "3" "4")

# Проверка существования папки
if [ -d "$DIR_NAME" ]; then
  echo "Директория $DIR_NAME уже существует."
else
  echo "Создаём директорию $DIR_NAME."
  mkdir "$DIR_NAME"
fi

# Заполняем файлы в папке
# ! — специальный оператор, который в сочетании с массивами возвращает индексы массива, а не его значения.
# [@] — обозначает, что операция выполняется над всеми элементами массива.
for i in "${!FILE_NAMES[@]}"; do
  FILE_PATH="$DIR_NAME/${FILE_NAMES[$i]}"
  
  if [ -f "$FILE_PATH" ]; then
    echo "Файл $FILE_PATH уже существует."
  else
    echo "Создание файла:  $FILE_PATH"
    touch "$FILE_PATH"
  fi

  # Записываем информацию в файлы
  case $i in
    0) echo "Текущая дата: $(date)" > "$FILE_PATH" ;;
    1) echo "Версия ядра: $(uname -r)" > "$FILE_PATH" ;;
    2) echo "Имя компьютера: $(hostname)" > "$FILE_PATH" ;;
    3) echo "Список файлов в домашнем каталоге:" > "$FILE_PATH"
       ls ~ >> "$FILE_PATH" ;;
  esac
done
```
```chmod +x scripr_5_2.sh```
```./scripr_5_2.sh```


## 2. Создайте юнит который будет вызывать этот скрипт при запуске. Проверьте

```bash
sudo vi /etc/systemd/system/scripr_5_2.service
```

```ini
[Unit]
Description=Запуск скрипта scripr_5_2.sh при старте системы
After=network.target

[Service]
Type=oneshot
ExecStart=/home/mostov/scripr_5_2.sh
Restart=no

[Install]
WantedBy=multi-user.target
```
```bash
sudo systemctl daemon-reload
```
```bash
sudo systemctl start scripr_5_2.service
```
```bash
sudo systemctl status scripr_5_2.service
```

<div style="text-align: center;">
  <img src="Screnshoots\Screen6.png" alt="Мой скриншот" />
</div>

### После перезагрузки (Время другое):
<div style="text-align: center;">
  <img src="Screnshoots\Screen7.png" alt="Мой скриншот" />
</div>

## 3. Создайте таймер который будет вызывать выполнение одноимённого systemd юнита каждые 5 минут.

```bash
sudo vi /etc/systemd/system/scripr_5_2.timer
```

```ini
[Unit]
Description=Таймер для запуска scripr_5_2

[Timer]
OnBootSec=5min        # Запуск через 5 минут после старта системы
OnUnitActiveSec=5min  # Повторение через 5 минут после последнего выполнения

[Install]
WantedBy=timers.target
```

```bash
sudo systemctl daemon-reload
```

```bash
sudo systemctl enable scripr_5_2.timer
sudo systemctl start scripr_5_2.timer
```

```bash
sudo systemctl status scripr_5_2.timer
```
<div style="text-align: center;">
  <img src="Screnshoots\Screen8.png" alt="Мой скриншот" />
</div>

## 4. От какого пользователя вызыаются юниты поумолчанию?
От `root`. Это связано с тем, что `systemd` управляет службами и сервисами на уровне операционной системы, и для этих операций обычно требуются права администратора

## 5. Создайте пользователя от имени которого будет выполняться ваш скрипт.

```bash
sudo useradd -m script_runner
```
```bash
sudo passwd script_runner
```

## 6. Дополните юнит информацией о пользователе от которого должен выплняться скрипт.

```bash
sudo vi /etc/systemd/system/scripr_5_2.service
```

```ini
[Unit]
Description=Запуск скрипта scripr_5_2.sh при старте системы
After=network.target

[Service]
Type=oneshot
ExecStart=/home/mostov/scripr_5_2.sh
User=script_runner  # изменение
Restart=no

[Install]
WantedBy=multi-user.target
```

```bash
systemctl daemon-reload
```

```bash
sudo systemctl restart scripr_5_2.service
sudo systemctl restart scripr_5_2.timer
```

## 7. Дополните ваш скрипт так, что бы он независимо от местоположения всега выполнялся в домашней папке того кто его вызывает.

```bash
#!/bin/bash
set -euo pipefail

# Переходим в домашнюю директорию текущего пользователя
cd "$HOME" || exit 1

DIR_NAME="Folder5"
FILE_NAMES=("1" "2" "3" "4")

# Проверка существования папки
if [ -d "$DIR_NAME" ]; then
  echo "Директория $DIR_NAME уже существует."
else
  echo "Создаём директорию $DIR_NAME."
  mkdir "$DIR_NAME"
fi

# Заполняем файлы в папке
for i in "${!FILE_NAMES[@]}"; do
  FILE_PATH="$DIR_NAME/${FILE_NAMES[$i]}"
  
  if [ -f "$FILE_PATH" ]; then
    echo "Файл $FILE_PATH уже существует."
  else
    echo "Создание файла:  $FILE_PATH"
    touch "$FILE_PATH"
  fi

  # Записываем информацию в файлы
  case $i in
    0) echo "Текущая дата: $(date)" > "$FILE_PATH" ;;
    1) echo "Версия ядра: $(uname -r)" > "$FILE_PATH" ;;
    2) echo "Имя компьютера: $(hostname)" > "$FILE_PATH" ;;
    3) echo "Список файлов в домашнем каталоге:" > "$FILE_PATH"
       ls ~ >> "$FILE_PATH" ;;
  esac
done
```
