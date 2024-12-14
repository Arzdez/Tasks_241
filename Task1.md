### Установить пакеты samba bind bind-utils и любой питоновский модуль
```
apt-get install samba
apt-get install bind
apt-get install bind-utils
apt-cache search python3-module
apt-get install python3-module-sympy
```

### Вывести: 2.1) Версию 2.2) Файлы пренадлежащие пакету 2.3) Зависимости

![image15.png](images/image15.png)
```
rpm -qR python3-module-sympy
```

### Проверить службы установленных пакетов, если не запущены - запустить, добавить в автозагрузку

![image16.png](images/image16.png)

Запуск службы:
```
systemctl start bind
```
Добавление в автозагрузку:
```
systemctl enable bind
```

### Можно ли включить и добавить в автозагрузку одной командой

![image17.png](images/image17.png)

### Найти и вывести конфигурационные файлы пакетов у которых они есть

![image18.png](images/image18.png)
