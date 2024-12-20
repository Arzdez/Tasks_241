# Открываем iptables

1. Установите iptables

```bush
apt-get install iptables
```

---

2. Проверьте осталась ли возможность подключения по ssh к вашему серверу

Есть:

![image](https://github.com/VeronikaSteklo/Tasks_241_zagudalina/blob/43fd6e1bfbdab4f55b5881f772c292bd9622dc86/9-Firewall/images/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202024-12-19%20133521.png)

---

3. Почему может пропасть такая возможность?

Если в правилах iptables нет разрешения на входящие подключения на порт 210 (TCP), 
соединение по SSH будет заблокировано. 
Это может произойти, если правила iptables настроены неправильно или 
введено правило, запрещающее все входящие соединения.

---

4. Откройте нужный порт на сервере чтобы восстановить подключение

```bush
sudo iptables -A INPUT -p tcp --dport 210 -j ACCEPT
```

---

5. Это будет udp или tcp прот?

tcp

---

# Сохраняем

1. Сохраняются ли записанные вами правила после перезагрузки?

Нет

---

2. Как их сохранить?

```bush
iptables-save > /etc/iptables/rules.v4
ip6tables-save > /etc/iptables/rules.v6
```

Выгрузить: 
```bush
iptables-restore < /etc/iptables/rules.v4
ip6tables-restore < /etc/iptables/rules.v6
```
