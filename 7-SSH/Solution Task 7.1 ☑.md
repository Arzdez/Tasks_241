## **1. Какой по умолчанию используется порт для подключения?**

22  порт (вроде бы, 8022 тоже подходит).

## **2. Можно ли его изменить? Если да то как?**

Можно. 
Сначала нужно открыть файл конфигурации ssh:
```bash
sudo nano /etc/ssh/sshd_config
```

Затем с помощью ctrl+w найти строку #Port 22, после чего раскомментировать её, заменив 22 на любой другой порт (в моём случае, 214). После, чтобы всё точно сработало, выполнить команду:

```bash
sudo systemctl restart sshd
```

## **3. Какая служба отвечает за обработку запросов на подключения по SSH?**

Служба `sshd` (OpenSSH Daemon).

## **4. Какой файл конфигурации отвечает за его настройку?**

```bash
/etc/ssh/sshd_config
```

##  **5. Попробуйте подключиться по SSH к предоставленному вам серверу**

```bash
ssh -p 214 student@95.31.204.147
```

Потом пароль нужно ввести: `s///`.

Затем появится следующая строчка, которая говорит, что мы успешно подключились.

`[student@S-vm-214 ~]$                                       `

## **6. Отредактируйте файл настроек на сервере так, чтобы была возможность подключиться к серверу, используя пользователя root**

Нужно открыть на сервере файл `/etc/ssh/sshd_config` следующим образом:
```bash
sudo vi /etc/ssh/sshd_config
```

Затем найти строку `PermitRootLogin prohibit-password` с помощью /.
Если такая строчка есть, то заменить её на `PermitRootLogin yes`, иначе - просто вписать `PermitRootLogin yes`.`

После нужно сохранить изменения, прописав `sudo systemctl restart sshd`.

## **7. Измените количество ошибок ввода пароля перед сбросом соединения, покажите эти изменения**

```bash
sudo vi /etc/openssh/sshd_config
```

В моём случае, через / нужно найти `MaxAuthTries` и раскомментировать его, ну и изменить число 6 на 7 (будет в итоге 7 попыток ввести пароль).

Вот изменения:

```bash
#LoginGraceTime 2m  
#PermitRootLogin without-password  
#StrictModes yes  
MaxAuthTries 7  
#MaxSessions 10
```

## **8. Создайте пользователя `ssh-user` и попробуйте им подключиться к серверу**

```bash
sudo adduser ssh-user
sudo passwd ssh-user
```

Мне он предложил пароль свой пароль, и я согласился, после чего вывелось это: 

```bash
passwd: all authentication tokens updated successfully.  
[student@S-vm-214 ~]$                                    
```

А это я подключился:

```bash
cudok@syscudo:~$ ssh -p 214 ssh-user@95.31.204.147  
ssh-user@95.31.204.147's password:    
[ssh-user@S-vm-214 ~]$
```

## **9. Ограничьте пользователю `ssh-user` возможность подключения к серверу**

```bash
sudo vi /etc/openssh/sshd_config
```

После чего нужно добавить `DenyUsers ssh-user`:

```
ssh-user@95.31.204.147's password:    
Permission denied, please try again.  
ssh-user@95.31.204.147's password:
```

## **10. Как вы это сделали?**

См. в пункт 9.

## **Что хранится в файле known_hosts?**

`~/.ssh/known_hosts`

Он хранит **отпечатки публичных ключей** удалённых серверов, чтобы в будущем можно было проверить подлинность этих серверов и избежать атак.

При первом подключении к серверу через ssh, его публичный ключ сохраняется на клиенте в файле **`known_hosts`**. Это делается для того, чтобы в будущем проверить, не изменился ли сервер.

```bash
cat ~/.ssh/known_hosts
```

```bash
|1|pTBbXJ1yUpdCo7ai+xWz4AciBW4=|N99NbaHTPSydZ6VoAS6XRBt3Enk= ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuk4P6xvu1PglmXYiUjh9/lcWCAGoC/YEYb4MTUrpJP  
|1|um7q2G5o/ZhG+e9hc4wfx1KSbkc=|ZaUldJw/P8ug3vsdF6F6kJ26xwE= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBDqVQb/lUnbU121+CS1Xw2  
cwECNyM1gEFLEYTG7zxt2N2iQRh7fYLviAXJKcUsomZQAQDRP4BdloTuDg5UydAJk=  
|1|zv2qBx+8kOXcCKJniqEech/bDwM=|jPG8Fyg5OU/hAbtFpJalxig57nw= ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMqqnkVzrm0SdG6UOoqKLsabgH5C9okWi0dh2l9GKJl  
|1|0YJYcwqJPO1/4A60gduM9VOVKUg=|saQzjV84lELEoWjCnSCEH3HfFlQ= ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFNRzf2fgIcZhL0po2yEwMECCkY64Mf58EWn1XKHn9Ae  
|1|164Y+Oizr0mSFfs+rmRSW14sh8A=|tKUKaBO8g6G0ahcCcLbVjIEhdCQ= ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDm8rID5GNrcD8y77halAnV38STJ8TwOnXxvretqtHVEQq7RjBfzx0mT9  
by4lgCSxr2vcht1IqXmmhzf2ttHbrCfrKwCmp1e05LYKAZp0fXHjrSRrITF7N+5FHxfnQ1RmzF3BGWZHojEro5Mx/0lg+zWny0C/r4B5Hnn+ND0aHDyysJe5DGY9tkczLDx5Qu3ZqOadVnDO07YP5hsjI0H  
Ru3kS+sGbi3F07cDTFufhhoTXIOt/HI6Z1hUoSY1ViUQn8xXonLGqWb3iIsmuRtjkddT8PGEo9OPcKtsWiwwqWVsGxE77+SE0I8xzPxkaJUA+8FlwYCuCkP5Fe0g9skbwJOmqF81BPkC/n/IQ3O+Smz9FQN  
+4OYQbaC127bD1GrxnhycojQy7t4srh/M7vii172Tw8GuEO7uMnxCje7INmGFj8kzQ6LwG4A/4rbLs1Cag6SJaG0n4oFvfxviRT++VZ9wEOBjzg+mJCkm7C5MRjmFe7Mr+obwHr136f633Sk88E=  
|1|nafAhQM2vTxsC/GkS5LQ23/N07I=|6G2v4Xd3qTJ39Reuf31LsDZqzMU= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBCkIqzv1P+78Zd2mRbkjGu  
8h5mh46li/9hwYt+0zuiWGsRxG4+LAdQVLRWC5dRVtIugwTgSnUDXlAfW/TQQvLuc=  
|1|BCV1VHvqwORZEpNaUa6zT5/kp0E=|I8ikrL2f5KbRyji8V+dRW9sudsY= ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ+ykB8MJ9hOEPaJr9onPCaD9CqxEkJFil/bpprL6Hcz  
|1|XN4Hl4SMtMXzO/PHf6LJXDHquoM=|RUBbqh1DX5PYMKqGrBQlec1842Y= ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCI+LPX85KNLpO8qEUG6a/y7CDXaKk5QarrAFzr/EiyDvkWpUWdHCkiHG  
YQefhhDeNCdqOkWVNggPRGKxrVtjadxFDRxpG8dUEtPFU8+iWVGYuOsKkw2T4jmY6370v+XVvHnz0bHdxCJDvzacX9ZNtG1mIaB+FEikEmiXNkdihthDE+ExqrYRqTAWhsHGtHx9zgVLQKgT0jqW8chR3B/  
2qKC28IhfuVf+r+IVL71ddtlCbOtr/pVIPC24BB+eMdFgHu2iUXr98Y+76T/YbYKejlyWVEDqB7DZvoUe6x290OXXJKdt3nWaKcqAPyIZPkQgYzgwhA5cbvJPGR9gGlDNGjDGCFL7VZVHloczcMywLHimct  
9CofqDWukYeWvy2GIxoyl+oL0muS0nP/sVVhLU2MEDWppn2zDDpvquQUwUbHxOO2DHvZYGwBdtm9TH9wLvKL/pagzQ1VM/8LAj+aueZBNO5fIbcfEmjMNWQT1Pp30Af0HH/pxZP6tFXbHBKW3tc=  
|1|TclQvcosTUWGIQh8oGhPxOHJJvk=|f1yJ5bKWRTg4NC1XlpGAEyQL0QQ= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBNBHc2EgJRTS6i+vdUDRXx  
4j0/3bPvTjbaBCmDsT9lkeBRlutIzlKbXaKVpmx7H2QdrxHC7Awklt81a54OYeQgE=  
|1|A8q0wszuN+7JobOYnwGuyuYtoBw=|YxTq875+nNAirKVmRGLKBNkMCho= ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEq4j+LJ/OnEWwL+PZHKuIu10QLb+9Sq1glYZqWKdjTJ  
|1|1ddOODY1OJ5nOmiqDAV7FZlsmCc=|hZdc/G2NTO5yxJy0kelle+SnNqc= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBK8PlqVC5ETeRUZnkxOad5  
Llw5YASe9F7YjybZPWkKihPO35QHfpl300xsks38XyaRwI+nrw2/qnLWrarr14Q2k=
```
