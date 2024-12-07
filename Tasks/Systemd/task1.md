# Юниты
## 1. Что такое systemd юнит?
**Systemd** — это система инициализации и менеджер служб для Linux. 
**Юниты (units)** — это основные объекты, с которыми работает systemd. Каждый юнит описывает ресурс, которым systemd управляет. 
## 2. Проверьте статус любого systemd юнита, какую информацию выводит эта команда?
```bash
systemctl status sshd.service
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd/Tasks/Systemd/images/Screenshot%202024-11-22%20104000.png)
## 3. Попробуйте остановить сервис.
```bash
systemctl stop sshd.service
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd/Tasks/Systemd/images/Screenshot%202024-11-22%20104210.png)
## 4. Перезапустите его.
```bash
systemctl restart sshd.service
```
```bash
systemctl status sshd.service
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd/Tasks/Systemd/images/Screenshot%202024-11-22%20104332.png)
## 5. Удалите из автозагрузки.
```bash
systemctl disable sshd.service
```
```bash
systemctl is-enabled sshd.service
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd/Tasks/Systemd/images/Screenshot%202024-11-22%20104510.png)
## 6. Верните обратно.
```bash
systemctl enable sshd.service
```
```bash
systemctl is-enabled sshd.service
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd/Tasks/Systemd/images/Screenshot%202024-11-22%20104618.png)
## 7. Что такое таймеры?
**Таймеры** (timers) — это юниты, которые используются для планирования запуска других юнитов (обычно служб) по расписанию или через определённые интервалы времени.
