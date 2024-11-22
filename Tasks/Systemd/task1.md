![image](https://github.com/user-attachments/assets/9cf41d48-0631-4f9b-af0d-ebc21ac1a167)# Юниты
## 1. Что такое systemd юнит?
**Systemd** — это система инициализации и менеджер служб для Linux. 
**Юниты (units)** — это основные объекты, с которыми работает systemd. Каждый юнит описывает ресурс, которым systemd управляет. 
## 2. Проверьте статус любого systemd юнита, какую информацию выводит эта команда?
```bash
systemctl status sshd.service
```
## 3. Попробуйте остановить сервис.
```bash
systemctl stop sshd.service
```
## 4. Перезапустите его.
```bash
systemctl restart sshd.service
```
```bash
systemctl status sshd.service
```
## 5. Удалите из автозагрузки.
```bash
systemctl disable sshd.service
```
```bash
systemctl is-enabled sshd.service
```
## 6. Верните обратно.
```bash
systemctl enable sshd.service
```
```bash
systemctl is-enabled sshd.service
```
## 7. Что такое таймеры?
**Таймеры** (timers) — это юниты, которые используются для планирования запуска других юнитов (обычно служб) по расписанию или через определённые интервалы времени.
