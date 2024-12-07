## 1. Выведите содержимое fstab. Что хранится в fstab?

**fstab** (File System Table) — это конфигурационный файл в  котором хранятся утройства, которые должны быть автоматически монтированы при старте системы.

```bash
cat /etc/fstab
```

<div style="text-align: center;">
  <img src="Screnshoots\screen3.png" alt="Мой скриншот" />
</div>

**Текущие диски:**
<div style="text-align: center;">
  <img src="Screnshoots\screen4.png" alt="Мой скриншот" />
</div>

## 2. Добавьте в виртуальную машину ещё один диск
**Текущие диски:**
<div style="text-align: center;">
  <img src="Screnshoots\screen5.png" alt="Мой скриншот" />
</div>

## 3. Узнайте как ситема видит ваш диск - выведите информацию о блочных устройствах
<div style="text-align: center;">
  <img src="Screnshoots\screen6.png" alt="Мой скриншот" />
</div>

## 4. С помощью полученной информации создайте на диске таблицу разделов и фаловую систему ext4
<div style="text-align: center;">
  <img src="Screnshoots\screen7.png" alt="Мой скриншот" />
</div>

## 5. Примонитруте диск в каталог /mnt

Создать точку монтирования:

```bash код
sudo mkdir /mnt/new_disk
```
Смонтировать новый раздел на эту точку монтирования:
```bash
sudo mount /dev/sdb1 /mnt/new_disk
```
<div style="text-align: center;">
  <img src="Screnshoots\screen8.png" alt="Мой скриншот" />
</div>


## 6. Зайдите в каталог и создайте там файлы

<div style="text-align: center;">
  <img src="Screnshoots\screen10.png" alt="Мой скриншот" />
</div>

## 7. Отмонтируйте диск и проверье остались ли файлы
<div style="text-align: center;">
  <img src="Screnshoots\screen11.png" alt="Мой скриншот" />
</div>

Файлов нет

## 8. Сделайте так чтобы диск автоматически подключался при загрузке систем ( добавьте информацию о нём с fstab)

```bash
sudo vi /etc/fstab
/dev/sdb1  /mnt/new_disk  ext4  defaults  0  2
```
- /dev/sdb1: - путь к новому диску.
- /mnt/new_disk: - точка монтирования.
- ext4: - файловая система.
- defaults: -  стандартные параметры монтирования.
- 0: поле для бэкапов, обычно 0.
- 2: поле для проверки дисков в процессе загрузки системы (обычно 2 для вторичных дисков).

## 9. Проверьте корретность записанных в fstab данных перед перезагрузкой
<div style="text-align: center;">
  <img src="Screnshoots\screen12.png" alt="Мой скриншот" />
</div>

## 10. Перезагрущите систему и убедитесь что диск был подключён к системе
<div style="text-align: center;">
  <img src="Screnshoots\screen13.png" alt="Мой скриншот" />
</div>