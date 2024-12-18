1. **Журналы  ssh**  
    `journalctl -u ssh`
    ![Вывод](image-9.png)

---

2-3. **Журналы в реальном времени**  
    `journalctl -u sshd -f`
    ![Вывод](image-10.png)

---

4. **Логи systemd без journalctl**  
    Да, помимо централизованного журнала journald, ALT Linux хранит логи отдельных сервисов и приложений в каталоге /var/log

---

5.   
    ![Вывод?](image-11.png)