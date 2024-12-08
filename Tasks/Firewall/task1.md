# Открываем iptables
## 1. Установите iptables.
```bash
apt-get install iptables
```
## 2. Проверьте осталась ли возможность подключения по ssh к вашему серверу.
```bash
iptables -L -v
```
```bash
ssh student@95.31.204.147 -p 234
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/firewall/Tasks/Firewall/images/Screenshot%202024-12-08%20121933.png)
Осталась.
## 3. Почему может пропасть такая возможность?
Возможность подключения по SSH к серверу может исчезнуть по нескольким причинам:
### 1. Сетевые проблемы
Сбои в интернет-соединении как на стороне сервера, так и на стороне клиента могут привести к недоступности сервера.

### 2. Правила безопасности
Изменения в правилах `iptables` могут блокировать порт SSH (обычно 22). Также использование других брандмауэров, таких как `firewalld`, может также блокировать порт SSH.

### 3. Служба SSH недоступна
Если служба SSH остановлена, попытки подключения будут безуспешными.

### 4. Изменения в конфигурации SSH
Конфигурация SSH может быть изменена таким образом, что доступ разрешён только с определённых IP-адресов или отключение аутентификации по паролю и требование использования SSH-ключей.

### 5. Безопасность и блокировки
Неправильные права на файлы конфигурации SSH могут привести к отказу в доступе.

### 6. Лимиты и квоты
Если сервер настроен на ограничение количества одновременных SSH-подключений, новые попытки подключения могут быть отклонены.

## 4. Откройте нужный порт на сервере чтобы восстановить подключение.
```bash
iptables -A INPUT -p tcp --dport 234 -j ACCEPT
```
## 5. Это будет udp или tcp порт?
SSH использует TCP протокол для установления соединений.
# Сохраняем
## 6. Сохраняются ли записанные вами правила после перезагрузки?
Нет, не сохраняются.
## 7. Как их сохранить?
```bash
vim /etc/systemd/system/iptables-restore.service
```
```ini
[Unit]
Description=Restore iptables firewall rules
After=network-pre.target
Wants=network-pre.target

[Service]
Type=oneshot
ExecStart=/usr/sbin/iptables-restore /etc/sysconfig/iptables
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```
`After=network-pre.target` и `Wants=network-pre.target` обеспечат запуск этого юнита до запуска сетевых сервисов, чтобы правила были применены до их старта.
```bash
systemctl daemon-reload
```
```bash
sudo systemctl enable iptables-restore.service
```
```bash
sudo systemctl start iptables-restore.service
```
