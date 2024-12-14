## **1. Удалите iptables и установите firewalld.**

```bash
sudo apt-get remove iptables
sudo apt-get install firewalld
```

## **2. Попробуйте так-же проверить возможность подключения по ssh.**

```bash
ssh arzdez
```

Всё получилось:

```bash
Last login: Fri Dec 13 21:50:12 2024 from 95.104.175.156  
[student@S-vm-214 ~]$
```

## **3. Если её нет, то откройте порт.**

```bash
sudo firewall-cmd --zone=public --add-port=214/tcp --permanent
```

После этого нужно применить изменения:

```bash
sudo firewall-cmd --reload
```

## **4. Выведите список открытых портов с помощью firewall-cmd.**

```bash
sudo firewall-cmd --list-ports
```

Вывело это:

```bash
214/tcp
```

## **5. Можно ли там добавить порты по названию сервиса?**

Можно.

```bash
sudo firewall-cmd --zone=public --add-service=ssh --permanent
```

После этого перезагружаем конфиг:

```bash
sudo firewall-cmd --reload
```

## **6. На вашей Локальной виртуальной машине попробуйте подключиться к серверу samba из предыдущих заданий.**

```bash
firewall-cmd --add-service=samba --permanent
firewall-cmd --reload
```

```bash
smbclient -L //192.168.0.104 -U cudok
```

Вывелось следующее:

```bash
Password for [WORKGROUP\cudok]:  
  
       Sharename       Type      Comment  
       ---------       ----      -------  
       print$          Disk      Printer Drivers  
       folder          Disk         
       folder_group    Disk         
       folder_write    Disk         
       folder3_group   Disk         
       IPC$            IPC       IPC Service (syscudo server (Samba, Ubuntu))  
SMB1 disabled -- no workgroup available
```

## **7. Если не получилось то откройте нужные порты.**

У меня всё получилось. Хе-хе.

## **8. Сделайте так чтобы изменения были постоянными.**

Использование флага `--permanent` при добавлении сервисов и портов в `firewalld` уже означает, что изменения будут сохраняться после перезагрузки системы. В этом можно убедиться с помощью следующей команды:

```bash
sudo firewall-cmd --list-all
```

Вывод следующий:

```bash
public (default, active)  
 target: default  
 ingress-priority: 0  
 egress-priority: 0  
 icmp-block-inversion: no  
 interfaces: enp4s0  
 sources:    
 services: dhcpv6-client samba ssh  
 ports: 214/tcp  
 protocols:    
 forward: yes  
 masquerade: no  
 forward-ports:    
 source-ports:    
 icmp-blocks:    
 rich rules:
```