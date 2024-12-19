# Работа с iptables
Для начала позволим еще одному пользователю подключаться к серверу по ключу,
выполнив действия из заданий, связанных с ssh, для более безопасной настройки брандмауэра.
```
ssh student
```
![1.png](/solutions/Firewall-1/screenshots/1.png)

Уставливаем пакет iptables на сервере.
```
sudo apt-get install iptables
```
Если в правилах iptables внесены изменения, которые блокируют порт ssh, то по нему нельзя будет подключиться.
Также использование другого брандмауэра, например firewalld, может также заблокировать порт ssh.

Чтобы открыть нужный порт на сервере, необходимо ввести следующую команду:
```
sudo iptables -A INPUT -p tcp --dport 230 -j ACCEPT
```
Указывается протокол tcp, так как именно его использует ssh.

Чтобы правила iptables автоматически сохранялись после перезапуска необходимо создать пустой файл
командой `sudo touch /etc/network/if-post-down.d/iptables` со следующим содержимым:
```
#!/bin/sh
touch /etc/iptables.rules
chmod 640 /etc/iptables.rules
iptables-save > /etc/iptables.rules
exit 0
```
Данный скрипт сохраняет текущие правила iptables в файл `/etc/iptables.rules`,
изменяет права доступа к нему в целях безопасности и выгружает текущие правила в него.

Затем необходимо добавить ему флаг исполняемости командой: `sudo chmod +x /etc/network/if-post-down.d/iptables`.

Чтобы правила iptables автоматически восстанавливались после перезапуска необходимо создать пустой файл
командой `sudo touch /etc/network/if-pre-up.d/iptables` со следующим содержимым:
```
#!/bin/sh
iptables-restore < /etc/iptables.rules
exit 0
```
И добавить ему флаг исполняемости командой: `sudo chmod +x /etc/network/if-pre-up.d/iptables`.
