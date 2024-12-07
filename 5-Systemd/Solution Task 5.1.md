## **1. Что такое systemd юнит?** 

**Systemd Unit** — это конфигурационный файл в системе управления сервисами и демонами **systemd**, который описывает, как управлять конкретной службой, задачей или ресурсом в Linux.

**Типы systemd Units:**
- **Service (`.service`)**. Нужен для определения службы и демоны.
- **Socket (`.socket`)**. Нужен для управления сокетами.
- **Timer (`.timer`)**. Используется для запуска задач по расписанию.
- **Mount (`.mount`).** Нужен для определения точки монтирования файловой системы.
- **Target (`.target`)**. Группирует другие юниты для синхронизации их запуска или завершения.
- **Path (`.path`)**. Просматривает изменения в файловой системе.
- **Device (`.device`)**. Отслеживает состояние устройств.
- **Snapshot (`.snapshot`)**. Сохраняет состояние системы (временно).

## **2. Проверьте статус любого systemd юнита. Какую информацию выводит эта команда?**

```bash
systemctl status redis-server.service
```
```output
● redis-server.service - Advanced key-value store
     Loaded: loaded (/usr/lib/systemd/system/redis-server.service; enabled; preset: enabled)
     Active: active (running) since Wed 2024-12-04 21:42:30 +04; 5min ago
       Docs: http://redis.io/documentation,
             man:redis-server(1)
   Main PID: 140980 (redis-server)
     Status: "Ready to accept connections"
      Tasks: 5 (limit: 38290)
     Memory: 18.3M (peak: 18.8M)
        CPU: 411ms
     CGroup: /system.slice/redis-server.service
             └─140980 "/usr/bin/redis-server 127.0.0.1:6379"

Dec 04 21:42:30 syscudo systemd[1]: Starting redis-server.service - Advanced key-value store...
Dec 04 21:42:30 syscudo systemd[1]: Started redis-server.service - Advanced key-value store● redis-server.service - Advanced key-value store
     Loaded: loaded (/usr/lib/systemd/system/redis-server.service; enabled; preset: enabled)
     Active: active (running) since Wed 2024-12-04 21:42:30 +04; 5min ago
       Docs: http://redis.io/documentation,
             man:redis-server(1)
   Main PID: 140980 (redis-server)
     Status: "Ready to accept connections"
      Tasks: 5 (limit: 38290)
     Memory: 18.3M (peak: 18.8M)
        CPU: 416ms
     CGroup: /system.slice/redis-server.service
             └─140980 "/usr/bin/redis-server 127.0.0.1:6379"

Dec 04 21:42:30 syscudo systemd[1]: Starting redis-server.service - Advanced key-value store...
Dec 04 21:42:30 syscudo systemd[1]: Started redis-server.service - Advanced key-value store.
```

#### **Статус юнита:**
- **`Loaded: loaded`**  
    Юнит загружен. Путь к файлу юнита: `/usr/lib/systemd/system/redis-server.service`.  
    Указано, что автозапуск и preset включены (`enabled`).
    
- **`Active: active (running)`**  
    Служба работает в данный момент.
    
    - `since Thu 2024-12-05 00:54:07 +04` — время запуска.
    - `3h 40min left` — сколько времени прошло с момента запуска.

```bash
systemctl is-active redis-server.service
```
```output
active
```

## **3. Попробуйте остановить сервис.**
```bash
systemctl stop redis-server.service && systemctl is-active redis-server.service
```
```output
inactive
```

##  **4. Перезапустите его.**
```bash
systemctl restart redis-server.service && systemctl is-active redis-server.service
```
```output
active
```

## **5. Удалите из автозагрузки.**
<div style="text-align: center;">
  <img src="https://github.com/cosmys81/Tasks_241/blob/5f3f492314ae04ed460d77c582a72ed8d9256a81/5-Systemd/Pasted%20image%2020241204213752.png" alt="Screenshot #1" />
</div>

## **6. Верните обратно.**
<div style="text-align: center;">
  <img src="https://github.com/cosmys81/Tasks_241/blob/30dbda36014fe08a4abc4a3b878140351e6ec164/5-Systemd/Pasted%20image%2020241204213936.png" alt="Screenshot #2" />
</div>

## **7. Что такое таймеры?**
**Таймеры** — механизмы, позволяющие автоматически запускать службы или задачи через заданные интервалы времени или в ответ на определённые события. Обычно определяются в файлах с расширением `.timer`, которые связаны с конкретными сервисами. Каждый таймер ссылается на соответствующую службу, которую нужно запускать в определённое время или интервал.



