**1. Выведите содержимое fstab. Что хранится в fstab?**

```bush
cat /etc/fstab
```

![image](https://github.com/user-attachments/assets/30629e8d-7db5-4838-ab2b-509822b1f6a7)


fstab, находящийся по адресу /etc/fstab - текстовый файл, 
содержащий информацию о различных файловых системах и устройствах 
хранения информации в вашем компьютере. 
Этот файл определяет, как диск и/или раздел будут использоваться 
и как будут встроены в остальную систему.

---

**2. Добавьте в виртуальную машину ещё один диск.**

Добавление через панель управления виртуальной машины.

---


**3. Узнайте как ситема видит ваш диск - выведите информацию о блочных устройствах.**

```bush
lsblk
```

---

**4. С помощью полученной информации создайте на диске таблицу разделов и фаловую систему ext4.**

Создание таблицы разделов:
```bash
sudo fdisk /dev/sdb
```

![image](https://github.com/user-attachments/assets/2ee84ed6-c7a9-4a79-9cd4-f49b428c0d34)

Создание файловой системы ext4:
```bash
sudo mkfs.ext4 /dev/sdb1
```

![image](https://github.com/user-attachments/assets/1e867b5c-ee4e-434c-a988-f0f9548b51f0)

---

**5. Примонитруте диск в каталог /mnt.**

Создание точки монтирования:

```bash
sudo mkdir -p /mnt/newdisk
```

Монтирование диска:

```bash
sudo mount /dev/sdb1 /mnt/newdisk
```

---

**6. Зайдите в каталог и создайте там файлы.**

```bush
cd /mnt/newdisk
sudo touch file1 file2
```

![image](https://github.com/user-attachments/assets/99e0eab7-07c1-47d3-81ee-fe242251f3b0)


---

**7. Отмонтируйте диск и проверье остались ли файлы.**

Отмонтирование диска:

```bash
sudo umount /mnt/newdisk
```

Проверка остались ли файлы:

```bash
sudo mount /dev/sdb1 /mnt/newdisk
ls /mnt/newdisk
```

![image](https://github.com/user-attachments/assets/7ecd8066-3a72-472d-a3fd-38f33f3e0f89)


---

**8. Сделайте так чтобы диск автоматически подключался при загрузке систем ( добавьте информацию о нём с fstab)**

Узнать UUID диска:

```bash
sudo blkid /dev/sdb1
```

Добавить строку в /etc/fstab:

```bash
sudo nano /etc/fstab
```

Добавить запись:

```bash
UUID=e3bb9435-606e-493a-84ca-4dd23fb56f94 /mnt/newdisk ext4 defaults 0 2
```

![image](https://github.com/user-attachments/assets/8331cfac-b9fd-4fd3-9a27-619e4ae559f1)


---

**9. Проверьте корретность записанных в fstab данных перед перезагрузкой.**

Проверить конфигурацию:

```bash
sudo mount -a
```

Если ошибок нет, настройки корректны.

---

**10. Перезагрузите систему и убедитесь что диск был подключён к системе.**

Перезагрузить систему:

```bash
sudo reboot
```

После перезагрузки убедитться, что диск примонтирован:

```bash
ls /mnt/newdisk
```

![image](https://github.com/user-attachments/assets/55d380a7-62b2-43e5-baee-eec655e95336)
