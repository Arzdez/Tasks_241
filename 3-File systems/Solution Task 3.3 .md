## **1. Выведите содержимое fstab. Что хранится в fstab?**

```bash
cat /etc/fstab
```

Вывод:

```bash
# /etc/fstab: static file system information.  
#  
# Use 'blkid' to print the universally unique identifier for a device; this may  
# be used with UUID= as a more robust way to name devices that works even if  
# disks are added and removed. See fstab(5).  
#  
# <file system>             <mount point>  <type>  <options>  <dump>  <pass>  
UUID=4D0E-7223                            /boot/efi      vfat    defaults   0 2  
UUID=7996e106-9f03-461c-b959-8638ad1a8422 /              ext4    defaults   0 1  
/swapfile                                 swap           swap    defaults   0 0
```

## **2. Добавьте в виртуальную машину ещё один диск.**

Готово. Результат увидим в следующем пункте.

## **3. Узнайте как система видит ваш диск - выведите информацию о блочных устройствах.**

```bash
lsblk
```

Вывод:

```bash
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 465,8G  0 disk 
├─sda1   8:1    0   100M  0 part 
├─sda2   8:2    0    16M  0 part 
├─sda3   8:3    0 465,1G  0 part 
└─sda4   8:4    0   533M  0 part 
sdb      8:16   0 238,5G  0 disk 
├─sdb1   8:17   0   511M  0 part /boot/efi
├─sdb2   8:18   0   238G  0 part /home
│                                /
└─sdb3   8:19   0     7M  0 part 
```

## **4. С помощью полученной информации создайте на диске таблицу разделов и файловую систему ext4.**

```bash
mkfs.ext4 /dev/sdb3
```

Вывод:

```bash
mke2fs 1.46.4 (18-Aug-2021)
Discarding device blocks: done                            
Creating filesystem with 7168 1k blocks and 1792 inodes

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (1024 blocks): done
Writing superblocks and filesystem accounting information: done
```  

## **5. Примонитируйте диск в каталог /mnt.**

```bash
mkdir /mnt/disk
mount /dev/sdb3 /mnt/disk
df -h
```

Вывод последней команды следующей (используется для првоерки):

```bash
Файловая система Размер Использовано  Дост Использовано% Cмонтировано в
udevfs             5,0M            0  5,0M            0% /dev
runfs              5,8G         1,4M  5,8G            1% /run
/dev/sdb2          238G          54G  182G           23% /
tmpfs              5,8G            0  5,8G            0% /dev/shm
/dev/sdb2          238G          54G  182G           23% /home
/dev/sdb1          510M         6,6M  504M            2% /boot/efi
/dev/sdb3          5,6M          14K  5,1M            1% /mnt/disk
```
  
## **6. Зайдите в каталог и создайте там файлы.**

```bash
cd /mnt/disk
touch file1 file2 file3
ls
```

Вывод:

```bash
file1  file2  file3  lost+found
```

## **7. Отмонтируйте диск и проверьте, остались ли файлы.**

```bash
cd -
umount /mnt/disk
mount /dev/sdb3 /mnt/disk
ls
```

Вывод:

```bash
requests-2.28.1  requests-2.28.1.tar.gz  tmp
```

## **8. Сделайте так, что бы диск автоматически подключался при загрузке систем (добавьте информацию о нём с fstab).**

Сначала узнаем uuid нового раздела:

```bash
blkid /dev/sdb3
```

В будущем он нам пригодится. Теперь откроем файл `/etc/fstab`:

```bash
sudo nano /etc/fstab
```

Запишем в конец следующее:

```bash
UUID=7e3fe63c-c88b-46cd-95ca-3ed46c6af81c /mnt/disk ext4 defaults 0 2
```

Готово!

## **9. Проверьте корректность записанных в fstab данных перед перезагрузкой.**

Для проверки воспользуемся следующей командой:

```bash
mount -a
```

Ничего не вывелось. Если ошибок нет, значит, диск смонтируется корректно.

## **10. Перезагрузите систему и убедитесь что диск был подключён к системе.**

Перезагрузочка:

```bash
sudo reboot
```
Снова проверка на подключение диска:

```bash
df -h
```

Вывод:

```bash
Файловая система Размер Использовано  Дост Использовано% Cмонтировано в
udevfs             5,0M            0  5,0M            0% /dev
runfs              5,8G         1,5M  5,8G            1% /run
/dev/sda2          238G          54G  182G           23% /
tmpfs              5,8G            0  5,8G            0% /dev/shm
/dev/sda2          238G          54G  182G           23% /home
/dev/sda3          5,6M          14K  5,1M            1% /mnt/disk
```
