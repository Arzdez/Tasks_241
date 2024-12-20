# Открываем firewald

**1) Удалите iptables и установите firewalld**

```sh
apt-get remove iptables -y && apt-get install firewalld -y
```

**2) Попробуйте так же проверить возможность подключения по ssh.**

Мы снова можем без проблем подключаться по ssh, так как firewalld отключен:

![image](https://github.com/user-attachments/assets/d78aba52-d09c-4076-88ef-2480cde0fd1b)

**3) Если её нет, то откройте порт**

```sh
firewall-cmd --add-port=22/tcp --permanent
```

**4) Выведите список открытых портов с помощью firewall-cmd.**

```sh
firewall-cmd --list-all
```

![image](https://github.com/user-attachments/assets/c1bedfb7-13c4-4b92-a2bb-7003be9c8453)

**5) Можно ли там добавить порты по названию сервиса?**

```sh
firewall-cmd --add-service=ssh --permanent
firewall-cmd --reload
```

**6) На вашей локальной виртуальной машине попробуйте подключиться к серверу samba из предыдущих заданий.**

Подключиться к серверу с samba получилось:

![image](https://github.com/user-attachments/assets/cf69789d-789a-41bf-82bc-8ebcaac98938)

Но создать сервер с samba уже так не получится, так как будут заблокированы нужные для работы порты.


**7) Если не получилось, то откройте нужные порты.**

```sh
firewall-cmd --add-port=139/tcp --permanent
firewall-cmd --add-port=445/tcp --permanent
```

Или сразу весь сервис:

```sh
firewall-cmd --add-service=samba --permanent
```

**8) Сделайте так, чтобы изменения были постоянными.**

Все правила firewall-cmd с флагом --permanent автоматически сохраняются. Для подтверждения сохранения, необходимо просто перезагрузить firewalld:

```sh
systemctl restart firewalld
```

Перезагружаем систему и проверяем:

![image](https://github.com/user-attachments/assets/4747cada-619d-4271-bf8b-1fd5e39073d8)
