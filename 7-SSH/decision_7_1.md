# Настриваем

## 1. Какой по умолчанию используется порт для поключения?
По умолчанию используется 22 порт
```bash
cat /etc/openssh/ssh_config
```
или, `sshd_config`, если нужно изменить порт подключаемых соединений
<div style="text-align: center;">
  <img src="Screnshoots\Screen1.png" alt="Мой скриншот" />
</div>

## 2. Можно ли его изменить? если да то как?
Да нужно изменить конфигурационный файл.

## 3. Какая служба отвечает за обработку запросов на подключения по ssh?

`sshd` (Secure Shell Daemon)


## 4. Какой файл конфигурации отвечает за его настройку?

`/etc/openssh/sshd_config`

## 5. Попробуйте подключиться по ssh к предоставленному вам серверу

<div style="text-align: center;">
  <img src="Screnshoots\Screen2.png" alt="Мой скриншот" />
</div>

## 6. Отредактируйте файл настроек на сервере так, чтобы была возможность подключиться к серверу используя пользователя root

```bash
sudo nano /etc/openssh/sshd_config
```

Поменять строку `#PermitRootLogin prohibit-password` на `PermitRootLogin yes`

Потом перезупустить службу `sshd`

```bash
sudo systemctl restart sshd
```

## 7. Измените колличество ошибок ввода пароля перед сборосом соединения, покажите эти измененения
```bash
sudo nano /etc/openssh/sshd_config
```

Нужно изменить поле `MaxAuthTries`


<div style="text-align: center;">
  <img src="Screnshoots\Screen3.png" alt="Мой скриншот" />
</div>

Покажите изменения:
<div style="text-align: center;">
  <img src="Screnshoots\Screen4.png" alt="Мой скриншот" />
</div>

```bash
sudo systemctl restart sshd
```

## 8. Создайте пользователя ssh-user и попробуйте им подключиться к серверу

```bash
sudo userdel ssh-user # Он уже существовал, так что пришлось удалить =)
sudo adduser ssh-user
sudo passwd ssh-user # Задать пароль
```
```bash
ssh -p 206 ssh-user@95.31.204.147
```

## 9. Ограничте ему возможность подключения к серверу

```bash
sudo nano /etc/openssh/sshd_config
```
В этот файл нужно добавить:

`DenyUsers ssh-user`

```bash
systemctl restart sshd
```

<div style="text-align: center;">
  <img src="Screnshoots\Screen5.png" alt="Мой скриншот" />
</div>

## 10. Как вы это сделали?

Добавил параметр DenyUsers в файле `/etc/ssh/sshd_config`, что запрещает его аутентификацию через SSH.

## 11. Что хранится в файле known_hosts?

```bash
~/.ssh/known_hosts
```

В файле `known_hosts` хранятся публичные ключи серверов, с которыми устанавливались SSH-соединения.

Когда подключаешься к серверу через SSH, его публичный ключ сохраняется в этом файле на клиенте. При последующих подключениях SSH проверяет, совпадает ли публичный ключ сервера с тем, что хранится в `known_hosts`, чтобы убедиться, что сервер не изменился.

<div style="text-align: center;">
  <img src="Screnshoots\Screen6.png" alt="Мой скриншот" />
</div>


- `[95.31.204.147]:206` - ip и порт
- `ssh-ed25519` - тип алгоритма публичного ключа
- ну и там сам ключ