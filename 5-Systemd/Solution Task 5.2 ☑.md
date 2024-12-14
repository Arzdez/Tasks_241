## **1. Создайте скрипт который создаёт папку заполняет её файлами (имена 1-4) и записывает в них информацию о текущей дате, версии ядра, имени компьютера и списке всех файлов в домашнем каталоге пользователя, от которого выполняется скрипт (не забудьте сделать проверку на существование файлов и папок).**

```bash
#!/bin/bash
set -euo pipefail

cd ~ || exit

DIR_NAME="unit_files"

if [ ! -d "$DIR_NAME" ]; then
	mkdir "$DIR_NAME"
fi

for i in {1..4}; do
	FILE="$DIR_NAME/$i"
	
	if [ ! -f "$FILE" ]; then
		echo "Текущая дата: $(date)" > "$FILE"
		echo "Версия ядра: $(uname -r)" >> "$FILE"
		echo "Имя компьютера: $(hostname)" >> "$FILE"
		echo "Список файлов в домашнем каталоге:" >> "$FILE" 
		ls ~ >> "$FILE"
	fi
done
```

Чтобы сделать скрипт исполняемым, нужно прописать в терминале следующую команду:

```bash
chmod +x script5_2.sh
```

где `script5_2.sh` - название скрипта.

Запуск скрипта - `./script5_2.sh`.

## **2. Создайте юнит, который будет вызывать этот скрипт при запуске. Проверьте.**

Создаём юнит-файл `script5_2.service` в `/etc/systemd/system/` с следующим содержимым:

```
[Unit]  
Description=Запуск скрипта для создания файлов  
After=network.target  
  
[Service]  
Type=oneshot    
ExecStart=/home/cudok/script5_2.sh
Restart=no
  
[Install]  
WantedBy=multi-user.target
```

`WorkingDirectory` указывает, что выполнение скрипта начинается из домашней папки.

```bash
sudo systemctl daemon-reload
sudo systemctl start script5_2.service
sudo systemctl status script5_2.service
```

Вывод оказался следующим:

```bash
○ script5_2.service - Запуск скрипта для создания файлов  
    Loaded: loaded (/etc/systemd/system/script5_2.service; enabled; preset: enabled)  
    Active: inactive (dead) since Thu 2024-12-12 18:46:06 +04; 2min 19s ago  
TriggeredBy: ● script5_2.timer  
   Process: 3047136 ExecStart=/home/cudok/script5_2.sh (code=exited, status=0/SUCCESS)  
  Main PID: 3047136 (code=exited, status=0/SUCCESS)  
       CPU: 1ms  
  
дек 12 18:46:06 syscudo systemd[1]: Starting script5_2.service - Запуск скрипта для создания файлов...  
дек 12 18:46:06 syscudo systemd[1]: script5_2.service: Deactivated successfully.  
дек 12 18:46:06 syscudo systemd[1]: Finished script5_2.service - Запуск скрипта для создания файлов.
```

## **3. Создайте таймер, который будет вызывать выполнение одноимённого systemd юнита каждые 5 минут.**

```bash
sudo nano /etc/systemd/system/script5_2.timer
```

Туда пишем следующее содержимое:

```
[Unit]  
Description=Таймер для запуска script5_2  
  
[Timer]  
OnBootSec=5min        # Запуск через 5 минут после старта системы  
OnUnitActiveSec=5min  # Повторение через 5 минут после последнего выполнения
  
[Install]  
WantedBy=timers.target
```

```bash
sudo systemctl daemon-reload
sudo systemctl enable script5_2.timer
sudo systemctl start script5_2.timer
sudo systemctl status script5_2.timer
sudo systemctl list_timers --all | head -n 3
```

Результат последней команды следующий:

```bash 
● script5_2.timer - Таймер для запуска script5_2  
    Loaded: loaded (/etc/systemd/system/script5_2.timer; enabled; preset: enabled)  
    Active: active (waiting) since Thu 2024-12-12 23:16:47 +04; 13s ago  
   Trigger: Thu 2024-12-12 23:21:47 +04; 4min 46s left  
  Triggers: ● script5_2.service

NEXT                            LEFT LAST                              PASSED UNIT                           ACTIVATES  
Thu 2024-12-12 18:50:00 +04 2min 31s Thu 2024-12-12 18:40:19 +04     7min ago sysstat-collect.timer          sysstat-collect.service  
Thu 2024-12-12 18:51:06 +04 3min 38s Thu 2024-12-12 18:46:06 +04 1min 21s ago script5_2.timer                script5_2.service
```

## **4. От какого пользователя вызываются юниты по умолчанию?**

От  `root`. Причина тому - `systemd`, который управляет службами и сервисами на уровне системы, а для этого требуются права админа.

## **5. Создайте пользователя от имени которого будет выполняться ваш скрипт.**

```bash
sudo useradd -m temp_runner
sudo passwd temp_runner
```

## **6. Дополните юнит информацией о пользователе, от которого должен выполняться скрипт.**

```bash
sudo nano /etc/systemd/system/script5_2.service
```

```bash
[Unit]
Description=Запуск скрипта для создания файлов
After=network.target

[Service]
Type=oneshot
User=temp_runner
ExecStart=/home/cudok/script5_2.sh
Restart=no

[Install]
WantedBy=multi-user.target
```

```bash
sudo chmod 777 script5_2.sh
sudo systemctl daemon-reload
sudo systemctl restart scripr_5_2.service
sudo systemctl restart scripr_5_2.timer
```

## **7. Дополните ваш скрипт так, что бы он независимо от местоположения всегда выполнялся в домашней папке того, кто его вызывает.**

См. в "1.Создайте скрипт который создаёт папку заполняет её файлами (имена 1-4) и записывает в них информацию о текущей дате, версии ядра, имени компьютера и списке всех файлов в домашнем каталоге пользователя, от которого выполняется скрипт (не забудьте сделать проверку на существование файлов и папок)".
