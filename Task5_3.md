1. Посмотретите журналы ssh

```bush
journalctl -u ssh
```

![image](https://github.com/user-attachments/assets/bca4bf37-0d13-4871-81a5-35bf73e16770)


---

2. Выведите журналы в реальном времени

```
journalctl -u ssh -f
```

![image](https://github.com/user-attachments/assets/f609555e-191d-4cca-bd77-312680e689cf)


---

3. Выведите лог в реальном времени для службы sshd

```
journalctl -u sshd -f
```

![image](https://github.com/user-attachments/assets/cccb4c73-6222-40c7-bc5a-6bf0fc0af7cb)


---

4. Можно ли без команды journalctl прочитать логи systemd?

Нет

---

5. Сколько будет 2-2?

0
