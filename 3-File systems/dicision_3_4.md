# Продолжаем

## 1. Raid массивы, что такое икакие бывают

**RAID** (Redundant Array of Independent Disks) — это технология, которая позволяет объединить несколько физических жестких дисков в один логический диск для повышения производительности, надежности или того и другого.


## 2. Добавьте в виртуальную машину 2 диска отформатируйте их в ext4

<div style="text-align: center;">
  <img src="Screnshoots\screen14.png" alt="Мой скриншот" />
</div>

<div style="text-align: center;">
  <img src="Screnshoots\screen15.png" alt="Мой скриншот" />
</div>

```bash
sudo mkfs.ext4 /dev/sda
sudo mkfs.ext4 /dev/sdc
```

## 3. Создайте из них raid 0 массив
```bash
sudo mdadm --create /dev/md0 --level=0 --raid-devices=2 /dev/sda /dev/sdc
```

- /dev/md0 — это имя нового RAID массива.
- --level=0 — это уровень RAID 0.
- --raid-devices=2 — это количество устройств в массиве (2 диска).

```bash
sudo mkfs.ext4 /dev/md0
```

```bash
sudo mkdir /mnt/raid0
sudo mount /dev/md0 /mnt/raid0
```

## 4. Проверье всё ли работает

```bash
df -h
cat /proc/mdstat
```


<div style="text-align: center;">
  <img src="Screnshoots\screen16.png" alt="Мой скриншот" />
</div>


## 5. Удалите raid0 и создайте raid1

```bash
sudo umount /mnt/raid0
sudo mdadm --stop /dev/md0
```

```bash
sudo mdadm --remove /dev/md0
```

```bash
sudo wipefs --all /dev/sda
sudo wipefs --all /dev/sdc
```

```bash
sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sda /dev/sdc
```

<div style="text-align: center;">
  <img src="Screnshoots\screen17.png" alt="Мой скриншот" />
</div>

<div style="text-align: center;">
  <img src="Screnshoots\screen18.png" alt="Мой скриншот" />
</div>

## 6. В чём между ними разница?

- **RAID 0** — это стрипинг: данные разделяются на части и записываются на несколько дисков. Это увеличивает скорость работы, но не дает защиты, так как при поломке одного диска данные теряются.

- **RAID 1** — это зеркалирование: данные копируются на два и более диска, создавая их точные копии. Это защищает данные, так как если один диск выйдет из строя, данные останутся на другом.

Так что, **RAID 1** — копии, а **RAID 0** — увеличение скорости за счет "объединения" дисков.


## 7. Есть ли файловые системы которые поддерживают raid массивы без стороненго ПО

Да, есть файловые системы, поддерживающие RAID без стороннего ПО:

### 1. Linux:

- **Btrfs** — поддерживает RAID 0, 1, 10, 5/6.
- **ZFS** — поддерживает RAID 0, 1, 10, RAIDZ.
### 2. Windows:

- **Storage Spaces** — поддерживает RAID 1, 5, 10.

###

----



- **RAID 0**: Увеличение скорости (без защиты)
- **RAID 1**: Защита данных (зеркалирование)
- **RAID 10**: Баланс скорости и защиты (зеркалирование + стрипинг) (Минимум 4 диска)
- **RAID 5**: Баланс скорости и избыточности с одним блоком паритета (Минимум 3 диска)
- **RAID 6**: Увеличенная защита (два блока паритета) (Минимум 4 диска)
- **RAIDZ**: Защита данных с динамическим распределением паритета (в ZFS)(минимум 3 диска)


## 8. Можно ли создать raid массив во время установки системы?
Да, можно 