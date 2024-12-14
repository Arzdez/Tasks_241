## 1. **Переместиться между директориями** 
- **Перейти в другую директорию:**
```bash
cd <путь_к_директории>
```

- **Вернуться в предыдущую директорию, где находился пользователь до перехода:**
```bash
cd -
```

- **Вернуться в домашнюю:**
```bash
cd ~
```

- **Перейти на уровень выше:**
```bash
cd ..
```

- **Пример:**
```bash
cd ~/tests && ls
```
```output
Machine Learning Course
env
new_name_for_file.txt
```


## 2.  **Вывести список файлов в директории**
- **Только файлы в текущей директории:**
```bash
ls
```

- **Вывести информационное сообщение по команде** `ls`:
```bash
ls --help
```

- **Пример:**
```bash
ls
```
```output
2024-06-23 23-58-21.mkv
2024-06-23 23-59-15.mkv
2024-11-19 17-53-52.mkv
FinamPy
Games
PortProton
Screenshot_20241102_173901.png
Sigh.ui
VictoriaMetrics
VirtualBox VMs
chromedriver
go
google-chrome-stable_current_amd64.deb
node_modules
package-lock.json
package.json
packages-microsoft-prod.deb
panon
photo_2024-09-29_22-40-49.jpg
qmltermwidget
query-info?coin=BTC
snap
tests
warp_generator.sh
www.freepik.com
Видео
Документы
Загрузки
Заметки от cudok
Заметки от cudok.zip
Изображения
Машинное обучение и анализ данных
Машинное обучение и анализ данных.zip
Музыка
Общедоступные
Рабочий стол
Шаблоны
```


## 3.  **Вывести список всех файлов (включая скрытые)**

- **Включая скрытые (начинаются с `.`)**:
```bash
ls -a
```

- **Включая расширенный формат вывода:**
```bash
ls -la
```

### Дополнения:
- **Включая вывод размера файлов в человекочитаемом формате:**
```bash
ls -lh
```

- **Включая сортировку по расширения на основе алфавитного порядка:**
```bash
ls -lX
```

- **Пример:**
```bash
ls -lahX
```
```output
total 243M
drwxrwxr-x  6 cudok cudok 4.0K Sep 14 17:40 FinamPy
drwxr-xr-x  4 cudok cudok 4.0K Jun 24 07:01 Games
drwxrwxr-x  3 cudok cudok 4.0K Aug 16 01:18 PortProton
drwxrwxr-x 15 cudok cudok 4.0K Sep 10 21:46 VictoriaMetrics
drwxrwxr-x  2 cudok cudok 4.0K Oct  4 19:50 VirtualBox VMs
drwxrwxr-x  2 cudok cudok 4.0K Jul 17 17:42 chromedriver
drwxrwxr-x  3 cudok cudok 4.0K Sep 10 21:43 go
drwxrwxr-x  4 cudok cudok 4.0K Jul 12 22:52 node_modules
drwxrwxr-x  9 cudok cudok 4.0K Jun 23 18:19 panon
drwxrwxr-x 10 cudok cudok 4.0K Jun 23 19:23 qmltermwidget
-rw-rw-r--  1 cudok cudok  129 Nov 16 12:14 query-info?coin=BTC
drwx------ 12 cudok cudok 4.0K Nov  9 00:18 snap
drwxrwxr-x  4 cudok cudok 4.0K Oct 20 14:27 tests
drwxr-xr-x  2 cudok cudok 4.0K Jun 21 22:22 Видео
drwxr-xr-x  3 cudok cudok 4.0K Oct 19 10:18 Документы
drwxr-xr-x  6 cudok cudok  12K Nov 12 12:49 Загрузки
drwxrwxr-x  3 cudok cudok 4.0K Oct 20 12:31 Заметки от cudok
drwxr-xr-x  2 cudok cudok 4.0K Jun 21 22:22 Изображения
drwxr-xr-x 16 cudok cudok 4.0K Oct 18 01:25 Машинное обучение и анализ данных
drwxr-xr-x  2 cudok cudok 4.0K Jun 21 22:22 Музыка
drwxr-xr-x  2 cudok cudok 4.0K Jun 21 22:22 Общедоступные
drwxr-xr-x  2 cudok cudok 4.0K Oct 21 00:37 Рабочий стол
drwxr-xr-x  2 cudok cudok 4.0K Jun 21 22:22 Шаблоны
drwxr-x--- 49 cudok cudok 4.0K Nov 21 12:46 .
drwxr-xr-x  3 root  root  4.0K Jun 21 22:05 ..
-rw-rw-r--  1 cudok cudok  270 Nov 21 12:46 .gtkrc-2.0
-rw-------  1 cudok cudok  334 Aug 28 22:56 .ICEauthority
-rw-------  1 cudok cudok  78K Nov 21 21:56 .bash_history
-rw-r--r--  1 cudok cudok  220 Mar 31  2024 .bash_logout
-rw-r--r--  1 cudok cudok 3.7K Mar 31  2024 .bashrc
drwxrwxr-x 59 cudok cudok 4.0K Nov 21 12:48 .cache
drwxrwxr-x  2 cudok cudok 4.0K Oct 11 23:08 .cloudshell
drwxrwxr-x 11 cudok cudok 4.0K Oct 21 01:56 www.freepik.com
-rw-rw-r--  1 cudok cudok  110 Jun 21 22:57 .fonts.conf
drwx------ 41 cudok cudok 4.0K Nov 21 22:08 .config
drwx------  3 cudok cudok 4.0K Aug 28 22:56 .dbus
-rw-rw-r--  1 cudok cudok 104M Jun 18 05:32 google-chrome-stable_current_amd64.deb
-rw-rw-r--  1 cudok cudok 3.7K Oct 25  2022 packages-microsoft-prod.deb
drwxrwxr-x  4 cudok cudok 4.0K Oct 23 17:28 .designer
drwxrwxr-x  3 cudok cudok 4.0K Jun 23 18:21 .dotnet
-rw-r--r--  1 cudok cudok  24K Apr 19  2024 .face
-rw-rw-r--  1 cudok cudok   59 Sep 21 00:06 .gitconfig
drwx------  2 cudok cudok 4.0K Aug 28 22:56 .gvfs
lrwxrwxrwx  1 cudok cudok    5 Apr 19  2024 .face.icon -> .face
drwxrwxr-x  4 cudok cudok 4.0K Jun 21 23:11 .icons
drwxrwxr-x  3 cudok cudok 4.0K Jul 16 12:23 .ipython
drwxrwxr-x  4 cudok cudok 4.0K Oct 27 17:48 .java
drwxrwxr-x  3 cudok cudok 4.0K Oct 27 17:54 .jdks
-rw-rw-r--  1 cudok cudok  97K Sep 29 22:40 photo_2024-09-29_22-40-49.jpg
-rw-rw-r--  1 cudok cudok  592 Jul 12 22:52 package-lock.json
-rw-rw-r--  1 cudok cudok   58 Jul 12 22:52 package.json
drwxrwxr-x  3 cudok cudok 4.0K Oct  7 00:04 .jupyter
drwxrwxr-x  2 cudok cudok 4.0K Sep 29 22:35 .keras
-rw-------  1 cudok cudok   20 Nov 20 18:04 .lesshst
drwxrwxr-x  7 cudok cudok 4.0K Jul 16 12:20 .local
drwxrwxr-x  3 cudok cudok 4.0K Sep 20 23:54 .m2
-rw-rw-r--  1 cudok cudok  96K Jun 23 23:58 2024-06-23 23-58-21.mkv
-rw-rw-r--  1 cudok cudok  18M Jun 24 00:00 2024-06-23 23-59-15.mkv
-rw-rw-r--  1 cudok cudok 116M Nov 19 17:54 2024-11-19 17-53-52.mkv
drwxrwxr-x  4 cudok cudok 4.0K Jul 12 22:52 .npm
drwx------  3 cudok cudok 4.0K Jun 23 23:58 .nv
-rw-rw-r--  1 cudok cudok 2.2K Jul  7 00:54 .nvidia-settings-rc
drwx------  3 cudok cudok 4.0K Jun 22 22:54 .pki
-rw-rw-r--  1 cudok cudok 6.7K Nov  2 17:39 Screenshot_20241102_173901.png
-rw-r--r--  1 cudok cudok  807 Mar 31  2024 .profile
-rw-------  1 cudok cudok  165 Jul 17 15:10 .python_history
drwxrwxr-x  2 cudok cudok 4.0K Sep 20 23:54 .redhat
-rw-------  1 cudok cudok    7 Nov  9 00:16 .rediscli_history
-rwxrwxr-x  1 cudok cudok 2.5K Oct 11 23:08 warp_generator.sh
drwx------  2 cudok cudok 4.0K Oct 12 01:03 .ssh
drwxr-xr-x  3 cudok cudok 4.0K Sep  8 16:58 .steam
lrwxrwxrwx  1 cudok cudok   30 Sep  8 16:57 .steampath -> /home/cudok/.steam/sdk32/steam
lrwxrwxrwx  1 cudok cudok   28 Sep  8 16:57 .steampid -> /home/cudok/.steam/steam.pid
-rw-r--r--  1 cudok cudok    0 Jun 21 22:34 .sudo_as_admin_successful
drwxrwxr-x 11 cudok cudok 4.0K Jul  6 21:21 .themes
-rw-rw-r--  1 cudok cudok  11K Nov  2 16:41 Sigh.ui
drwxrwxr-x  4 cudok cudok 4.0K Jun 23 18:21 .vscode
-rw-rw-r--  1 cudok cudok  177 Sep 24 03:07 .wget-hsts
drwxrwxr-x  4 cudok cudok 4.0K Jun 24 07:32 .wine
-rw-------  1 cudok cudok 493K Nov 21 12:46 .xsession-errors
-rw-rw-r--  1 cudok cudok 1.6M Oct 18 10:49 Заметки от cudok.zip
-rw-rw-r--  1 cudok cudok 3.5M Jul 15 10:47 Машинное обучение и анализ данных.zip
```

## 4. **Создать папку с подпапками**
```bash
mkdir -p папка/подпапка
```

- **Пример:**
```bash
mkdir -p ~/tests/alpha && cd ~/tests/ && ls
```
```output
Machine Learning Course
alpha
env
```

## 5. **Внутри папки создать файл и записать в него что-нибудь**

- **Создать файл и записать текст:**
```bash
echo "Hello, World!" > папка/подпапка/файл.txt
```

- **Пример:**
```bash
echo "Hello, World!" > ~/tests/file.txt && cd ~/tests && ls && cat ~/tests/file.txt
```
```output
Machine Learning Course
alpha
env
file.txt
Hello, World!
```


## 6. **Переместить файл из одной директории в другую**

- **Переместить файл:**
```bash
mv файл.txt другая_директория/
```

- **Пример:**
```bash
pwd && mv ~/tests/file.txt ~/tests/alpha/ && cd ~/tests/alpha/ && ls
```
```output
/home/cudok
file.txt
```

## 7.  **Скопировать файл из одной директории в другую**

- **Скопировать файл:**
```bash
cp файл.txt другая_директория/
```

- **Пример:**
```bash
cp ~/tests/alpha/file.txt ~/tests && cd ~/tests && ls 
```
```output
Machine Learning Course
alpha
env
file.txt
```

## 8. **Переименовать файл**

- **Переименовать файл:**
```bash
mv старое_имя.txt новое_имя.txt
```

- **Пример:**
```bash
mv ~/tests/file.txt ~/tests/new_name_for_file.txt && cd ~/tests && ls
```
```output
Machine Learning Course
alpha
env
new_name_for_file.txt
```

## 9. **Сравнить содержимое файлов**
- **Сравнить два файла:**
```bash
diff файл1.txt файл2.txt
```

- **Пример:**
```bash
diff ~/tests/new_name_for_file.txt ~/package.json
```
```output
1c1,5
< Hello, World!
---
> {
>   "devDependencies": {
>     "typescript": "^5.5.3"
>   }
> }
```

## 10. **Отсортировать содержимое файла**

- **По возрастанию:**
```bash
sort файл.txt
```

- **По убыванию:**
```bash
sort -r файл.txt
```

- **Пример:**
```bash
sort -r ~/package.json
```
```output
}
{
  }
  "devDependencies": {
    "typescript": "^5.5.3"
```

## 11. **Удалить все папки и файлы**

- **Удалить файлы и папки в текущей директории:**
```bash
rm -rf *
```

- **Пример:**
```bash
cd ~/tests/alpha && ls && rm -rf ~/tests/alpha && cd ~/tests && ls
```
```output
file.txt
Machine Learning Course
env
new_name_for_file.txt
```
