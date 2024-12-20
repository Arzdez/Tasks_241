# Открываем firewald

1. Удалите iptables и установите firewalld
```bush
apt-get remove iptables
apt-get install firewalld
```
```bush
systemctl start firewalld
systemctl enable firewalld
```
---
2. Попробуйте так-же проверить возможность подключения по ssh

Подключается:

![image](https://github.com/VeronikaSteklo/Tasks_241_zagudalina/blob/78606282d203844d8b84b53a1840ca6a5d4bcb28/9-Firewall/images/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202024-12-20%20111539.png)

---
3. Если её нет то откройте порт
```bush
firewall-cmd --permanent --add-port=210/tcp
firewall-cmd --reload
```
---
4. Выведите список открытых портов с помощью firewall-cmd

```bush
firewall-cmd --list-ports
```
![image](https://github.com/VeronikaSteklo/Tasks_241_zagudalina/blob/78606282d203844d8b84b53a1840ca6a5d4bcb28/9-Firewall/images/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202024-12-20%20113240.png)

---
5. Можно ли там добавить порты по названию сервиса?

Можно.
```bush
firewall-cmd --permanent --add-service=ssh
firewall-cmd --reload
```
---
6. На вашей Локальной виртуальной машине попробуйте подключиться к серверу samba из предыдущих заданий
```bush
smbclient -L //192.168.137.153 -U veronika_steklo
```
---
7. Если не получилось то откройте нужные порты
```bush
firewall-cmd --permanent --add-service=samba
firewall-cmd --reload
```
---
8. Сделайте так чтобы изменения были постоянными

Правила, добавленные с --permanent, сохраняются автоматически.
