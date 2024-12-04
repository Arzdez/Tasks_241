# Журнальчики

## 1. Посмотретите журналы ssh
```bash
sudo journalctl | grep ssh
```
 - grep ssh: ищет в этом выводе строки, содержащие слово ssh

## 2. Выведите журналы в реальном времени
```bash
sudo journalctl -f | grep ssh
```

## 3. Выведите лог в реальном времени для службы sshd
```bash
sudo journalctl -u sshd -f
```

<div style="text-align: center;">
  <img src="Screnshoots\Screen4.png" alt="Мой скриншот" />
</div>

## 4. Можно ли без комады journalctl прочитать логи systemd?
```bash
sudo strings /var/log/journal/35ec984011f735aae9d5b4d666db4c88/system.journal
```

- 35ec984011f735aae9d5b4d666db4c88 — это название каталога журнала в директории /var/log/journal/


## 5. Сколько будет 2-2?
0?
<div style="text-align: center;">
  <img src="Screnshoots\Screen5.png" alt="Мой скриншот" />
</div>