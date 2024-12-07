**1. Что такое systemd юнит?**

Systemd-юнит — это базовый объект в системе systemd, который управляет состоянием сервисов, устройств, точек монтирования, таймеров и других ресурсов. Юнит — это конфигурационный файл, определяющий поведение конкретного компонента.

---

**2. Проверье статус любого systemd юнита, какую информацию выводит эта кманда?**

```bash
systemctl status sshd
```

![image](https://github.com/user-attachments/assets/c1085595-b42c-4511-aeb7-fa5bb510f3ea)

Вывод:

- Активен ли сервис: active (running), inactive, failed.
- Последние события: записи логов.
- Список процессов: PID, состояние.
- Зависимости: какие юниты связаны с данным.

---

**3. Попробуйте оставновить сервис.**

```bash
systemctl stop sshd
```

![image](https://github.com/user-attachments/assets/9875c3ff-8633-4551-94ef-dea848f7de49)


---

**4. Перезапустите его.**

```bash
systemctl restart sshd
```

![image](https://github.com/user-attachments/assets/e9b74905-abfd-4cf4-a0b8-5d84fd87583a)


---

**5. Удалите из автозагрузки.**

```bash
systemctl disable sshd
```

![image](https://github.com/user-attachments/assets/7dccfce7-2c20-410c-9c62-156ec773d62c)


---

**6. Верните обратно.**

```bash
systemctl enable sshd
```

![image](https://github.com/user-attachments/assets/0b85670e-5e27-418c-86a1-ee34b637bafc)


---

**7. Что такое таймеры?**

Таймеры в systemd — это механизм, используемый для выполнения задач через определённые интервалы или в заданное время.
