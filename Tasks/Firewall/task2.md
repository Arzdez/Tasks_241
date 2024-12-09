## Открываем firewald
## 1. Удалите iptables и установите firewalld.
```bash
apt-get remove iptables
```
```bash
apt-get install firewalld
```
Проверка, что служба firewalld запущена и включена на автозагрузки.
```bash
sudo systemctl enable firewalld
sudo systemctl start firewalld
```
## 2. Попробуйте также проверить возможность подключения по ssh.
```bash
ssh student@95.31.204.147 -p 234
```
Подключиться всё также можно.
## 3. Если её нет, то откройте порт.
На случай открою, даже если можно подключиться.
```bash
firewall-cmd --zone=public --add-port=234/tcp --permanent
```
```bash
firewall-cmd --reload
```
## 4. Выведите список открытых портов с помощью firewall-cmd.
```bash
firewall-cmd --zone=public --list-ports
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/firewall/Tasks/Firewall/images/Screenshot%202024-12-09%20100934.png)
## 5. Можно ли там добавить порты по названию сервиса?
Да можно. Например для HTTP сервиса.
```bash
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --reload
```
## 6. На вашей локальной виртуальной машине попробуйте подключиться к серверу samba из предыдущих заданий.
```bash
smbclient -L //188.235.151.139 -U lunis
```
Подключиться можно.
## 7. Если не получилось, то откройте нужные порты.
На случай открою, даже если можно подключиться.
```bash
firewall-cmd --zone=public --add-service=samba --permanent
```
```bash
firewall-cmd --reload
```
## 8. Сделайте так чтобы изменения были постоянными.
При использовании параметра `--permanent` изменения сохраняются в конфигурации firewalld. Так что я уже это сделала под пунктом 7.
