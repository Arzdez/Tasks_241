## **1. Какие файловые системы Вы знаете?**

- **FAT (File Allocation Table)** — используется в старых версиях Windows и в большинстве флеш-накопителей.
- **NTFS (New Technology File System)** — основная файловая система для Windows.
- **ext2 (Second Extended File System)** — ранняя файловая система для Linux.
- **ext3 (Third Extended File System)** — улучшенная версия ext2 с поддержкой журналирования.
- **ext4 (Fourth Extended File System)** — наиболее популярная файловая система в современных Linux-системах.
- **XFS** — высокопроизводительная файловая система для Linux. Он отлично справляется с большими объёмами данных и оптимизирован под них, имеет хорошее журналирование и эффективно управляет пространством, что повышает производительность при записи/чтении.
- **HFS+ (Hierarchical File System Plus)** — файловая система, использовавшаяся в старых версиях macOS.
- **APFS (Apple File System)** — файловая система для современных версий macOS и iOS.

## **2. Как можно классифицировать файловые системы? В чём отличия?**

- **По типу устройства**:
	- FAT в основном используется на съёмных носителях;
	- Всё остальное - жёсткие диски и ssd;

- **По поддержке журналирования**: ext2 и FAT не поддерживают (проще не поддерживаемые перечислить).

- **По функциональным возможностям**:
	- **FAT** — простая файловая система, без расширенных функций (например, журналирования или защиты от ошибок).
	- **NTFS** — поддерживает журналирование, сжатие, шифрование и другие продвинутые функции.
	- **ext2** — простая файловая система, без журналирования и других продвинутых функций.
	- **ext3** — поддерживает журналирование, но не поддерживает такие продвинутые функции, как сжатие и защита данных.
	- **ext4** — улучшенная версия ext3, поддерживает журналирование, сжатие, улучшенную производительность.
	- **HFS+** — поддерживает журналирование, а также продвинутые функции, такие как поддержка больших файлов и дисков.
	- **APFS** — оптимизирован для SSD, поддерживает журналирование, шифрование, сжатие и другие функции.
	- Для работы с большими данными - XFS.

- **По платформам**:
	- FAT - в основном в Windows и всяких съёмных носителях и т.д.
	- Windows;
	- ext2, ext3, ext4, XFS - Linux;
	- HFS+ - macOS;
	- APFS - macOs и iOS.

## **3. Какие файловые системы используются в linux?**

1. **ext4** — самая популярная файловая система, поддерживает большие объемы и хорошую производительность.
2. **ext3** — старая версия ext4 с журналированием, но медленнее.
3. **ext2** — устаревшая файловая система без журналирования.
4. **XFS** — файловая система для больших объемов данных, хороша для серверов.
5. **Btrfs** — современная файловая система с поддержкой снимков, сжатия и других функций (что-то страшное).
6. **NTFS** — файловая система, используемая в Windows, но поддерживаемая в Linux через драйверы.
7. **FAT32/ exFAT** — файловые системы, часто используемые для совместимости с различными устройствами, такими как флеш-накопители, карты памяти и внешние диски.
8. **F2FS (Flash-Friendly File System)** — файловая система, оптимизированная для работы с флеш-памятью.

## **4. Как можно создать файловую систему на диске?**

Используется команда `mkfs` следующим образом:

```bash
mkfs.ext4 /dev/sdX
```

где `/dev/sdX` - это устройство, на котором будет создана файловая система. Но это для ext4.

## **5. Как можно подключить диск в систему, что такое монтирование?**

Монтирование - процесс подключения файловой системы на определённое место в структуре каталогов, чтобы доступ к файлам на этом диске был возможен через обычные команды файловой системы.

Для монтирования используется команда `mount`:

```bash
mount /dev/sdX /mnt
```

где `/mnt` — точка монтирования (каталог, где будет доступна файловая система).

Для автоматического монтирования при старте системы обычно используется файл `/etc/fstab`.

## **6. Файловая система procfs, cifs, tmpfs, sysfs. В чём особенности каждой из них? Вывести каталоги, к которым примонтированы эти файловые системы.**

- `procfs` - это виртуальная файловая система, которая предоставляет информацию о процессах и состоянии ядра системы. 

```bash
ls /proc
```

Вывод:

```bash
1    1174  135    16    176     186082  234     262     285181  325     35100  3913    405149  411356  4200    43792   467     53     65    7763  867    96854       cpuinfo        kcore          net            tty  
10   119   136    160   1760    187     2391    262331  285188  326     3523   3916    4054    411395  4207    43802   468627  533    66    7768  868    96855       crypto         keys           pagetypeinfo   uptime  
100  12    137    161   1783    188     2398    262479  285206  327     356    3917    408173  4116    4218    4387    4694    54     67    7774  87     96956       devices        key-users      partitions     version  
101  120   139    162   1786    1891    24      263     29      328     357    392447  4084    412469  4223    4391    4697    548    68    7775  88     96969       diskstats      kmsg           pressure       version_signature  
102  121   14     1685  178608  19      250833  2636    292     329     358    3926    4092    412532  4231    4399    47      56     69    7793  89     96981       dma            kpagecgroup    schedstat      vmallocinfo  
104  124   140    1686  178612  1935    250842  2639    2939    33      359    3927    4098    412533  424021  44      471657  57     7     78    896    98          driver         kpagecount     scsi           vmstat  
105  125   141    1688  178613  2       2537    264     296     330     36     3928    41      4139    424046  444339  477720  58     70    7818  897    99          dynamic_debug  kpageflags     self           zoneinfo  
106  126   142    169   178623  20      2547    2643    2978    3305    360    3931    4105    414     425080  4490    479769  59     71    7823  898    9969        execdomains    latency_stats  slabinfo  
107  127   143    17    1788    201403  256     267     3       331     36043  3932    411199  415     4254    45      48      6      72    7862  90     acpi        fb             loadavg        softirqs  
108  128   144    171   1789    21      257     27      30      332     361    3933    4112    4155    4257    45027   487883  60     74    80    91     asound      filesystems    locks          stat  
110  13    145    1738  1791    211     257098  271     301     333     362    3935    411294  4163    4258    4503    488906  605    75    81    92     bootconfig  fs             mdstat         swaps  
111  130   146    1739  1793    215     258     277257  308     334     363    395     411303  4183    4259    4519    49672   62     76    82    93     buddyinfo   interrupts     meminfo        sys  
112  131   147    1754  1798    22      259     278269  310653  34      38     3968    411304  4185    4260    4535    5       62802  77    83    94     bus         iomem          misc           sysrq-trigger  
114  132   14896  1757  18      23      26      28      32      348766  3891   3969    411307  4187    4359    4583    50      63     7756  84    95     cgroups     ioports        modules        sysvipc  
116  133   15     1758  1806    232     260     283670  323     35      39     4       411345  4188    4367    4586    51      64     7760  860   96     cmdline     irq            mounts         thread-self  
117  134   152    1759  1820    233     261     283801  324     35090   3903   40      411354  42      4375    46      52      64948  7761  861   96793  consoles    kallsyms       mtrr           timer_list
```

- `cifs` - это файловая система для работы с удалёнными файлами через сетевые протоколы SMB (Server Message Block), и чаще всего используется для подключения к Windows-серверам и другим устройствам, поддерживающим SMB.

```bash
ls /mnt/share
```

Вывод:

```bash
ls: невозможно получить доступ к '/mnt/share': Нет такого файла или каталога
```

Причина? Файловая система не смонтирована в этом каталоге.

- `tmpfs` - это временная файловая система, которая использует оперативную память для хранения данных. Иногда она может использовать swap-пространство, если памяти не хватает.

```bash
ls /tmp
```

Вывод:

```bash
apt-dpkg-install-ylgKjF      sddm-auth-f4b8c21e-7176-4397-9ead-acdf96ba0dee                                systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-redis-server.service-EH6VAu  
discover-DvCyZF              snap-private-tmp                                                              systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-switcheroo-control.service-6HJom3  
discover-tLphyl              ssh-UFuaSf5fMpBy                                                              systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-systemd-logind.service-puCxAS  
discover-ZljrsQ              systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-bluetooth.service-1K8rrt     systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-systemd-resolved.service-ZVGhaq  
ksmserver.UQcdew             systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-colord.service-gqn0ip        systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-systemd-timesyncd.service-9JODAP  
plasma-csd-generator.DMjohO  systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-fwupd.service-SDyDV5         systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-upower.service-aFiL84  
scoped_dir52vemS             systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-ModemManager.service-vqzC7f  vboxdrv-Module.symvers  
sddm-:0-OFtitn               systemd-private-ec37d4cfde2b404cb32de47b9ea6b957-polkit.service-enq1c1        xauth_aCteYk
```

- `sysfs` - это виртуальная файловая система, которая предоставляет информацию о различных устройствах, драйверах и других компонентах системы, предоставляемую ядром.

```bash
ls /sys
```

Вывод:

```bash
block  bus  class  dev  devices  firmware  fs  hypervisor  kernel  module  power
```

## **7. Как можно получить информацию о системе используя лишь команду cat? Вывести информацию о процессоре и состоянии памяти системы.**

```bash
cat /proc/cpuinfo
```

ИЛИ

```bash
cat /proc/meminfo
```

Обе команды вывели бешеный по длине список (однако первая вывела +-норм).

```bash
MemTotal:       32759000 kB  
MemFree:        21834616 kB  
MemAvailable:   28076740 kB  
Buffers:          381184 kB  
Cached:          5884928 kB  
SwapCached:            0 kB  
Active:          5003816 kB  
Inactive:        4290484 kB  
Active(anon):    3144732 kB  
Inactive(anon):        0 kB  
Active(file):    1859084 kB  
Inactive(file):  4290484 kB  
Unevictable:        3212 kB  
Mlocked:             140 kB  
SwapTotal:        524284 kB  
SwapFree:         524284 kB  
Zswap:                 0 kB  
Zswapped:              0 kB  
Dirty:               960 kB  
Writeback:             0 kB  
AnonPages:       3031436 kB  
Mapped:          1458320 kB  
Shmem:            116544 kB  
KReclaimable:     557776 kB  
Slab:             941316 kB  
SReclaimable:     557776 kB  
SUnreclaim:       383540 kB  
KernelStack:       15632 kB  
PageTables:        43692 kB  
SecPageTables:         0 kB  
NFS_Unstable:          0 kB  
Bounce:                0 kB  
WritebackTmp:          0 kB  
CommitLimit:    16903784 kB  
Committed_AS:   13826824 kB  
VmallocTotal:   34359738367 kB  
VmallocUsed:      114556 kB  
VmallocChunk:          0 kB  
Percpu:            40064 kB  
HardwareCorrupted:     0 kB  
AnonHugePages:         0 kB  
ShmemHugePages:        0 kB  
ShmemPmdMapped:        0 kB  
FileHugePages:         0 kB  
FilePmdMapped:         0 kB  
Unaccepted:            0 kB  
HugePages_Total:       0  
HugePages_Free:        0  
HugePages_Rsvd:        0  
HugePages_Surp:        0  
Hugepagesize:       2048 kB  
Hugetlb:               0 kB  
DirectMap4k:     1169288 kB  
DirectMap2M:    12363776 kB  
DirectMap1G:    19922944 kB
```

