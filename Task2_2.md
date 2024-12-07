**1. Запретите пользователю user1 из предыдщуего задания выполнять вход в систему**

```bush
sudo usermod -L user1
```

---

**2. Как вы это сделали?**

Заблокировать учетную запись.

---

**3. Какие ещё способы это сделать вы знаете?**

1. Удаление пароля:

```bush
sudo passwd -l user1
```

2. Закрытие доступа через папку /etc/passwd.

---

**4. Можно ли создать пользователей с одинаковыми username?**

Нет, так как username должен быть уникальным в системе.