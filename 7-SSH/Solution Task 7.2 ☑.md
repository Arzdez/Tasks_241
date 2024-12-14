## **1. Где хранятся пользовательские и системные настройки подключения?**

Системные хранятся в `/etc/openssh/ssh_config`.
Пользовательские хранятся в `~/.ssh/config`.
## **2. Что за файл options?**

```bash
sudo find / -name "options"
```

```bash
find: ‘/run/user/1000/doc’: Отказано в доступе  
/usr/lib/recovery-mode/options  
/etc/ppp/options  
/proc/fs/ext4/sda3/options  
/sys/kernel/tracing/osnoise/options  
/sys/kernel/tracing/options  
/sys/kernel/debug/tracing/osnoise/options  
/sys/kernel/debug/tracing/options  
/sys/devices/pnp0/00:05/options  
/sys/devices/pnp0/00:03/options  
/sys/devices/pnp0/00:01/options  
/sys/devices/pnp0/00:04/options  
/sys/devices/pnp0/00:02/options  
/sys/devices/pnp0/00:00/options  
/home/cudok/.config/google-chrome/Default/Extensions/jaoafpkngncfpfggjefnekilbkcpjdgp/8.0.3_0/options  
/home/cudok/.config/JetBrains/IdeaIC2024.3/options  
/home/cudok/.config/JetBrains/IdeaIC2024.2/options  
/home/cudok/VictoriaMetrics/vendor/github.com/AzureAD/microsoft-authentication-library-for-go/apps/internal/options  
/home/cudok/.vscode/extensions/ms-python.vscode-pylance-2024.11.3/dist/typeshed-fallback/stubs/flake8/flake8/options  
/home/cudok/.vscode/extensions/ms-python.vscode-pylance-2024.12.1/dist/typeshed-fallback/stubs/flake8/flake8/options
```

Это если на ПК, а если на сервере, то вот:

```bash
/sys/kernel/tracing/options  
/sys/kernel/debug/tracing/options  
/sys/devices/pnp0/00:03/options  
/sys/devices/pnp0/00:01/options  
/sys/devices/pnp0/00:02/options  
/sys/devices/pnp0/00:00/options  
/etc/net/ifaces/ens4/options  
/proc/fs/ext4/sda1/options
```

Возможно, речь шла о файлах, относящимся к ssh. В таком случае они могут быть частью пользовательского конфига. Он хранит параметры для управления поведением SSH клиента или сервера.

## **3. Отредактируйте файл options так, чтобы можно было подключаться не вводя имя пользователя и порт.**

```bash
sudo nano ~/.ssh/config
```

```bash
Host arzdez
    HostName 95.31.204.147
    User student
    Port 214
```
## **4. Назовите подключение удобным для вас способом.**

```bash
cat ~/.ssh/config
```

```bash
Host arzdez  
   HostName 95.31.204.147  
   User student  
   Port 214
```

## **5. Проверьте работоспособность.**

```bash
cudok@syscudo:~$ ssh arzdez  
```

```bash
student@95.31.204.147's password:    
Last login: Thu Dec 12 23:40:29 2024 from 217.65.223.39  
[student@S-vm-214 ~]$
```