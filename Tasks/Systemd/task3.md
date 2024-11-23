# Журнальчики
## 1. Посмотрите журналы ssh.
```bash
journalctl -u sshd
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd_3/Tasks/Systemd/images/Screenshot%202024-11-23%20194347.png)
## 2. 3. Выведите журналы в реальном времени.
```bash
journalctl -u sshd -f
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/systemd_3/Tasks/Systemd/images/Screenshot%202024-11-23%20194414.png)
## 4. Можно ли без комады journalctl прочитать логи systemd?
Да, можно.
```bash
apt-get install rsyslog
```
```bash
systemctl enable rsyslog
```
```bash
systemctl start rsyslog
```
```bash
echo "auth,authpriv.* /var/log/sshd.log" >> /etc/rsyslog.d/sshd.conf
```
```bash
touch /var/log/sshd.log
chmod 600 /var/log/sshd.log
chown root:root /var/log/sshd.log
```
```bash
systemctl restart rsyslog
```
```bash
tail -f /var/log/sshd.log
```
## 5. Сколько будет 2-2?
2-2 = 0
