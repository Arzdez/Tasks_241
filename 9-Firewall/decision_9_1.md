
# Открываем iptables

## 1. Установите iptables

```bash
sudo apt-get install iptables
```

## 2. Проверьте осталась ли возможность подключения по ssh к вашему серверу


<div style="text-align: center;">
  <img src="Screenshoots\Screen1.png" alt="Мой скриншот" />
</div>

**Да**


## 3. Почему может пропасть такая возможность?
Могут заблокироваться входящие соединенияна на 22 порт, который по умолчанию использует ssh.


## 4. Откройте нужный порт на сервере чтобы восстановить подключение

```bash
sudo iptables -A INPUT -p tcp --dport 206 -j ACCEPT
```

- `-A` - append (Добавить)
- `INPUT` - цепочка для входящих пакетов (правило)
- `-A INPUT` - добавляет правило в цепочку входящих пакетов
- `-p` - указывает протокол, который будет использоваться для фильтрации пакетов
- `tcp` - тип протокола
- `--dport` - указывает целевой порт
- `-j` - действие, которое будет выполнено для пакетов
- `ACCEPT` - пакеты, удовлетворяющие этому правилу (входящие TCP-соединения на порт 206), будут разрешены, то есть, они смогут пройти через фаервол.



# 5. Это будет udp или tcp прот?

`tcp`, т.к `ssh` использует `tcp` протокол для установления соединений.


# Сохраняем

## 6. Сохраняются ли записанные вами правила после перезагрузки?

Нет

## 7. Как их сохранить?

Сначала зайти под рут правами
`sudo -i`

```bash
iptables-save  > /etc/iptables.rules
# без рут прав эта команда не работает, хз почему
```

```bash
sudo nano /etc/systemd/system/iptables-restore.service
```

```ini
[Unit]
Description=Restore iptables firewall rules
After=network-pre.target
Wants=network-pre.target

[Service]
Type=oneshot
ExecStart=/sbin/iptables-restore /etc/iptables.rules
# (which iptables-restore) - чтобы найти путь
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```

- `ExecStart` — команда, которая восстанавливает правила iptables из файла `/etc/iptables.rules`.
- `RemainAfterExit` — сохраняет статус активным после выполнения команды.
- `WantedBy=multi-user.target` — сервис активируется в многопользовательском режиме.

```bash
sudo systemctl daemon-reload
```

```bash
sudo systemctl enable iptables-restore.service
sudo systemctl start iptables-restore.service
```
```bash
sudo systemctl status iptables-restore.service
```

<div style="text-align: center;">
  <img src="Screenshoots\Screen2.png" alt="Мой скриншот" />
</div>
