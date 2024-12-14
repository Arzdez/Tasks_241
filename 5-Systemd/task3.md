#Журнальчики

**1) Посмотрите журналы ssh.**

```sh
journalctl -u ssh
```

**2) Выведите журналы в реальном времени**

```
journalctl -fu ssh
```

**3) Выведите лог в реальном времени для службы sshd**

```sh
sudo journalctl -fu sshd
```

**4) Можно ли без комады journalctl прочитать логи systemd?**

Путь к физически лежащим логам systemd:
```sh
ls /var/log/journal/
```

Без journalctl логи можно читать только в том случае, если они настроены на конкрентое сохранение в конфиге. В любых других случаях получить логи будет едва понятный текст.

![image](https://github.com/user-attachments/assets/73a7fcba-e5b2-49ff-bb6f-c4990e9581c5)

**5) Сколько будет 2-2?**

```sh
#!/bin/bash
ONE=2
TWO=2
expr $ONE + $TWO
```
