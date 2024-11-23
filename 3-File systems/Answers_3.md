**1. Выведите содержимое fstab. Что хранится в fstab?**

fstab содержит информацию о файловых системах и устройствах хранения, которые должны быть автоматически смонтированы при загрузке системы. 
Каждая строка содержит название блочного устройства; точку монтирования; 
тип ФС; опции монтирования; бит, указывающий следует ли делать резервное копирование данной ФС; порядок проверки ФС с помощью fsck (0 если проверка не требуется)

<img src="https://github.com/heta76/Tasks_241/blob/master/3-File%20systems/Снимок%20экрана%202024-11-22%20222438.png" alt="Alt text" title="Optional title">

**2. Добавьте в виртуальную машину ещё один диск**

Добавил через vbox

**3. Узнайте как ситема видит ваш диск - выведите информацию о блочных устройствах**

`fdisk -l`

<img src="https://github.com/heta76/Tasks_241/blob/master/3-File%20systems/Снимок%20экрана%202024-11-22%20223106.png" alt="Alt text" title="Optional title">

**4. С помощью полученной информации создайте на диске таблицу разделов и фаловую систему ext4**

Создание раздела:
<img src="https://github.com/heta76/Tasks_241/blob/master/3-File%20systems/Снимок%20экрана%202024-11-22%20223645.png" alt="Alt text" title="Optional title">

Создание ФС:
<img src="https://github.com/heta76/Tasks_241/blob/master/3-File%20systems/Снимок%20экрана%202024-11-22%20224340.png" alt="Alt text" title="Optional title">

**5. Примонитруте диск в каталог /mnt**

`mount -v /dev/sdb1 /mnt/`

проверка:

<img src="https://github.com/heta76/Tasks_241/blob/master/3-File%20systems/Снимок%20экрана%202024-11-22%20223827.png" alt="Alt text" title="Optional title">

**6. Зайдите в каталог и создайте там файлы**
<img src="https://github.com/heta76/Tasks_241/blob/master/3-File%20systems/Снимок%20экрана%202024-11-22%20225345.png" alt="Alt text" title="Optional title">

**7. Отмонтируйте диск и проверье остались ли файлы**
`umount /mnt`
<img src="https://github.com/heta76/Tasks_241/blob/master/3-File%20systems/Снимок%20экрана%202024-11-22%20225749.png" alt="Alt text" title="Optional title">

**8. Сделайте так чтобы диск автоматически подключался при загрузке систем ( добавьте информацию о нём с fstab)**

**9. Проверьте корретность записанных в fstab данных перед перезагрузкой**

Для добавления диска в автозагрузку надо добавить его в файл fstab(последня строчка на картике).
- UUID — идентификатор устройства.
- /mnt/mydisk — точка монтирования.
- ext4 — тип файловой системы.
- defaults — стандартные параметры монтирования (чтение/запись, авто, и т.д.).
- 0 — нужен ли дамп устройства (обычно 0).
- 2 — порядок проверки файловой системы (0 = не проверять, 1 = корневая ФС, 2 = другие ФС).

<img src="https://github.com/heta76/Tasks_241/blob/master/3-File%20systems/Снимок%20экрана%202024-11-22%20230840.png" alt="Alt text" title="Optional title">

**10. Перезагрущите систему и убедитесь что диск был подключён к системе**

диск подключен:

<img src="https://github.com/heta76/Tasks_241/blob/master/3-File%20systems/Снимок%20экрана%202024-11-22%20231750.png" alt="Alt text" title="Optional title">
