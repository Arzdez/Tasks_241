# Работа с firewalld
Удаляем iptables и устанавливаем firewalld, а также добавляем его в автозапуск и запускаем.
```
apt-get remove iptables
apt-get install firewalld
systemctl enable firewalld
systemctl start firewalld
```

Подключение по ssh все также остается возможным. Также, в отличие от брандмауэра iptables,
с установленным firewalld, при подключении теперь не отображается наш IP адрес.

![1.png](/solutions/Firewall-2/screenshots/1.png)

Открываем новый tcp порт, так как ssh использует именно такой протокол,
перезагружаем firewalld, чтобы применить изменения, и проверяем список открытых портов.
```
firewall-cmd --zone=public --add-port=22/tcp --permanent
firewall-cmd --reload
firewall-cmd --zone=public --list-ports
```
![2.png](/solutions/Firewall-2/screenshots/2.png)

Откроем порт по названию сервиса, например samba,
перезагружаем firewalld, чтобы применить изменения, и проверяем список добавленных сервисов.
```
firewall-cmd --zone=public --add-service=samba --permanent
firewall-cmd --reload
firewall-cmd --zone=public --list-services
```
![3.png](/solutions/Firewall-2/screenshots/3.png)

Вернемся в локальную виртуальную машину и попробуем подключиться к серверу samba из одноименного задания.
```
smbclient -L //192.168.56.101 -U sosnovskiim
```
![4.png](/solutions/Firewall-2/screenshots/4.png)

Если сделать этого не получится, то следует открыть порт сервиса samba, как описано выше.

Чтобы изменения конфигурации firewalld были постоянными, необходимо в конце команды добавлять флаг `--permanent`.
