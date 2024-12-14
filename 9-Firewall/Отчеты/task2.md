1. **Удаляем iptables, становим firewalld**  
    Удаляем iptables:
    ```
    systemctl stop iptables
    apt-get remove iptables
    ```

    Ставим firewalld: 
    ```
    apt-get install firewalld
    sudo systemctl start firewalld
    sudo systemctl enable firewalld
    ```

---

2. **Проверяем ssh**  
    Проверяем что firewalld запущен:  
    ![Вывод](image-2.png)

    Пробуем теперь подрубиться:  
    ![Вывод](image-1.png)

    Можно посмотреть правила:  
    ![Вывод](image-3.png)
---

3. **Открываем порт**  
    ```
    firewall-cmd --zone=public --add-port=22/tcp --permanent
    firewall-cmd --reload
    ```

    Обновленные правила:  
    ![Вывод](image-4.png)

---

4. **Вывод всех открытых портов**  
    `firewall-cmd --zone=public --list-ports`

    ![Вывод](image-5.png)

---

5. **Порты по названию сервиса**  
    Вывод всех портов:
    `firewall-cmd --get-services`  
    ![Вывод](image-6.png)

    Добавление сервиса:
    `firewall-cmd --zone=public --add-service=ssh --permanent` 
    У нас уже добавлено:  
    ![Вывод](image-7.png) 
    
    Чтобы убедиться, что сервис был успешно добавлен:
    `firewall-cmd --zone=public --list-services`  
    ![Вывод](image-8.png)

    После внесения изменений перезагрузагружаем firewalld:  
    `firewall-cmd --reload`

---

678. **Подключаемся к самбе**
    Не получилось:  
    ![Вывод](image-9.png)

    Открываем порт самбы:
    ```
    sudo firewall-cmd --zone=public --add-service=samba --permanent
    ```
    ![Вывод](image-10.png)

    Проверяем:
    
