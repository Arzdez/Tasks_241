# Task3 Systemd
## 1. Посмотрите журналы ssh
```bash
journalctl -u sshd
```
sshd типа daemon

## 2. Выведите журналы в реальном времени
```bash
journalctl -u sshd -f
```

## 3. Вывести лог в реальном времени для службы sshd
```bash
journalctl -u sshd -f
```

## 4. Можно ли без комады journalctl прочитать логи systemd?
Да, можно логи хранятся в /var/log/jornald

## 5. Сколько будет 2-2?
2 -2 = 0 (надеюсь)