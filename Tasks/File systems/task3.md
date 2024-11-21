# Продолжаем
## 1. Выведите содержимое fstab. Что хранится в fstab?
```bash
cat /etc/fstab
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/file_systems_3_4/Tasks/File%20systems/images/Screenshot%202024-11-21%20103229.png)
`fstab` — это файл конфигурации, который содержит информацию о файловых системах, которые должны монтироваться при загрузке системы, а также параметры их монтирования.
## 2. Добавьте в виртуальную машину ещё один диск.
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/file_systems_3_4/Tasks/File%20systems/images/Screenshot%202024-11-21%20104006.png)
## 3. Узнайте как сиcтема видит ваш диск - выведите информацию о блочных устройствах.
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/file_systems_3_4/Tasks/File%20systems/images/Screenshot%202024-11-21%20104309.png)
## 4. С помощью полученной информации создайте на диске таблицу разделов и фаловую систему ext4.
```bash
fdisk /dev/sdb
```
```bash
mkfs.ext4 /dev/sdb1
```
## 5. Примонитруйте диск в каталог /mnt.
```bash
mkdir -p /mnt
```
```bash
mount /dev/sdb1 /mnt
```
## 6. Зайдите в каталог и создайте там файлы.
```bash
cd /mnt
```
```bash
touch example1.txt example2.txt
```
```bash
ls -l
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/file_systems_3_4/Tasks/File%20systems/images/Screenshot%202024-11-21%20105702.png)
## 7. Отмонтируйте диск и проверье остались ли файлы.
```bash
cd ..
```
```bash
cd root
```
```bash
mount /dev/sdb1 /mnt
```
```bash
ls /mnt
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/file_systems_3_4/Tasks/File%20systems/images/Screenshot%202024-11-21%20105815.png)
## 8. Сделайте так чтобы диск автоматически подключался при загрузке систем (добавьте информацию о нём в fstab).
```bash
blkid /dev/sdb1
```
```bash
cp /etc/fstab /etc/fstab.bak
```
```bash
vim /etc/fstab
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/file_systems_3_4/Tasks/File%20systems/images/Screenshot%202024-11-21%20111259.png)
## 9. Проверьте корретность записанных в fstab данных перед перезагрузкой.
```bash
mount -a
```
## 10. Перезагрузите систему и убедитесь что диск был подключён к системе.
```bash
reboot
```
![](https://github.com/LunisLinus/alt_linux_sonya/blob/sonya_tasks/file_systems_3_4/Tasks/File%20systems/images/Screenshot%202024-11-21%20111803.png)
