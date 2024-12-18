# Ключики

## 1. Что такое ssh ключи и зачем они нужны?

**SSH-ключи** — это пара криптографических ключей (закрытый и открытый), которые используются для безопасной аутентификации и установления соединений по протоколу SSH (Secure Shell). Они заменяют парольный вход.

- **Открытый ключ (Публичный)**: передается серверу, на который происходит подключение.
- **Закрытый ключ (Приватный)**: хранится на локальном компьютере и используется для аутентификации.


## 2. Как их создать? 
```bash
ssh-keygen
```

## 3. Создайт пару публичный/приватный ключ ed_25519, где они хранятся?

```bash
ssh-keygen -t ed25519 -C "student@arzdez.ru"
```

- `-t` - тип ключа
- `-С` - комментарий

Можно указать где они будут храниться:
<div style="text-align: center;">
  <img src="Screnshoots\Screen8.png" alt="Мой скриншот" />
</div>


```bash
Your identification has been saved in /home/mostov/.ssh/id_ed25519.
Your public key has been saved in /home/mostov/.ssh/id_ed25519.pub.
```


## 4. Скопируйте публичный ключ на ваш сервер, в каком файле он будет храниться?

```bash
ssh-copy-id -p 206 student@95.31.204.147
```

<div style="text-align: center;">
  <img src="Screnshoots\Screen11.png" alt="Мой скриншот" />
</div>

Путь - `~/.ssh/authorized_keys`

## 5. Попробуйте подключиться к серверу, у вас запросили пароль?

```bash
ssh arzdez_server
```

<div style="text-align: center;">
  <img src="Screnshoots\Screen12.png" alt="Мой скриншот" />
</div>

Нет

## 6. Запретите подключение с паролем для всех пользователей, оставьте только с помощью ключа.

```bash
sudo nano /etc/openssh/sshd_config
```

```bash
PubkeyAuthentication yes # Разрешить с помощью ключей
PasswordAuthentication no # Запретить с помощью пароля
ChallengeResponseAuthentication no # Запретить другие способы
```

```bash
sudo systemctl restart sshd
```
<div style="text-align: center;">
  <img src="Screnshoots\Screen13.png" alt="Мой скриншот" />
</div>