## 1.Где хранятся пользвательские и системные настройки подключения?


- `/etc/openssh/ssh_config` - Системные (Применяются ко всем пользователям системы, если у них не переопределены настройки)

- `~/.ssh/config` - Пользовательские (Только для текущего пользователя)

## 2.Что за файл options?

```bash
sudo find / -name "options" 2>/dev/null
```

<div style="text-align: center;">
  <img src="Screnshoots\Screen7.png" alt="Мой скриншот" />
</div>

По большей части, файлы "options" лежат в `...etcnet-0.9.2...`,но это просто примеры конфигурации сети.

Скорее всего, имелись в виду файлы, относящиеся к `ssh`, тогда это файлы из первого пункта.


## 3. Отредактируйте файл options так, чтобы можно было подключаться не вводя имя пользвателя и порт


```bash
nano ~/.ssh/config
```

```sql
Host arzdez_server
    HostName 95.31.204.147
    User student
    Port 206
```

## 4.Назовите подключение удобным для вас спсобом

<div style="text-align: center;">
  <img src="Screnshoots\Screen8.png" alt="Мой скриншот" />
</div>

`Host ...`

## 5.Проверьте работоспособность
```bash
ssh arzdez_server
```

<div style="text-align: center;">
  <img src="Screnshoots\Screen9.png" alt="Мой скриншот" />
</div>
