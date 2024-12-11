# Открываем firewald

## 1. Удалите iptables и установите firewalld
```bash
sudo systemctl stop iptables # На всяктй останавливаем
sudo systemctl disable iptables
```

```bash
sudo apt-get remove --purge iptables
# --purge также очистка конфигурационных файлов
```

```bash
sudo apt-get install firewalld
```

```bash
sudo systemctl start firewalld
sudo systemctl enable firewalld
```
## 2. Попробуйте так-же проверить возможность подключения по ssh

<div style="text-align: center;">
  <img src="Screenshoots\Screen3.png" alt="Мой скриншот" />
</div>

**Получилось**

## 3. Если её нет то откройте порт
```bash
sudo firewall-cmd --zone=public --add-port=139/tcp --permanent
sudo firewall-cmd --zone=public --add-port=445/tcp --permanent
# port=(нужный порт)
```

## 4. Выведите список открытых портов с помощью firewall-cmd

```bash
sudo firewall-cmd --list-ports
```

## 5. Можно ли там добавить порты по названию сервиса?

```bash
sudo firewall-cmd --add-service=ssh --permanent
sudo firewall-cmd --reload
```


## 6. На вашей Локальной виртуальной машине попробуйте подключиться к серверу samba из предыдущих заданий
## 7. Если не получилось то откройте нужные порты

```bash
firewall-cmd --add-service=samba --permanent
firewall-cmd --reload
```


```bash
smbclient -L //10.0.2.15 -U mostov
```
<div style="text-align: center;">
  <img src="Screenshoots\Screen4.png" alt="Мой скриншот" />
</div>


## 8. Сделайте так чтобы изменения были постоянными

Когда  используешь  параметр `--permanent` в команде `firewall-cmd`, изменения сохраняются в конфигурации `firewalld`, и они остаются действительными после перезагрузки системы.(Пункт 7)