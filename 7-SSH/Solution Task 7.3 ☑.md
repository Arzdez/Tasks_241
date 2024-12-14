## **1. Что такое ssh ключи и зачем они нужны?**

**SSH ключи** — это пара криптографических ключей, используемых для аутентификации при подключении к серверам через протокол SSH (**Secure Shell**). Они заменяют парольный вход и состоят из двух частей:

1. **Приватный ключ**:
    - Хранится у клиента на локальном компьютере и должен быть защищён.
    - Используется для создания цифровой подписи, подтверждающей личность владельца.

1. **Публичный ключ:**
    - Передаётся серверу и добавляется в список доверенных ключей.
    - Используется сервером для проверки подписи, созданной приватным ключом.

## **2. Как их создать?**

`ssh-keygen`

## **3. Создайте пару публичный/приватный ключ ed_25519, где они хранятся?**

`ssh-keygen -t ed25519 -C "Connect to arzdez.ru"`

где:
- `-t` - тип ключа;
- `-C` - коммент;

Кстати, после ввода команда просит ввести что-то, но я Enter прокликал.

```bash
Generating public/private ed25519 key pair.  
Enter file in which to save the key (/home/cudok/.ssh/id_ed25519):     
Enter passphrase (empty for no passphrase):    
Enter same passphrase again:    
Your identification has been saved in /home/cudok/.ssh/id_ed25519  
Your public key has been saved in /home/cudok/.ssh/id_ed25519.pub  
The key fingerprint is:  
SHA256:Cgu52RB/NkGf8Diy3fqFJ5xvO1hk2J9dU5ehvHnVPXI Connect to arzdez.ru  
The key's randomart image is:  
+--[ED25519 256]--+  
|      o        .o|  
|     . = .  . ..=|  
|  . . + +o   + E*|  
|   + + +. +   =.+|  
|  + + = So . = o.|  
|   * = = o. o o  |  
|  o o o =oo      |  
|       ..=o      |  
|        ..oo     |  
+----[SHA256]-----+
```

Они сохранились в:

```bash
Your identification has been saved in /home/cudok/.ssh/id_ed25519  
Your public key has been saved in /home/cudok/.ssh/id_ed25519.pub
```

## **4. Скопируйте публичный ключ на ваш сервер, в каком файле он будет храниться?**

```bash
cudok@syscudo:~$ ssh-copy-id arzdez
```

Это выведет следующее:

```bash
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/cudok/.ssh/id_ed25519.pub"  
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed  
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
```

Затем попросит пароль, а после правильно введённого пароля выведет это:

```bash
Number of key(s) added: 1  
  
Now try logging into the machine, with:   "ssh 'arzdez'"  
and check to make sure that only the key(s) you wanted were added.
```

## **5. Попробуйте подключиться к серверу, у вас запросили пароль?**

```bash
ssh arzdez
```

Вывод:

```bash
Last login: Thu Dec 12 23:46:27 2024 from 217.65.223.39  
[student@S-vm-214 ~]$
```

Ураааа! Получилось!

## **6. Запретите подключение с паролем для всех пользователей, оставьте только с помощью ключа.**

```bash
sudo /etc/ssh/sshd_config
```

```bash
PasswordAuthentication no
ChallengeResponseAuthentication no
UsePAM no
PubkeyAuthentication yes
```

Эти строчки нужно раскомментировать или добавить в зависимости от нужды.

- **`PasswordAuthentication no`** — отключает вход с использованием пароля.
- **`ChallengeResponseAuthentication no`** — отключает альтернативные способы аутентификации.
- **`UsePAM no`** — отключает модуль PAM (опционально, для исключения входа по паролю).
- **`PubkeyAuthentication yes`** — включает авторизацию с использованием ключей.

```bash
sudo systemctl restart sshd
```

Итак, проверим:

```bash
ssh arzdez
```

```bash
Last login: Fri Dec 13 01:34:29 2024 from 217.65.223.39  
[student@S-vm-214 ~]$
```

Ураааа! Всё получилось!