# ФС
## 1 Какие файловые системы вы знаете?
ext4, ramfs, betterfs, tmpfs.
## 2 Как можно классифицировать файловые системы? в чём отличия??
Журналируемые и нежурналируемые. Журналируемые сохраняют логи всех изменений в ней, стойкие к сбоям. Нежурналируемые не сохраняют логи.
## 3 Какие файловые системы используются в linux?
Все поколения ext, ramfs, btrfs.
## 4 Как можно создать файловую систему на диске?
Нужно создать раздел на диске с соответствующей ФС.
## 5 Как можно подключить диск в систему, что такое монтирование?
Диск можно прикрепить к какой-либо точке на уже смонтированной файловой системе, чтобы получить доступ к нему через нее. Это и есть монтирование.
## 6 Файловая система procfs, cifs, tpmfs,sysfs. В чём особенности каждой из них? Вывести каталоги к которым примонтированы эти файловые системы
Вывести куда примонтированы ФС:
```bash
findmnt
TARGET                SOURCE    FSTYPE   OPTIONS
/                     /dev/sdb9 ext4     rw,relatime
├─/proc               proc      proc     rw,nosuid,noexec,relatime,gid=19
│ └─/proc/sys/fs/binfmt_misc
│                     systemd-1 autofs   rw,relatime,fd=28,pgrp=1,timeout=0,minproto=5,ma
│   └─/proc/sys/fs/binfmt_misc
│                     binfmt_misc
│                               binfmt_m rw,nosuid,nodev,noexec,relatime
...
```
1. procfs

   Cоздает снимок мгновенного состояния ядра и процессов, которые он контролирует для userspace, и выводит эту инфу в папку, к которой примонтирован, а именно - /proc.
2. cifs

   CIFS (Common Internet File System) – это файловая система одноименного протокола, который позволяет клиентам получать доступ к файлам на сервере по сети.
3. tmpfs

   Нужна для размещения пользовательских файлов непосредственно в оперативной памяти ПК. Предполагает создание блочного узла определенного размера с последующим подключением к папке. При необходимости данные можно будет удалять. Монтируется в /tmp.
4. sysfs

   Это псевдофайловая система, предоставляющая интерфейс к структурам данных ядра. Файлы в sysfs показывают информацию об устройствах, модулях ядра, файловых системах и других компонентах ядра. Монтируется в /sys.
## 7 Как можно получить информацию о системе используя лишь команду cat? Вывести ифонмацию о процессоре и состоянии памяти системы
```bash
cat /proc/cpuinfo
processor       : 0
vendor_id       : GenuineIntel
cpu family      : 6
model           : 69
model name      : Intel(R) Core(TM) i3-4010U CPU @ 1.70GHz
stepping        : 1
microcode       : 0x26
cpu MHz         : 1196.862
cache size      : 3072 KB
physical id     : 0
siblings        : 4
core id         : 0
cpu cores       : 2
apicid          : 0
initial apicid  : 0
fpu             : yes
fpu_exception   : yes
cpuid level     : 13
wp              : yes
...
```
```bash
cat /proc/meminfo
MemTotal:       11673808 kB
MemFree:         3586672 kB
MemAvailable:    5611024 kB
Buffers:           87000 kB
Cached:          2573212 kB
SwapCached:            0 kB
Active:           923184 kB
Inactive:        6355012 kB
Active(anon):       1856 kB
Inactive(anon):  5059880 kB
Active(file):     921328 kB
Inactive(file):  1295132 kB
Unevictable:      382876 kB
Mlocked:              32 kB
SwapTotal:       4194300 kB
SwapFree:        4194300 kB
Zswap:                 0 kB
Zswapped:              0 kB
Dirty:                 0 kB
Writeback:             0 kB
AnonPages:       4947540 kB
Mapped:           890028 kB
Shmem:            443752 kB
KReclaimable:      87780 kB
Slab:             174536 kB
SReclaimable:      87780 kB
SUnreclaim:        86756 kB
KernelStack:       12336 kB
PageTables:        39668 kB
SecPageTables:         0 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:    10031204 kB
Committed_AS:   10051508 kB
VmallocTotal:   34359738367 kB
VmallocUsed:      108344 kB
VmallocChunk:          0 kB
Percpu:             2880 kB
HardwareCorrupted:     0 kB
AnonHugePages:    862208 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:    153600 kB
FilePmdMapped:     79872 kB
CmaTotal:              0 kB
CmaFree:               0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      201956 kB
DirectMap2M:     5507072 kB
DirectMap1G:     6291456 kB
```
