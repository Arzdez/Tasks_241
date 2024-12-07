## **1. Посмотрите журналы ssh**
<div style="text-align: center;">
  <img src="https://github.com/cosmys81/Tasks_241/blob/08c8010279b41818655dca5e186a0835c34dec59/5-Systemd/Pasted%20image%2020241204231705.png" alt="Screenshot 1"/>
</div>

## **2. Выведите журналы в реальном времени**
<div style="text-align: center;">
  <img src="https://github.com/cosmys81/Tasks_241/blob/08c8010279b41818655dca5e186a0835c34dec59/5-Systemd/Pasted%20image%2020241204231740.png"  alt="Screenshot 2"/>
</div>


## **3. Выведите лог в реальном времени для службы sshd**
<div style="text-align: center;">
  <img src="https://github.com/cosmys81/Tasks_241/blob/08c8010279b41818655dca5e186a0835c34dec59/5-Systemd/Pasted%20image%2020241204231910.png" alt="Screenshot 3"/>
</div>

## **4. Можно ли без команды journalctl прочитать логи systemd?**
Да, можно. Наверняка для этого есть специализированные пакеты, однако я нашёл такой способ.

Получим идентификатор машины:
```bash
cat /etc/machine-id
```
```output
c97b1fa3e1774360ab3a0bf70ca62eec97b1fa3e1774360ab3a0bf70ca62eeb
b
```


Читаем логи systemd:
```bash
sudo strings /var/log/journal/c97b1fa3e1774360ab3a0bf70ca62eeb/system.journal
```
```output
LPKSHHRH
PRIORITY=6
PRIORITY
SYSLOG_FACILITY=3
SYSLOG_FACILITY
TID=1728
CODE_FILE=src/resolve/resolved-manager.c
CODE_FILE
CODE_LINE=330
CODE_LINE
CODE_FUNC=on_clock_change
CODE_FUNC
SYSLOG_IDENTIFIER=systemd-resolved
SYSLOG_IDENTIFIER
MESSAGE=Clock change detected. Flushing caches.
MESSAGE
_TRANSPORT=journal
	bp#u
_TRANSPORT
_PID=1728
_PID
_UID=991
_UID
_GID=991
_GID
_COMM=systemd-resolve
_COMM
_EXE=/usr/lib/systemd/systemd-resolved
_EXE
_CMDLINE=/usr/lib/systemd/systemd-resolved
_CMDLINE
_CAP_EFFECTIVE=2000
_CAP_EFFECTIVE
_SELINUX_CONTEXT=unconfined
_SELINUX_CONTEXT
_SYSTEMD_CGROUP=/system.slice/systemd-resolved.service
_SYSTEMD_CGROUP
_SYSTEMD_UNIT=systemd-resolved.service
_SYSTEMD_UNIT
-+W0
_SYSTEMD_SLICE=system.slice
_SYSTEMD_SLICE
_SYSTEMD_INVOCATION_ID=6970ce0bfa2143a7acd10d1b9b6bc745
_SYSTEMD_INVOCATION_ID
Kya$
_SOURCE_REALTIME_TIMESTAMP=1733331256776895
_SOURCE_REALTIME_TIMESTAMP
_BOOT_ID=4022fd76afe548c0b907708243500648
_BOOT_ID
_MACHINE_ID=c97b1fa3e1774360ab3a0bf70ca62eeb
_MACHINE_ID
_HOSTNAME=syscudo
_HOSTNAME
_RUNTIME_SCOPE=system
_RUNTIME_SCOPE
_SOURCE_MONOTONIC_TIMESTAMP=64936400
_SOURCE_MONOTONIC_TIMESTAMP
1G{1
_TRANSPORT=kernel
RHy<
SYSLOG_FACILITY=5
SYSLOG_IDENTIFIER=systemd-journald
SYSLOG_PID=470
SYSLOG_PID
MESSAGE=Time jumped backwards, rotating.
_PID=470
_UID=0
_GID=0
_COMM=systemd-journal
_EXE=/usr/lib/systemd/systemd-journald
oUc5
_CMDLINE=/usr/lib/systemd/systemd-journald
_CAP_EFFECTIVE=25402800cf
_SYSTEMD_CGROUP=/system.slice/systemd-journald.service
_SYSTEMD_UNIT=systemd-journald.service
_SYSTEMD_INVOCATION_ID=fa1246bb0c044c18a6173e3dc1a4ea41
SYSLOG_FACILITY=9
TID=1729
CODE_FILE=src/timesync/timesyncd-manager.c
CODE_LINE=607
CODE_FUNC=manager_receive_response
SYSLOG_IDENTIFIER=systemd-timesyncd
MESSAGE=Contacted time server 185.125.190.58:123 (ntp.ubuntu.com).
_PID=1729
_UID=996
_GID=996
_COMM=systemd-timesyn
_EXE=/usr/lib/systemd/systemd-timesyncd
_CMDLINE=/usr/lib/systemd/systemd-timesyncd
_CAP_EFFECTIVE=2000000
v!Eq
_SYSTEMD_CGROUP=/system.slice/systemd-timesyncd.service
^%&N
_SYSTEMD_UNIT=systemd-timesyncd.service
_SYSTEMD_INVOCATION_ID=cc56a595320e4d639e0d248be91669b8
_SOURCE_REALTIME_TIMESTAMP=1733331256776957
CODE_LINE=614
MESSAGE=Initial clock synchronization to Wed 2024-12-04 20:54:16.776868 +04.
MESSAGE_ID=7c8a41f37b764941a0e1780b1be2f037
MESSAGE_ID
MONOTONIC_USEC=64611923
Y+AKF
MONOTONIC_USEC
fW~|
REALTIME_USEC=1733331256776868
REALTIME_USEC
BOOTTIME_USEC=64611923
BOOTTIME_USEC
_SOURCE_REALTIME_TIMESTAMP=1733331256777003
MESSAGE=Display server started.
PRIORITY=7
CODE_FILE=unknown
CODE_LINE=0
CODE_FUNC=unknown
SYSLOG_IDENTIFIER=sddm
_PID=2304
_COMM=sddm
[w7.
_EXE=/usr/bin/sddm
_CMDLINE=/usr/bin/sddm
_CAP_EFFECTIVE=1ffffffffff
_SYSTEMD_CGROUP=/system.slice/sddm.service
_SYSTEMD_UNIT=sddm.service
FtVR
_SYSTEMD_INVOCATION_ID=18130ded412c4c99bb26824efe54ca6f
_SOURCE_REALTIME_TIMESTAMP=1733331257251429
H6f{
MESSAGE=Socket server starting...
_SOURCE_REALTIME_TIMESTAMP=1733331257251440
MESSAGE=Socket server started.
_SOURCE_REALTIME_TIMESTAMP=1733331257251611
MESSAGE=Loading theme configuration from "/usr/share/sddm/themes/LyraS-dark/theme.conf"
_SOURCE_REALTIME_TIMESTAMP=1733331257400179
MESSAGE=Greeter starting...
_SOURCE_REALTIME_TIMESTAMP=1733331257445232
_TRANSPORT=syslog
PRIORITY=5
SYSLOG_FACILITY=1
SYSLOG_IDENTIFIER=vboxdrv.sh
SYSLOG_TIMESTAMP=Dec  4 20:54:17 
SYSLOG_TIMESTAMP
MESSAGE=VirtualBox services started.
_PID=2981
_COMM=logger
_SYSTEMD_CGROUP=/system.slice/vboxdrv.service
_SYSTEMD_UNIT=vboxdrv.service
<x7)
_SYSTEMD_INVOCATION_ID=d79ee1df17f74d1d8cbbc2aefbf8a7cd
_SOURCE_REALTIME_TIMESTAMP=1733331257566208
TID=1
 "*wo
CODE_FILE=src/core/job.c
?r>!B
CODE_LINE=796
CODE_FUNC=job_emit_done_message
=wA6
SYSLOG_IDENTIFIER=systemd
MESSAGE=Started vboxdrv.service - VirtualBox Linux kernel module.
JOB_ID=221
JOB_ID
JOB_TYPE=start
JOB_TYPE
eaMvO
JOB_RESULT=done
JOB_RESULT
INVOCATION_ID=d79ee1df17f74d1d8cbbc2aefbf8a7cd
INVOCATION_ID
MESSAGE_ID=39f53479d3a045ac8e11786248231fbf
UNIT=vboxdrv.service
UNIT
_PID=1
_COMM=systemd
_EXE=/usr/lib/systemd/systemd
_CMDLINE=/sbin/init splash
_SYSTEMD_```
ings /var/log/journal/c97b1fa3e1774360ab3a0bf70ca62eeb/system.journaCGROUP=/init.scope
_SYSTEMD_UNIT=init.scope
_SYSTEMD_SLICE=-.slice
_SOURCE_REALTIME_TIMESTAMP=1733331257566974
ED5v
CODE_LINE=609
CODE_FUNC=job_emit_start_message
MESSAGE=Starting vboxautostart-service.service...
JOB_ID=142
INVOCATION_ID=55df50c52e144ac6a15bba0b17483a2d
+<;k
MESSAGE_ID=7d4958e842da4a758f6c1cdc7b36dcc5
UNIT=vboxautostart-service.service
_SOURCE_REALTIME_TIMESTAMP=1733331257580079
MESSAGE=Starting vboxballoonctrl-service.service...
JOB_ID=226
INVOCATION_ID=db7df623057a4090b888193f43542386
UNIT=vboxballoonctrl-service.service
_SOURCE_REALTIME_TIMESTAMP=1733331257580941
MESSAGE=Starting vboxweb-service.service...
JOB_ID=124
INVOCATION_ID=33d0e77145d4422e810087b639106702
UNIT=vboxweb-service.service
_SOURCE_REALTIME_TIMESTAMP=1733331257581807
MESSAGE=Started vboxautostart-service.service.
_SOURCE_REALTIME_TIMESTAMP=1733331257608082
CODE_FILE=src/core/unit.c
CODE_LINE=6013
CODE_FUNC=unit_log_success
MESSAGE_ID=7ad2d189f7e94e70a38c781354912448
INVOCATION_ID=ebc446a1a5db413f99af18eb31f8c74d
MESSAGE=NetworkManager-dispatcher.service: Deactivated successfully.
UNIT=NetworkManager-dispatcher.service
QgTI
_SOURCE_REALTIME_TIMESTAMP=1733331257955121
MESSAGE=Started vboxballoonctrl-service.service.
_SOURCE_REALTIME_TIMESTAMP=1733331258058309
_DO$
MESSAGE=Started vboxweb-service.service.
_SOURCE_REALTIME_TIMESTAMP=1733331258058789
MESSAGE=Reached target multi-user.target - Multi-User System.
JOB_ID=2
INVOCATION_ID=e4a0643d5b1b42d1b6092be7a1f6f879
UNIT=multi-user.target
_SOURCE_REALTIME_TIMESTAMP=1733331258059858
MESSAGE=Reached target graphical.target - Graphical Interface.
JOB_ID=1
INVOCATION_ID=c964b09fd84e46f39d88769f0373e64f
UNIT=graphical.target
_SOURCE_REALTIME_TIMESTAMP=1733331258060006
H9(h
MESSAGE=Starting systemd-update-utmp-runlevel.service - Record Runlevel Change in UTMP...
JOB_ID=164
INVOCATION_ID=cec11b2acf5f427296c3e97c14ed5f80
UNIT=systemd-update-utmp-runlevel.service
_SOURCE_REALTIME_TIMESTAMP=1733331258067257
HJP@tN
MESSAGE=Starting tlp.service - TLP system startup/shutdown...
JOB_ID=150
INVOCATION_ID=cb9231135f2d4d94b67e26be3faef384
UNIT=tlp.service
_SOURCE_REALTIME_TIMESTAMP=1733331258068201
MESSAGE=systemd-update-utmp-runlevel.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331258071112
MESSAGE=Finished systemd-update-utmp-runlevel.service - Record Runlevel Change in UTMP.
_SOURCE_REALTIME_TIMESTAMP=1733331258071258
yRnGQ{c
_TRANSPORT=stdout
_STREAM_ID=f51165ff18d24999b642e02fbe6e9376
_STREAM_ID
SYSLOG_IDENTIFIER=tlp
MESSAGE=Applying power save settings...done.
_PID=2999
_COMM=tlp
_EXE=/usr/bin/dash
_CMDLINE=/bin/sh /usr/sbin/tlp init start
_SYSTEMD_CGROUP=/system.slice/tlp.service
_SYSTEMD_UNIT=tlp.service
_SYSTEMD_INVOCATION_ID=cb9231135f2d4d94b67e26be3faef384
MESSAGE=[PAM] Starting...
SYSLOG_IDENTIFIER=sddm-helper
_PID=2980
_COMM=sddm-helper
_EXE=/usr/lib/x86_64-linux-gnu/sddm/sddm-helper
_CMDLINE=/usr/lib/x86_64-linux-gnu/sddm/sddm-helper --socket /tmp/sddm-auth-8f4222ad-4051-4912-bf30-593de56e32d6 --id 2 --start "/usr/bin/sddm-greeter --socket /tmp/sddm-:0-QDCqOq --theme /usr/share/sddm/themes/LyraS-dark" --user sddm --greeter
_SOURCE_REALTIME_TIMESTAMP=1733331259242326
MESSAGE=[PAM] Authenticating...
_SOURCE_REALTIME_TIMESTAMP=1733331259242336
MESSAGE=[PAM] returning.
_SOURCE_REALTIME_TIMESTAMP=1733331259242401
MESSAGE=Setting battery charge thresholds...done.
NlVY
MESSAGE=Finished tlp.service - TLP system startup/shutdown.
_SOURCE_REALTIME_TIMESTAMP=1733331259339458
CODE_FILE=src/core/manager.c
CODE_LINE=3717
CODE_FUNC=manager_notify_finished
MESSAGE_ID=b07a249cd024414a82dd00cd181378ff
KERNEL_USEC=7346134
KERNEL_USEC
USERSPACE_USEC=59828577
USERSPACE_USEC
MESSAGE=Startup finished in 18.589s (firmware) + 8.217s (loader) + 7.346s (kernel) + 59.828s (userspace) = 1min 33.982s.
_SOURCE_REALTIME_TIMESTAMP=1733331259339664
	X	A
SYSLOG_FACILITY=10
A0H%~
SYSLOG_TIMESTAMP=Dec  4 20:54:19 
MESSAGE=pam_unix(sddm-greeter:session): session opened for user sddm(uid=112) by sddm(uid=0)
zYjS
_SOURCE_REALTIME_TIMESTAMP=1733331259576344
MESSAGE=Created slice user-112.slice - User Slice of UID 112.
JOB_ID=1693
INVOCATION_ID=c1d8b50ae5e3406ba97f6600012c099b
UNIT=user-112.slice
%cl#
_SOURCE_REALTIME_TIMESTAMP=1733331259612425
MESSAGE=Starting user-runtime-dir@112.service - User Runtime Directory /run/user/112...
JOB_ID=1789
INVOCATION_ID=1412049a6ab94e88a57ddb6b3c6cbcc4
UNIT=user-runtime-dir@112.service
_SOURCE_REALTIME_TIMESTAMP=1733331259625147
SYSLOG_FACILITY=4
TID=1854
CODE_FILE=src/login/logind-session.c
CODE_LINE=789
CODE_FUNC=session_start
SYSLOG_IDENTIFIER=systemd-logind
MESSAGE_ID=8d45620c1a4348dbb17410da57c60c66
SESSION_ID=1
SESSION_ID
USER_ID=sddm
USER_ID
LEADER=2980
LEADER
MESSAGE=New session 1 of user sddm.
_PID=1854
_COMM=systemd-logind
_EXE=/usr/lib/systemd/systemd-logind
_CMDLINE=/usr/lib/systemd/systemd-logind
_CAP_EFFECTIVE=24420020f
_SYSTEMD_CGROUP=/system.slice/systemd-logind.service
_SYSTEMD_UNIT=systemd-logind.service
_SYSTEMD_INVOCATION_ID=9c2c700d0f264b4bb9940798c8bfaa59
_SOURCE_REALTIME_TIMESTAMP=1733331259626767
MESSAGE=Finished user-runtime-dir@112.service - User Runtime Directory /run/user/112.
_SOURCE_REALTIME_TIMESTAMP=1733331259668015
MESSAGE=Starting user@112.service - User Manager for UID 112...
JOB_ID=1692
INVOCATION_ID=3e26f39b4618494892f3743376714e77
UNIT=user@112.service
_SOURCE_REALTIME_TIMESTAMP=1733331259678174
SYSLOG_IDENTIFIER=(systemd)
MESSAGE=pam_unix(systemd-user:session): session opened for user sddm(uid=112) by sddm(uid=0)
_PID=3173
%c:y
_COMM=(systemd)
_EXE=/usr/lib/systemd/systemd-executor
_CMDLINE="(systemd)"
2eHI
_AUDIT_SESSION=2
_AUDIT_SESSION
_AUDIT_LOGINUID=112
_AUDIT_LOGINUID
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/init.scope
_SYSTEMD_OWNER_UID=112
_SYSTEMD_OWNER_UID
_SYSTEMD_UNIT=user@112.service
:Vjh
_SYSTEMD_USER_UNIT=init.scope
_SYSTEMD_USER_UNIT
_SYSTEMD_SLICE=user-112.slice
_SYSTEMD_USER_SLICE=-.slice
_SYSTEMD_USER_SLICE
_SOURCE_REALTIME_TIMESTAMP=1733331259785162
TID=3173
CODE_FILE=src/core/main.c
CODE_LINE=2382
CODE_FUNC=do_queue_default_job
MESSAGE=Queued start job for default target default.target.
_UID=112
_GID=115
c x$
_CMDLINE=/usr/lib/systemd/systemd --user
_CAP_EFFECTIVE=0
_SOURCE_REALTIME_TIMESTAMP=1733331261113120
MESSAGE=Created slice app.slice - User Application Slice.
JOB_ID=13
USER_INVOCATION_ID=2a776bea65eb4d16806435c042230128
USER_INVOCATION_ID
USER_UNIT=app.slice
USER_UNIT
_SOURCE_REALTIME_TIMESTAMP=1733331261127334
MESSAGE=Created slice session.slice - User Core Session Slice.
JOB_ID=37
USER_INVOCATION_ID=2aacfdfc4b6c4586a23049a0733448da
USER_UNIT=session.slice
_SOURCE_REALTIME_TIMESTAMP=1733331261127924
CODE_LINE=779
MESSAGE=drkonqi-coredump-cleanup.timer - Cleanup lingering KCrash metadata was skipped because of an unmet condition check (ConditionPathExistsGlob=/var/lib/sddm/.cache/kcrash-metadata/*.ini).
JOB_ID=33
USER_INVOCATION_ID=
USER_UNIT=drkonqi-coredump-cleanup.timer
_SOURCE_REALTIME_TIMESTAMP=1733331261128225
MESSAGE=Started launchpadlib-cache-clean.timer - Clean up old files in the Launchpadlib cache.
JOB_ID=34
USER_INVOCATION_ID=8345e961a6144f0185579a2908441373
USER_UNIT=launchpadlib-cache-clean.timer
_SOURCE_REALTIME_TIMESTAMP=1733331261128257
MESSAGE=Started snap.firmware-updater.firmware-notifier.timer - Timer firmware-notifier for snap application firmware-updater.firmware-notifier.
'o+V
JOB_ID=32
USER_INVOCATION_ID=6420abd9b8f64490b95ce8f091caeb8b
USER_UNIT=snap.firmware-updater.firmware-notifier.timer
_SOURCE_REALTIME_TIMESTAMP=1733331261128609
MESSAGE=Reached target paths.target - Paths.
JOB_ID=35
USER_INVOCATION_ID=62e340ecaecd4f83bc405d1045b8d9b5
USER_UNIT=paths.target
_SOURCE_REALTIME_TIMESTAMP=1733331261128635
MESSAGE=Reached target timers.target - Timers.
s,N ^\h
JOB_ID=31
,1mN
USER_INVOCATION_ID=7de0ea0b89f64c18a2bf43ed234b6b66
USER_UNIT=timers.target
_SOURCE_REALTIME_TIMESTAMP=1733331261128658
MESSAGE=Starting dbus.socket - D-Bus User Message Bus Socket...
JOB_ID=16
USER_INVOCATION_ID=ca88912310de45e9b1925d69da8dc2a2
USER_UNIT=dbus.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261129774
MESSAGE=Listening on dirmngr.socket - GnuPG network certificate management daemon.
JOB_ID=21
USER_INVOCATION_ID=5870aa8b97914c16bfdbd833a00b82f8
USER_UNIT=dirmngr.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261129967
MESSAGE=Listening on drkonqi-coredump-launcher.socket - Socket to launch DrKonqi for a systemd-coredump crash.
JOB_ID=30
USER_INVOCATION_ID=34c8beb5512543799680dc911957cc30
USER_UNIT=drkonqi-coredump-launcher.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131283
MESSAGE=Listening on gcr-ssh-agent.socket - GCR ssh-agent wrapper.
JOB_ID=19
USER_INVOCATION_ID=6115ddff9cb24226916009af49e70470
USER_UNIT=gcr-ssh-agent.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131387
MESSAGE=Listening on gnome-keyring-daemon.socket - GNOME Keyring daemon.
e9a<
JOB_ID=28
USER_INVOCATION_ID=b397cfe682264bc08829725812b4710c
USER_UNIT=gnome-keyring-daemon.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131478
MESSAGE=Listening on gpg-agent-browser.socket - GnuPG cryptographic agent and passphrase cache (access for web browsers).
JOB_ID=29
lNUP
USER_INVOCATION_ID=44079c1f43634d0f9eb721c6f02e1dc2
USER_UNIT=gpg-agent-browser.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131559
MESSAGE=Listening on gpg-agent-extra.socket - GnuPG cryptographic agent and passphrase cache (restricted).
JOB_ID=27
USER_INVOCATION_ID=e1c14ac381b44d149dc7caa7e646c5cd
USER_UNIT=gpg-agent-extra.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131637
MESSAGE=Starting gpg-agent-ssh.socket - GnuPG cryptographic agent (ssh-agent emulation)...
JOB_ID=22
USER_INVOCATION_ID=a559c74da901425f85f2cec97871fad3
USER_UNIT=gpg-agent-ssh.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261132223
MESSAGE=Listening on gpg-agent.socket - GnuPG cryptographic agent and passphrase cache.
JOB_ID=12
b,;?
USER_INVOCATION_ID=668bb3e3aa5b40608951730c8b4c3125
USER_UNIT=gpg-agent.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261132310
MESSAGE=Listening on keyboxd.socket - GnuPG public key management service.
JOB_ID=26
USER_INVOCATION_ID=c93ef3bdc24d4c2a86a5d6a291488411
USER_UNIT=keyboxd.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177123
MESSAGE=Listening on pipewire-pulse.socket - PipeWire PulseAudio.
JOB_ID=23
USER_INVOCATION_ID=fd636aa9816547f08a99ea8d95457299
USER_UNIT=pipewire-pulse.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177280
MESSAGE=Listening on pipewire.socket - PipeWire Multimedia System Sockets.
JOB_ID=25
USER_INVOCATION_ID=7d3f4a6710be4ce0abd75d8061f4f420
USER_UNIT=pipewire.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177402
H M'
"BoZ
MESSAGE=Listening on pk-debconf-helper.socket - debconf communication socket.
JOB_ID=17
USER_INVOCATION_ID=756ee36c02024273a63efe653dfe6efd
USER_UNIT=pk-debconf-helper.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177502
MESSAGE=Listening on snapd.session-agent.socket - REST API socket for snapd user session agent.
JOB_ID=20
USER_INVOCATION_ID=4772f021c8254d9b8b6aa97456487df7
USER_UNIT=snapd.session-agent.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177594
7*v,j~
MESSAGE=Listening on speech-dispatcher.socket - Speech Dispatcher Socket.
JOB_ID=18
USER_INVOCATION_ID=ce319513b216497f98ec8bed94566ad0
USER_UNIT=speech-dispatcher.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177718
MESSAGE=Listening on dbus.socket - D-Bus User Message Bus Socket.
_SOURCE_REALTIME_TIMESTAMP=1733331261181330
MESSAGE=Listening on gpg-agent-ssh.socket - GnuPG cryptographic agent (ssh-agent emulation).
_SOURCE_REALTIME_TIMESTAMP=1733331261206506
MESSAGE=Reached target sockets.target - Sockets.
JOB_ID=11
USER_INVOCATION_ID=db5f0583d6b54c4aa41c18a3d9bbe8bc
USER_UNIT=sockets.target
_SOURCE_REALTIME_TIMESTAMP=1733331261206562
MESSAGE=Reached target basic.target - Basic System.
JOB_ID=10
USER_INVOCATION_ID=f0fdba571ced4e9db271ba30cff715cd
USER_UNIT=basic.target
_SOURCE_REALTIME_TIMESTAMP=1733331261206578
MESSAGE=drkonqi-coredump-cleanup.service - Cleanup lingering KCrash metadata was skipped because of an unmet condition check (ConditionPathExistsGlob=/var/lib/sddm/.cache/kcrash-metadata/*.ini).
JOB_ID=41
USER_UNIT=drkonqi-coredump-cleanup.service
_SOURCE_REALTIME_TIMESTAMP=1733331261206621
W_oxPC3
MESSAGE=Started user@112.service - User Manager for UID 112.
_SOURCE_REALTIME_TIMESTAMP=1733331261206832
MESSAGE=Started pipewire.service - PipeWire Multimedia Service.
JOB_ID=36
USER_INVOCATION_ID=a8efb9779ac349968384d376f0dbea4e
USER_UNIT=pipewire.service
S!pX{.S
_SOURCE_REALTIME_TIMESTAMP=1733331261207477
UUmC
MESSAGE=Started session-1.scope - Session 1 of User sddm.
JOB_ID=1790
INVOCATION_ID=b653b46ed00a4c418d0840905527f0a4
UNIT=session-1.scope
_SOURCE_REALTIME_TIMESTAMP=1733331261207967
MESSAGE=Started filter-chain.service - PipeWire filter chain daemon.
JOB_ID=40
USER_INVOCATION_ID=788f9375ea1241279f475dc2d8086193
USER_UNIT=filter-chain.service
_SOURCE_REALTIME_TIMESTAMP=1733331261208232
MESSAGE=Starting fluidsynth.service - FluidSynth Daemon...
JOB_ID=42
USER_INVOCATION_ID=0b9ce58154094342b7d680c414bc0a1a
USER_UNIT=fluidsynth.service
_SOURCE_REALTIME_TIMESTAMP=1733331261210011
MESSAGE=Started wireplumber.service - Multimedia Service Session Manager.
JOB_ID=38
USER_INVOCATION_ID=78766027e44147d590a8f7ab5533d31f
USER_UNIT=wireplumber.service
_SOURCE_REALTIME_TIMESTAMP=1733331261210739
MESSAGE=Started pipewire-pulse.service - PipeWire PulseAudio.
BPRl
JOB_ID=43
USER_INVOCATION_ID=794bbfec30b1467492fa3d17a0cabc67
USER_UNIT=pipewire-pulse.service
_SOURCE_REALTIME_TIMESTAMP=1733331261211513
PRIORITY=4
TID=3197
CODE_FILE=src/core/exec-invoke.c
CODE_LINE=1760
CODE_FUNC=apply_protect_hostname
SYSLOG_IDENTIFIER=(uidsynth)
MESSAGE=fluidsynth.service: ProtectHostname=yes is configured, but UTS namespace setup is prohibited (container manager?), ignoring namespace setup.
_PID=3197
_COMM=(uidsynth)
_CMDLINE="(uidsynth)"
_SELINUX_CONTEXT=unprivileged_userns (enforce)
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/app.slice/fluidsynth.service
_SYSTEMD_USER_UNIT=fluidsynth.service
_SYSTEMD_USER_SLICE=app.slice
_SYSTEMD_INVOCATION_ID=0b9ce58154094342b7d680c414bc0a1a
_SOURCE_REALTIME_TIMESTAMP=1733331261213430
PRIORITY=3
CODE_LINE=4875
CODE_FUNC=exec_invoke
MESSAGE=fluidsynth.service: Failed to drop capabilities: Operation not permitted
_SOURCE_REALTIME_TIMESTAMP=1733331261213521
S,P(
_SOURCE_MONOTONIC_TIMESTAMP=69372318
SYSLOG_FACILITY=0
SYSLOG_IDENTIFIER=kernel
MESSAGE=kauditd_printk_skb: 16 callbacks suppressed
_SOURCE_MONOTONIC_TIMESTAMP=69372322
MESSAGE=audit: type=1400 audit(1733331261.212:219): apparmor="AUDIT" operation="userns_create" class="namespace" info="Userns create - transitioning profile" profile="unconfined" pid=3197 comm="(uidsynth)" requested="userns_create" target="unprivileged_userns"
_SOURCE_MONOTONIC_TIMESTAMP=69372728
MESSAGE=audit: type=1400 audit(1733331261.212:220): apparmor="DENIED" operation="capable" class="cap" profile="unprivileged_userns" pid=3197 comm="(uidsynth)" capability=21  capname="sys_admin"
_SOURCE_MONOTONIC_TIMESTAMP=69372842
MESSAGE=audit: type=1400 audit(1733331261.212:221): apparmor="DENIED" operation="capable" class="cap" profile="unprivileged_userns" pid=3197 comm="(uidsynth)" capability=8  capname="setpcap"
CODE_LINE=6066
CODE_FUNC=unit_log_process_exit
MESSAGE_ID=98e322203f7a4ed290d09fe03c09fe15
MESSAGE=fluidsynth.service: Main process exited, code=exited, status=218/CAPABILITIES
EXIT_CODE=exited
EXIT_CODE
EXIT_STATUS=218
EXIT_STATUS
COMMAND=ExecStart
COMMAND
_SOURCE_REALTIME_TIMESTAMP=1733331261213966
CODE_LINE=6024
CODE_FUNC=unit_log_failure
MESSAGE_ID=d9b373ed55a64feb8242e02dbe79a49c
MESSAGE=fluidsynth.service: Failed with result 'exit-code'.
UNIT_RESULT=exit-code
UNIT_RESULT
^,u	
_SOURCE_REALTIME_TIMESTAMP=1733331261214113
MESSAGE=Failed to start fluidsynth.service - FluidSynth Daemon.
JOB_RESULT=failed
MESSAGE_ID=be02cf6855d2428ba40df7e9d022f03d
_SOURCE_REALTIME_TIMESTAMP=1733331261214272
MESSAGE=Reached target default.target - Main User Target.
JOB_ID=9
USER_INVOCATION_ID=2a1c40caf88e4cf0a4f0ff0b65bc7bee
USER_UNIT=default.target
_SOURCE_REALTIME_TIMESTAMP=1733331261214443
CODE_LINE=3732
MESSAGE_ID=eed00a68ffd84e31882105fd973abdd1
USERSPACE_USEC=1424689
MESSAGE=Startup finished in 1.424s.
_SOURCE_REALTIME_TIMESTAMP=1733331261214475
MESSAGE=Writing cookie to "/tmp/xauth_BGfmwu"
_AUDIT_SESSION=1
_SYSTEMD_CGROUP=/user.slice/user-112.slice/session-1.scope
_SYSTEMD_SESSION=1
_SYSTEMD_SESSION
u-U]2
_SYSTEMD_UNIT=session-1.scope
_SYSTEMD_INVOCATION_ID=b653b46ed00a4c418d0840905527f0a4
_SOURCE_REALTIME_TIMESTAMP=1733331261226217
MESSAGE=Starting X11 session: "" "/usr/bin/sddm-greeter --socket /tmp/sddm-:0-QDCqOq --theme /usr/share/sddm/themes/LyraS-dark"
_SOURCE_REALTIME_TIMESTAMP=1733331261226296
MESSAGE=Greeter session started successfully
_SOURCE_REALTIME_TIMESTAMP=1733331261268115
MESSAGE=Starting dbus.service - D-Bus User Message Bus...
JOB_ID=47
brWL
USER_INVOCATION_ID=517ebe1d3ebb4f89a81346e7acdf73b8
USER_UNIT=dbus.service
_SOURCE_REALTIME_TIMESTAMP=1733331261486033
SYSLOG_IDENTIFIER=dbus-daemon
SYSLOG_PID=3203
SYSLOG_TIMESTAMP=Dec  4 20:54:21 
MESSAGE=[session uid=112 pid=3203] AppArmor D-Bus mediation is enabled
SYSLOG_RAW=<30>Dec  4 20:54:21 dbus-daemon[3203]: [session uid=112 pid=3203] AppArmor D-Bus mediation is enabled
SYSLOG_RAW
MD&}
_PID=3203
_COMM=dbus-daemon
_EXE=/usr/bin/dbus-daemon
_CMDLINE=/usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/session.slice/dbus.service
_SYSTEMD_USER_UNIT=dbus.service
_SYSTEMD_USER_SLICE=session.slice
_SYSTEMD_INVOCATION_ID=517ebe1d3ebb4f89a81346e7acdf73b8
_SOURCE_REALTIME_TIMESTAMP=1733331261927762
MESSAGE=Started dbus.service - D-Bus User Message Bus.
_SOURCE_REALTIME_TIMESTAMP=1733331261928179
SYSLOG_PID=1806
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.RealtimeKit1' unit='rtkit-daemon.service' requested by ':1.33' (uid=112 pid=3195 comm="/usr/bin/pipewire" label="unconfined")
_PID=1806
_UID=101
-1Po
_GID=101
_CMDLINE=@dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
_CAP_EFFECTIVE=20000000
_SYSTEMD_CGROUP=/system.slice/dbus.service
_SYSTEMD_UNIT=dbus.service
_SYSTEMD_INVOCATION_ID=845fc590c8ac471ebd6c589cfcb77488
_SOURCE_REALTIME_TIMESTAMP=1733331261929260
MESSAGE=Starting rtkit-daemon.service - RealtimeKit Scheduling Policy Service...
JOB_ID=1889
INVOCATION_ID=21682ebddd26445fabb9c6d1a9bc888d
UNIT=rtkit-daemon.service
M!C.
_SOURCE_REALTIME_TIMESTAMP=1733331261982124
CODE_FILE=../src/modules/module-jackdbus-detect.c
CODE_LINE=216
CODE_FUNC=on_is_started_received
MESSAGE=mod.jackdbus-detect: Failed to receive jackdbus reply: org.freedesktop.DBus.Error.ServiceUnknown: The name org.jackaudio.service was not provided by any .service files
TID=3195
SYSLOG_IDENTIFIER=pipewire
_PID=3195
_COMM=pipewire
_EXE=/usr/bin/pipewire
_CMDLINE=/usr/bin/pipewire
+'hC
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/session.slice/pipewire.service
_SYSTEMD_USER_UNIT=pipewire.service
_SYSTEMD_INVOCATION_ID=a8efb9779ac349968384d376f0dbea4e
MnjK
_SOURCE_REALTIME_TIMESTAMP=1733331262082220
SYSLOG_TIMESTAMP=Dec  4 20:54:22 
MESSAGE=[system] Successfully activated service 'org.freedesktop.RealtimeKit1'
_SOURCE_REALTIME_TIMESTAMP=1733331262173374
MESSAGE=Started rtkit-daemon.service - RealtimeKit Scheduling Policy Service.
_SOURCE_REALTIME_TIMESTAMP=1733331262173510
SYSLOG_IDENTIFIER=rtkit-daemon
E@=2Vg
SYSLOG_PID=3213
_%,A@
SYSLOG_TIMESTAMP=Dec  4 16:54:22 
MESSAGE=Successfully called chroot.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Successfully called chroot.
_PID=3213
_COMM=rtkit-daemon
_EXE=/usr/libexec/rtkit-daemon
_CMDLINE=/usr/libexec/rtkit-daemon
_CAP_EFFECTIVE=800004
_SYSTEMD_CGROUP=/system.slice/rtkit-daemon.service
T41P_f
_SYSTEMD_UNIT=rtkit-daemon.service
_SYSTEMD_INVOCATION_ID=21682ebddd26445fabb9c6d1a9bc888d
_SOURCE_REALTIME_TIMESTAMP=1733331262173613
MESSAGE=Successfully dropped privileges.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Successfully dropped privileges.
_UID=117
$\&G\	g
_GID=120
_SOURCE_REALTIME_TIMESTAMP=1733331262173658
MESSAGE=Successfully limited resources.
6hf_W
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Successfully limited resources.
_SOURCE_REALTIME_TIMESTAMP=1733331262173667
MESSAGE=Canary thread running.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Canary thread running.
G9#>sO
_SOURCE_REALTIME_TIMESTAMP=1733331262173734
@u-dn{
MESSAGE=Running.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Running.
_SOURCE_REALTIME_TIMESTAMP=1733331262173750
MESSAGE=Watchdog thread running.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Watchdog thread running.
_SOURCE_REALTIME_TIMESTAMP=1733331262173771
MESSAGE=Supervising 0 threads of 0 processes of 0 users.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Supervising 0 threads of 0 processes of 0 users.
_SOURCE_REALTIME_TIMESTAMP=1733331262173806
Ht=K
_SOURCE_REALTIME_TIMESTAMP=1733331262173841
_SOURCE_REALTIME_TIMESTAMP=1733331262173874
_SOURCE_REALTIME_TIMESTAMP=1733331262173912
_SOURCE_REALTIME_TIMESTAMP=1733331262173995
_SOURCE_REALTIME_TIMESTAMP=1733331262174060
_SOURCE_REALTIME_TIMESTAMP=1733331262174131
_SOURCE_REALTIME_TIMESTAMP=1733331262174174
_SOURCE_REALTIME_TIMESTAMP=1733331262174234
_SOURCE_REALTIME_TIMESTAMP=1733331262174303
_SOURCE_REALTIME_TIMESTAMP=1733331262174345
_SOURCE_REALTIME_TIMESTAMP=1733331262174401
CODE_FILE=../lib/wp/device.c
CODE_LINE=619
CODE_FUNC=wp_spa_device_new_from_spa_factory
MESSAGE=SPA handle 'api.libcamera.enum.manager' could not be loaded; is it installed?
GLIB_DOMAIN=wp-device
GLIB_DOMAIN
_PID=3198
_COMM=wireplumber
_EXE=/usr/bin/wireplumber
_CMDLINE=/usr/bin/wireplumber
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/session.slice/wireplumber.service
_SYSTEMD_USER_UNIT=wireplumber.service
_SYSTEMD_INVOCATION_ID=78766027e44147d590a8f7ab5533d31f
#:mr
_SOURCE_REALTIME_TIMESTAMP=1733331263132969
Kl1P
CODE_FILE=libcamera.lua
CODE_LINE=173
CODE_FUNC=chunk
MESSAGE=PipeWire's libcamera SPA missing or broken. libcamera not supported.
GLIB_DOMAIN=script/libcamera
_SOURCE_REALTIME_TIMESTAMP=1733331263132984
MESSAGE=High-DPI autoscaling Enabled
SYSLOG_IDENTIFIER=sddm-greeter
_PID=3202
_COMM=sddm-greeter
_EXE=/usr/bin/sddm-greeter
_CMDLINE=/usr/bin/sddm-greeter --socket /tmp/sddm-:0-QDCqOq --theme /usr/share/sddm/themes/LyraS-dark
_SOURCE_REALTIME_TIMESTAMP=1733331263586975
CODE_FILE=../spa/plugins/bluez5/upower.c
CODE_LINE=54
CODE_FUNC=upower_get_percentage_properties_reply
MESSAGE=Failed to get percentage from UPower: org.freedesktop.DBus.Error.NameHasNoOwner
GLIB_DOMAIN=pw
_SOURCE_REALTIME_TIMESTAMP=1733331263857168
SYSLOG_TIMESTAMP=Dec  4 16:54:24 
MESSAGE=Successfully made thread 3195 of process 3195 owned by '112' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3195 of process 3195 owned by '112' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331264025587
MESSAGE=Supervising 1 threads of 1 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 1 threads of 1 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264025606
MESSAGE=Successfully made thread 3217 of process 3195 owned by '112' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3217 of process 3195 owned by '112' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331264027151
MESSAGE=Supervising 2 threads of 1 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 2 threads of 1 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264027163
MESSAGE=Successfully made thread 3199 of process 3199 owned by '112' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3199 of process 3199 owned by '112' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331264028322
MESSAGE=Supervising 3 threads of 2 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 3 threads of 2 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264028333
MESSAGE=Successfully made thread 3218 of process 3199 owned by '112' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3218 of process 3199 owned by '112' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331264029482
MESSAGE=Supervising 4 threads of 2 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 4 threads of 2 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264029493
MESSAGE=Successfully made thread 3198 of process 3198 owned by '112' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3198 of process 3198 owned by '112' high priority at nice level -11.
\jOQ
_SOURCE_REALTIME_TIMESTAMP=1733331264030635
MESSAGE=Supervising 5 threads of 3 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 5 threads of 3 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264030647
MESSAGE=Successfully made thread 3215 of process 3198 owned by '112' RT at priority 20.
w6U#
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3215 of process 3198 owned by '112' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331264031826
MESSAGE=Supervising 6 threads of 3 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 6 threads of 3 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264031837
MESSAGE=Successfully made thread 3214 of process 3196 owned by '112' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3214 of process 3196 owned by '112' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331264033036
MESSAGE=Supervising 7 threads of 4 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 7 threads of 4 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264033048
MESSAGE=Reading from "/usr/local/share/xsessions/plasma.desktop"
_SOURCE_REALTIME_TIMESTAMP=1733331265399593
MESSAGE=Reading from "/usr/share/xsessions/plasma.desktop"
_SOURCE_REALTIME_TIMESTAMP=1733331265399614
_SOURCE_REALTIME_TIMESTAMP=1733331265444743
MESSAGE=Connected to the daemon.
_SOURCE_REALTIME_TIMESTAMP=1733331265537449
MESSAGE=Message received from greeter: Connect
_SOURCE_REALTIME_TIMESTAMP=1733331265537525
MESSAGE=Loading file:///usr/share/sddm/themes/LyraS-dark/Main.qml...
_SOURCE_REALTIME_TIMESTAMP=1733331266744074
INVOCATION_ID=d6f25d8454a24f14be92785a8115105f
MESSAGE=systemd-hostnamed.service: Deactivated successfully.
UNIT=systemd-hostnamed.service
H]3j
_SOURCE_REALTIME_TIMESTAMP=1733331267207691
_SOURCE_MONOTONIC_TIMESTAMP=75560436
MESSAGE=audit: type=1400 audit(1733331267.400:222): apparmor="DENIED" operation="ptrace" class="ptrace" profile="snap.docker.dockerd" pid=3272 comm="ps" requested_mask="read" denied_mask="read" peer="rsyslogd"
_SOURCE_MONOTONIC_TIMESTAMP=75561439
MESSAGE=audit: type=1400 audit(1733331267.401:223): apparmor="DENIED" operation="ptrace" class="ptrace" profile="snap.docker.dockerd" pid=3272 comm="ps" requested_mask="read" denied_mask="read" peer="/usr/sbin/cupsd"
_SOURCE_MONOTONIC_TIMESTAMP=75562002
MESSAGE=audit: type=1400 audit(1733331267.401:224): apparmor="DENIED" operation="ptrace" class="ptrace" profile="snap.docker.dockerd" pid=3272 comm="ps" requested_mask="read" denied_mask="read" peer="/usr/sbin/cups-browsed"
_SOURCE_MONOTONIC_TIMESTAMP=75725880
]*;	
MESSAGE=audit: type=1400 audit(1733331267.565:225): apparmor="STATUS" operation="profile_load" profile="snap.docker.dockerd" name="docker-default" pid=3274 comm="apparmor_parser"
_SOURCE_MONOTONIC_TIMESTAMP=76548068
MESSAGE=evm: overlay not supported
_SOURCE_MONOTONIC_TIMESTAMP=77290884
MESSAGE=Initializing XFRM netlink socket
3XbU
MESSAGE=<info>  [1733331269.1874] manager: (docker0): new Bridge device (/org/freedesktop/NetworkManager/Devices/3)
SYSLOG_IDENTIFIER=NetworkManager
SYSLOG_PID=1978
NM_LOG_DOMAINS=DEVICE
up.Jf
NM_LOG_DOMAINS
NM_LOG_LEVEL=INFO
NM_LOG_LEVEL
CODE_FILE=src/core/nm-manager.c
CODE_LINE=4116
TIMESTAMP_MONOTONIC=34.022461
TIMESTAMP_MONOTONIC
TIMESTAMP_BOOTTIME=77.022461
TIMESTAMP_BOOTTIME
`wF}
NM_DEVICE=docker0
NM_DEVICE
_PID=1978
_COMM=NetworkManager
_EXE=/usr/sbin/NetworkManager
_CMDLINE=/usr/sbin/NetworkManager --no-daemon
_CAP_EFFECTIVE=200534e2
wjBe
_SYSTEMD_CGROUP=/system.slice/NetworkManager.service
_SYSTEMD_UNIT=NetworkManager.service
_SYSTEMD_INVOCATION_ID=8ee386a6646d40839f68affde1e78925
_SOURCE_REALTIME_TIMESTAMP=1733331269187423
SYSLOG_IDENTIFIER=avahi-daemon
SYSLOG_PID=1803
SYSLOG_TIMESTAMP=Dec  4 20:54:29 
MESSAGE=Joining mDNS multicast group on interface docker0.IPv4 with address 172.17.0.1.
_PID=1803
_UID=108
_GID=112
_COMM=avahi-daemon
_EXE=/usr/sbin/avahi-daemon
_CMDLINE="avahi-daemon: running [syscudo.local]"
_SYSTEMD_CGROUP=/system.slice/avahi-daemon.service
_SYSTEMD_UNIT=avahi-daemon.service
x@1`
_SYSTEMD_INVOCATION_ID=6ef65da17ace4bdb955216b176541a5b
_SOURCE_REALTIME_TIMESTAMP=1733331269317971
B]zT
MESSAGE=New relevant interface docker0.IPv4 for mDNS.
_SOURCE_REALTIME_TIMESTAMP=1733331269317993
MESSAGE=Registering new address record for 172.17.0.1 on docker0.IPv4.
_SOURCE_REALTIME_TIMESTAMP=1733331269318008
MESSAGE=<info>  [1733331269.3419] device (docker0): state change: unmanaged -> unavailable (reason 'connection-assumed', sys-iface-state: 'external')
CODE_FILE=src/core/devices/nm-device.c
CODE_LINE=16513
TIMESTAMP_MONOTONIC=34.177036
TIMESTAMP_BOOTTIME=77.177036
_SOURCE_REALTIME_TIMESTAMP=1733331269341996
MESSAGE=<info>  [1733331269.3422] device (docker0): state change: unavailable -> disconnected (reason 'connection-assumed', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177317
TIMESTAMP_BOOTTIME=77.177317
_SOURCE_REALTIME_TIMESTAMP=1733331269342273
MESSAGE=<info>  [1733331269.3426] device (docker0): Activation: starting connection 'docker0' (6ee355da-5ba3-463a-b1f1-4e70e5b1f61c)
CODE_LINE=14146
TIMESTAMP_MONOTONIC=34.177679
TIMESTAMP_BOOTTIME=77.177679
_SOURCE_REALTIME_TIMESTAMP=1733331269342633
MESSAGE=<info>  [1733331269.3426] device (docker0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177723
TIMESTAMP_BOOTTIME=77.177723
_SOURCE_REALTIME_TIMESTAMP=1733331269342675
HM%R9
MESSAGE=<info>  [1733331269.3427] device (docker0): state change: prepare -> config (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177821
TIMESTAMP_BOOTTIME=77.177821
_SOURCE_REALTIME_TIMESTAMP=1733331269342773
MESSAGE=<info>  [1733331269.3428] device (docker0): state change: config -> ip-config (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177897
TIMESTAMP_BOOTTIME=77.177897
_SOURCE_REALTIME_TIMESTAMP=1733331269342849
HXY/
MESSAGE=<info>  [1733331269.3429] device (docker0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177971
TIMESTAMP_BOOTTIME=77.177971
_SOURCE_REALTIME_TIMESTAMP=1733331269342923
f?T2
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.nm_dispatcher' unit='dbus-org.freedesktop.nm-dispatcher.service' requested by ':1.12' (uid=0 pid=1978 comm="/usr/sbin/NetworkManager --no-daemon" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331269343184
MESSAGE=Starting NetworkManager-dispatcher.service - Network Manager Script Dispatcher Service...
JOB_ID=1985
INVOCATION_ID=0a704a1e7c5e406c8c5a7939ad340bae
_SOURCE_REALTIME_TIMESTAMP=1733331269364117
MESSAGE=[system] Successfully activated service 'org.freedesktop.nm_dispatcher'
_SOURCE_REALTIME_TIMESTAMP=1733331269367839
MESSAGE=Started NetworkManager-dispatcher.service - Network Manager Script Dispatcher Service.
_SOURCE_REALTIME_TIMESTAMP=1733331269367909
MESSAGE=<info>  [1733331269.3682] device (docker0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.203327
TIMESTAMP_BOOTTIME=77.203327
_SOURCE_REALTIME_TIMESTAMP=1733331269368282
MESSAGE=<info>  [1733331269.3683] device (docker0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.203403
TIMESTAMP_BOOTTIME=77.203403
_SOURCE_REALTIME_TIMESTAMP=1733331269368355
MESSAGE=<info>  [1733331269.3685] device (docker0): Activation: successful, device activated.
CODE_LINE=16759
TIMESTAMP_MONOTONIC=34.203609
TIMESTAMP_BOOTTIME=77.203609
_SOURCE_REALTIME_TIMESTAMP=1733331269368562
q;~8
CODE_FILE=../modules/module-lua-scripting/api/api.c
Ik"[
CODE_LINE=387
CODE_FUNC=object_activate_done
MESSAGE=<WpSiAudioAdapter:0x5c7117efac10> Object activation aborted: proxy destroyed
GLIB_DOMAIN=m-lua-scripting
WP_OBJECT_TYPE=
WP_OBJECT_TYPE
p$M.
WP_OBJECT=
WP_OBJECT
_SOURCE_REALTIME_TIMESTAMP=1733331270565363
CODE_FILE=create-item.lua
CODE_LINE=81
MESSAGE=<WpSiAudioAdapter:0x5c7117efac10> failed to activate item: Object activation aborted: proxy destroyed
GLIB_DOMAIN=script/create-item
_SOURCE_REALTIME_TIMESTAMP=1733331270565377
?"KZ
_SOURCE_MONOTONIC_TIMESTAMP=78755270
MESSAGE=Bluetooth: RFCOMM TTY layer initialized
_SOURCE_MONOTONIC_TIMESTAMP=78755296
I]`R
MESSAGE=Bluetooth: RFCOMM socket layer initialized
_SOURCE_MONOTONIC_TIMESTAMP=78755306
MESSAGE=Bluetooth: RFCOMM ver 1.11
SYSLOG_IDENTIFIER=bluetoothd
SYSLOG_PID=1804
Qhkr:a
SYSLOG_TIMESTAMP=Dec  4 20:54:30 
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/ldac
_PID=1804
_COMM=bluetoothd
_EXE=/usr/libexec/bluetooth/bluetoothd
_CMDLINE=/usr/libexec/bluetooth/bluetoothd
_CAP_EFFECTIVE=1400
_SYSTEMD_CGROUP=/system.slice/bluetooth.service
_SYSTEMD_UNIT=bluetooth.service
_SYSTEMD_INVOCATION_ID=1d13adfe5d0246a19e1756beba5d8f5f
_SOURCE_REALTIME_TIMESTAMP=1733331270597444
ieUalI$
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331270597546
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331270597645
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331270597753
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331270597856
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331270597960
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331270598054
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331270598147
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331270598239
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733331270598329
C.({Q
Y%U)
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733331270598416
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733331270598507
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733331270598597
l~m,N
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/faststream
_SOURCE_REALTIME_TIMESTAMP=1733331270598689
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/faststream_duplex
bi"cY
_SOURCE_REALTIME_TIMESTAMP=1733331270598775
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331270598872
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331270598975
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331270599071
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/opus_05_duplex
Tk~gj
_SOURCE_REALTIME_TIMESTAMP=1733331270599164
MESSAGE=QObject: Cannot create children for a parent that is in a different thread.
(Parent is QGuiApplication(0x7ffceef566c0), parent's thread is QThread(0x5c6cbe464e00), current thread is QThread(0x5c6cbe567520)
_SOURCE_REALTIME_TIMESTAMP=1733331271040155
_SOURCE_REALTIME_TIMESTAMP=1733331271057986
_SOURCE_REALTIME_TIMESTAMP=1733331271190909
($/z
MESSAGE=QObject::installEventFilter(): Cannot filter events for objects in a different thread.
_SOURCE_REALTIME_TIMESTAMP=1733331271190919
SYSLOG_TIMESTAMP=Dec  4 20:54:33 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.UPower' unit='upower.service' requested by ':1.42' (uid=112 pid=3202 comm="/usr/bin/sddm-greeter --socket /tmp/sddm-:0-QDCqOq" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331273371715
MESSAGE=Starting upower.service - Daemon for power management...
JOB_ID=2081
INVOCATION_ID=a030ad3282d54e3b86912c1e890dabd5
UNIT=upower.service
_SOURCE_REALTIME_TIMESTAMP=1733331273406145
MESSAGE=[system] Successfully activated service 'org.freedesktop.UPower'
_SOURCE_REALTIME_TIMESTAMP=1733331273619084
MESSAGE=Started upower.service - Daemon for power management.
_SOURCE_REALTIME_TIMESTAMP=1733331273619182
MESSAGE=QFont::setPointSizeF: Point size <= 0 (0.000000), must be greater than 0
_SOURCE_REALTIME_TIMESTAMP=1733331273889703
_SOURCE_REALTIME_TIMESTAMP=1733331273890383
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:453:5: QML Connections: Implicitly defined onFoo properties in Connections are deprecated. Use this syntax instead: function onFoo(<arguments>) { ... }
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml
CODE_LINE=453
?LX=
_SOURCE_REALTIME_TIMESTAMP=1733331273944336
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml:116:9: QML Connections: Implicitly defined onFoo properties in Connections are deprecated. Use this syntax instead: function onFoo(<arguments>) { ... }
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml
CODE_LINE=116
_SOURCE_REALTIME_TIMESTAMP=1733331274264364
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml:125:5: QML Image: Detected anchors on an item that is managed by a layout. This is undefined behavior; use Layout.alignment instead.
CODE_LINE=125
_SOURCE_REALTIME_TIMESTAMP=1733331274290729
_SOURCE_REALTIME_TIMESTAMP=1733331274291251
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml:83:13: Unable to assign [undefined] to QString
CODE_LINE=83
_SOURCE_REALTIME_TIMESTAMP=1733331274363109
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:75: TypeError: Cannot read property 'text' of undefined
CODE_LINE=75
_SOURCE_REALTIME_TIMESTAMP=1733331274363121
0*~P
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml:74:9: Unable to assign [undefined] to QString
CODE_LINE=74
_SOURCE_REALTIME_TIMESTAMP=1733331274363130
H2O#[
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:179:13: Unable to assign [undefined] to QString
CODE_LINE=179
_SOURCE_REALTIME_TIMESTAMP=1733331274363138
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:178:13: Unable to assign [undefined] to int
CODE_LINE=178
_SOURCE_REALTIME_TIMESTAMP=1733331274363146
_SOURCE_REALTIME_TIMESTAMP=1733331274365745
MESSAGE=Adding view for "HDMI-0" QRect(0,0 1920x1080)
_SOURCE_REALTIME_TIMESTAMP=1733331274365932
_SOURCE_REALTIME_TIMESTAMP=1733331274393936
MESSAGE=QDBusConnection: name 'org.freedesktop.UPower' had owner '' but we thought it was ':1.43'
_SOURCE_REALTIME_TIMESTAMP=1733331274940865
NN.P
MESSAGE=Message received from daemon: Capabilities
_SOURCE_REALTIME_TIMESTAMP=1733331274961414
MESSAGE=Message received from daemon: HostName
_SOURCE_REALTIME_TIMESTAMP=1733331274961434
_SOURCE_REALTIME_TIMESTAMP=1733331277541831
_SOURCE_REALTIME_TIMESTAMP=1733331277652037
INVOCATION_ID=a9952a7443244b8da5de6bfc1dc004b2
MESSAGE=systemd-timedated.service: Deactivated successfully.
UNIT=systemd-timedated.service
_SOURCE_REALTIME_TIMESTAMP=1733331278048670
_SOURCE_REALTIME_TIMESTAMP=1733331278647785
MESSAGE=Message received from greeter: Login
_SOURCE_REALTIME_TIMESTAMP=1733331278647965
\naP
_SOURCE_REALTIME_TIMESTAMP=1733331278647982
MESSAGE=Session "/usr/share/xsessions/plasma.desktop" selected, command: "/usr/bin/startplasma-x11" for VT 2
_SOURCE_REALTIME_TIMESTAMP=1733331278648543
_PID=4294
_CMDLINE=/usr/lib/x86_64-linux-gnu/sddm/sddm-helper --socket /tmp/sddm-auth-8f4222ad-4051-4912-bf30-593de56e32d6 --id 1 --start /usr/bin/startplasma-x11 --user cudok
_SOURCE_REALTIME_TIMESTAMP=1733331278908910
_SOURCE_REALTIME_TIMESTAMP=1733331278908924
MESSAGE=[PAM] Preparing to converse...
_SOURCE_REALTIME_TIMESTAMP=1733331278923771
MESSAGE=[PAM] Conversation with 1 messages
_SOURCE_REALTIME_TIMESTAMP=1733331278923785
SYSLOG_TIMESTAMP=Dec  4 20:54:38 
MESSAGE=gkr-pam: unable to locate daemon control file
_SOURCE_REALTIME_TIMESTAMP=1733331278967118
MESSAGE=gkr-pam: stashed password to try later in open session
_SOURCE_REALTIME_TIMESTAMP=1733331278967122
b<U%6k
MESSAGE=pam_kwallet5(sddm:auth): pam_kwallet5: pam_sm_authenticate
)(WWO
SYSLOG_RAW=<87>Dec  4 20:54:38 sddm-helper: pam_kwallet5(sddm:auth): pam_kwallet5: pam_sm_authenticate
_SOURCE_REALTIME_TIMESTAMP=1733331278967126
_SOURCE_REALTIME_TIMESTAMP=1733331278967183
Hk2^v
-qIx
MESSAGE=Authentication for user  "cudok"  successful
_SOURCE_REALTIME_TIMESTAMP=1733331278967298
MESSAGE=Message received from daemon: LoginSucceeded
_SOURCE_REALTIME_TIMESTAMP=1733331278967434
MESSAGE=pam_kwallet5(sddm:setcred): pam_kwallet5: pam_sm_setcred
_SOURCE_REALTIME_TIMESTAMP=1733331278967660
MESSAGE=pam_unix(sddm:session): session opened for user cudok(uid=1000) by cudok(uid=0)
_SOURCE_REALTIME_TIMESTAMP=1733331278968594
MESSAGE=Created slice user-1000.slice - User Slice of UID 1000.
JOB_ID=2272
INVOCATION_ID=6f46dcb07ed64b79888b47ff82c5d3e9
UNIT=user-1000.slice
_SOURCE_REALTIME_TIMESTAMP=1733331278971977
MESSAGE=Starting user-runtime-dir@1000.service - User Runtime Directory /run/user/1000...
JOB_ID=2274
@.tF
INVOCATION_ID=543fdf01f8394c2283d1c5e8f0e6951e
UNIT=user-runtime-dir@1000.service
_SOURCE_REALTIME_TIMESTAMP=1733331278988122
SESSION_ID=3
USER_ID=cudok
LEADER=4294
MESSAGE=New session 3 of user cudok.
_SOURCE_REALTIME_TIMESTAMP=1733331278989020
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/ldac
_SOURCE_REALTIME_TIMESTAMP=1733331278996048
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331278996321
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331278996538
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331278996743
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331278996956
MESSAGE=Finished user-runtime-dir@1000.service - User Runtime Directory /run/user/1000.
_SOURCE_REALTIME_TIMESTAMP=1733331278997243
TW.%
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331278997346
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/sbc
nor0
_SOURCE_REALTIME_TIMESTAMP=1733331278997804
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331278998020
\8Ft
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331278998225
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733331278998431
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733331278998633
MESSAGE=Starting user@1000.service - User Manager for UID 1000...
JOB_ID=2177
INVOCATION_ID=b7c0ba44429b449081e80ad855bb7341
UNIT=user@1000.service
_SOURCE_REALTIME_TIMESTAMP=1733331278998683
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733331278998862
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733331278999131
I&'6
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/faststream
_SOURCE_REALTIME_TIMESTAMP=1733331278999355
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/faststream_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331278999560
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331278999761
[.B6.
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331278999972
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331279000187
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331279000392
SYSLOG_TIMESTAMP=Dec  4 20:54:39 
MESSAGE=pam_unix(systemd-user:session): session opened for user cudok(uid=1000) by cudok(uid=0)
_PID=4417
_AUDIT_SESSION=4
_AUDIT_LOGINUID=1000
_SYSTEMD_CGROUP=/user.slice/user-1000.slice/user@1000.service/init.scope
_SYSTEMD_OWNER_UID=1000
_SYSTEMD_UNIT=user@1000.service
_SYSTEMD_SLICE=user-1000.slice
_SOURCE_REALTIME_TIMESTAMP=1733331279004122
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:421: TypeError: Cannot read property 'smallSpacing' of null
CODE_LINE=421
_SOURCE_REALTIME_TIMESTAMP=1733331279037017
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/Battery.qml:27: TypeError: Cannot read property 'smallSpacing' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/Battery.qml
CODE_LINE=27
_SOURCE_REALTIME_TIMESTAMP=1733331279037031
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:157: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=157
_SOURCE_REALTIME_TIMESTAMP=1733331279037042
[J~Q
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:102: TypeError: Cannot read property 'smallSpacing' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml
CODE_LINE=102
_SOURCE_REALTIME_TIMESTAMP=1733331279037055
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:39: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=39
0`(#3v
_SOURCE_REALTIME_TIMESTAMP=1733331279037063
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:55: TypeError: Cannot read property 'smallSpacing' of null
CODE_LINE=55
]v?+X
_SOURCE_REALTIME_TIMESTAMP=1733331279037072
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:41: TypeError: Cannot read property 'largeSpacing' of null
CODE_LINE=41
_SOURCE_REALTIME_TIMESTAMP=1733331279037083
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:42: TypeError: Cannot read property 'smallSpacing' of null
CODE_LINE=42
_SOURCE_REALTIME_TIMESTAMP=1733331279037093
_SOURCE_REALTIME_TIMESTAMP=1733331279037102
_SOURCE_REALTIME_TIMESTAMP=1733331279037109
_SOURCE_REALTIME_TIMESTAMP=1733331279037134
_SOURCE_REALTIME_TIMESTAMP=1733331279037141
_SOURCE_REALTIME_TIMESTAMP=1733331279037155
_SOURCE_REALTIME_TIMESTAMP=1733331279037163
_SOURCE_REALTIME_TIMESTAMP=1733331279037170
_SOURCE_REALTIME_TIMESTAMP=1733331279037177
_SOURCE_REALTIME_TIMESTAMP=1733331279037184
o= P
+o/h\
_SOURCE_REALTIME_TIMESTAMP=1733331279037191
_SOURCE_REALTIME_TIMESTAMP=1733331279037209
_SOURCE_REALTIME_TIMESTAMP=1733331279037215
_SOURCE_REALTIME_TIMESTAMP=1733331279037222
_SOURCE_REALTIME_TIMESTAMP=1733331279037228
_SOURCE_REALTIME_TIMESTAMP=1733331279037235
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:84: TypeError: Cannot read property 'gridUnit' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml
CODE_LINE=84
_SOURCE_REALTIME_TIMESTAMP=1733331279037244
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:114: TypeError: Cannot read property 'largeSpacing' of null
CODE_LINE=114
&uDr
_SOURCE_REALTIME_TIMESTAMP=1733331279037253
G5']P
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:100: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=100
_SOURCE_REALTIME_TIMESTAMP=1733331279037260
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:101: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=101
_SOURCE_REALTIME_TIMESTAMP=1733331279037266
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:91: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=91
_SOURCE_REALTIME_TIMESTAMP=1733331279037273
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserList.qml:25: TypeError: Cannot read property 'gridUnit' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/UserList.qml
CODE_LINE=25
_SOURCE_REALTIME_TIMESTAMP=1733331279037295
Hy	);
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserList.qml:26: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=26
_SOURCE_REALTIME_TIMESTAMP=1733331279037315
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:103: TypeError: Cannot read property 'largeSpacing' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml
CODE_LINE=103
_SOURCE_REALTIME_TIMESTAMP=1733331279037332
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:44: TypeError: Cannot read property 'smallSpacing' of null
CODE_LINE=44
_SOURCE_REALTIME_TIMESTAMP=1733331279037342
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:69: TypeError: Cannot read property 'largeSpacing' of null
CODE_LINE=69
_SOURCE_REALTIME_TIMESTAMP=1733331279037350
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:95: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=95
_SOURCE_REALTIME_TIMESTAMP=1733331279037357
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:75: TypeError: Cannot read property 'longDuration' of null
_SOURCE_REALTIME_TIMESTAMP=1733331279037367
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:50: TypeError: Cannot read property 'longDuration' of null
CODE_LINE=50
_SOURCE_REALTIME_TIMESTAMP=1733331279037378
HXz8o
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:241: TypeError: Cannot read property 'longDuration' of null
CODE_LINE=241
_SOURCE_REALTIME_TIMESTAMP=1733331279037386
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:426: TypeError: Cannot read property 'longDuration' of null
CODE_LINE=426
_SOURCE_REALTIME_TIMESTAMP=1733331279037392
_SOURCE_REALTIME_TIMESTAMP=1733331279395748
_SOURCE_MONOTONIC_TIMESTAMP=87998393
MESSAGE=audit: type=1400 audit(1733331279.838:226): apparmor="AUDIT" operation="userns_create" class="namespace" info="Userns create - transitioning profile" profile="unconfined" pid=4672 comm="(uidsynth)" requested="userns_create" target="unprivileged_userns"
_SOURCE_MONOTONIC_TIMESTAMP=87998742
MESSAGE=audit: type=1400 audit(1733331279.838:227): apparmor="DENIED" operation="capable" class="cap" profile="unprivileged_userns" pid=4672 comm="(uidsynth)" capability=21  capname="sys_admin"
_SOURCE_MONOTONIC_TIMESTAMP=87998841
MESSAGE=audit: type=1400 audit(1733331279.838:228): apparmor="DENIED" operation="capable" class="cap" profile="unprivileged_userns" pid=4672 comm="(uidsynth)" capability=8  capname="setpcap"
MESSAGE=pam_unix(sddm-greeter:session): session closed for user sddm
_SOURCE_REALTIME_TIMESTAMP=1733331279793175
SYSLOG_TIMESTAMP=Dec  4 16:54:40 
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 7 threads of 4 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280077309
MESSAGE=[PAM] Closing session
_SOURCE_REALTIME_TIMESTAMP=1733331279793111
_SOURCE_REALTIME_TIMESTAMP=1733331280077466
MESSAGE=[PAM] Ended.
_SOURCE_REALTIME_TIMESTAMP=1733331279794086
_SOURCE_REALTIME_TIMESTAMP=1733331280077596
MESSAGE=Auth: sddm-helper exited successfully
wW}c1
_SOURCE_REALTIME_TIMESTAMP=1733331279794923
_SOURCE_REALTIME_TIMESTAMP=1733331280077748
MESSAGE=Greeter stopped. SDDM::Auth::HELPER_SUCCESS
_SOURCE_REALTIME_TIMESTAMP=1733331279794934
_SOURCE_REALTIME_TIMESTAMP=1733331280077876
MESSAGE=session-1.scope: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331279794992
_SOURCE_REALTIME_TIMESTAMP=1733331280078025
CODE_LINE=860
CODE_FUNC=session_stop_scope
3~s)
MESSAGE=Session 1 logged out. Waiting for processes to exit.
_SOURCE_REALTIME_TIMESTAMP=1733331279795462
_SOURCE_REALTIME_TIMESTAMP=1733331280078177
CODE_LINE=918
CODE_FUNC=session_finalize
MESSAGE_ID=3354939424b4456d9802ca8333ed424a
MESSAGE=Removed session 1.
_SOURCE_REALTIME_TIMESTAMP=1733331279795976
cQo:
_SOURCE_REALTIME_TIMESTAMP=1733331280078306
_SOURCE_REALTIME_TIMESTAMP=1733331280078433
_SOURCE_REALTIME_TIMESTAMP=1733331280078586
_SOURCE_REALTIME_TIMESTAMP=1733331280078715
_SOURCE_REALTIME_TIMESTAMP=1733331280078841
@N[;
MESSAGE=Successfully made thread 4674 of process 4674 owned by '1000' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4674 of process 4674 owned by '1000' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331280080515
MESSAGE=Supervising 8 threads of 5 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 8 threads of 5 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280080525
MESSAGE=Successfully made thread 4669 of process 4669 owned by '1000' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4669 of process 4669 owned by '1000' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331280081882
MESSAGE=Supervising 9 threads of 6 processes of 2 users.
tbj0
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 9 threads of 6 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280081890
MESSAGE=Successfully made thread 4673 of process 4673 owned by '1000' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4673 of process 4673 owned by '1000' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331280083111
MESSAGE=Supervising 10 threads of 7 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 10 threads of 7 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280083118
MESSAGE=Successfully made thread 4714 of process 4673 owned by '1000' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4714 of process 4673 owned by '1000' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331280084363
H<2d
MESSAGE=Supervising 11 threads of 7 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 11 threads of 7 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280084371
MESSAGE=Successfully made thread 4713 of process 4671 owned by '1000' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4713 of process 4671 owned by '1000' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331280085622
MESSAGE=Supervising 12 threads of 8 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 12 threads of 8 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280085630
HX$;
MESSAGE=Successfully made thread 4716 of process 4669 owned by '1000' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4716 of process 4669 owned by '1000' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331280086860
MESSAGE=Supervising 13 threads of 8 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 13 threads of 8 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280086868
MESSAGE=Successfully made thread 4718 of process 4674 owned by '1000' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4718 of process 4674 owned by '1000' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331280088104
MESSAGE=Supervising 14 threads of 8 processes of 2 users.
u;)6
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 14 threads of 8 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280088111
MESSAGE=Started user@1000.service - User Manager for UID 1000.
b`W&
_SOURCE_REALTIME_TIMESTAMP=1733331279833898
MESSAGE=Started session-3.scope - Session 3 of User cudok.
JOB_ID=2275
INVOCATION_ID=a9d20cd9b34146508aa77d22a5defc57
UNIT=session-3.scope
_SOURCE_REALTIME_TIMESTAMP=1733331279834570
SYSLOG_TIMESTAMP=Dec  4 20:54:41 
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/ldac
_SOURCE_REALTIME_TIMESTAMP=1733331281279395
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331281279501
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331281279592
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331281279677
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331281279764
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331281279846
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331281279929
MYO;
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331281280021
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331281280136
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733331281280249
HXYr
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733331281280367
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733331281280483
HIuE
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733331281280594
5 fU|N
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/faststream
C%5m
_SOURCE_REALTIME_TIMESTAMP=1733331281280706
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/faststream_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331281280824
nt<ER
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331281280943
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331281281098
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331281281219
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331281281340
MESSAGE=gkr-pam: unlocked login keyring
_AUDIT_SESSION=3
_SYSTEMD_CGROUP=/user.slice/user-1000.slice/session-3.scope
_SYSTEMD_SESSION=3
_SYSTEMD_UNIT=session-3.scope
_SYSTEMD_INVOCATION_ID=a9d20cd9b34146508aa77d22a5defc57
_SOURCE_REALTIME_TIMESTAMP=1733331281373592
MESSAGE=pam_kwallet5(sddm:session): pam_kwallet5: pam_sm_open_session
SYSLOG_RAW=<87>Dec  4 20:54:41 sddm-helper: pam_kwallet5(sddm:session): pam_kwallet5: pam_sm_open_session
_SOURCE_REALTIME_TIMESTAMP=1733331281373607
0_Ws
hKp#
MESSAGE=Writing cookie to "/tmp/xauth_OvXkIG"
_SOURCE_REALTIME_TIMESTAMP=1733331281592426
MESSAGE=Starting X11 session: "" "/etc/sddm/Xsession \"/usr/bin/startplasma-x11\""
_SOURCE_REALTIME_TIMESTAMP=1733331281592511
MESSAGE=Session started true
_SOURCE_REALTIME_TIMESTAMP=1733331281784091
SYSLOG_TIMESTAMP=Dec  4 16:54:46 
SYSLOG_RAW=<31>Dec  4 16:54:46 rtkit-daemon[3213]: Supervising 14 threads of 8 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331286518312
_SOURCE_REALTIME_TIMESTAMP=1733331286518599
_SOURCE_REALTIME_TIMESTAMP=1733331286518917
MESSAGE=<info>  [1733331288.4930] agent-manager: agent[099ea03d7b356af8,:1.62/org.kde.plasma.networkmanagement/1000]: agent registered
NM_LOG_DOMAINS=AGENTS
BKBk
CODE_FILE=src/core/settings/nm-agent-manager.c
CODE_LINE=388
TIMESTAMP_MONOTONIC=53.328132
TIMESTAMP_BOOTTIME=96.328132
_SOURCE_REALTIME_TIMESTAMP=1733331288493097
MESSAGE=Stopping user@112.service - User Manager for UID 112...
JOB_ID=2375
JOB_TYPE=stop
MESSAGE_ID=de5b426a63be47a7b6ac3eaac82e2f6f
_SOURCE_REALTIME_TIMESTAMP=1733331289846520
*gLq
CODE_LINE=2880
CODE_FUNC=manager_start_special
MESSAGE=Activating special unit exit.target...
_SOURCE_REALTIME_TIMESTAMP=1733331289931750
MESSAGE=Stopped target default.target - Main User Target.
JOB_ID=121
MESSAGE_ID=9d1aaa27d60140bd96365438aad20286
_SOURCE_REALTIME_TIMESTAMP=1733331289931809
"{la
MESSAGE=Closed drkonqi-coredump-launcher.socket - Socket to launch DrKonqi for a systemd-coredump crash.
JOB_ID=134
_SOURCE_REALTIME_TIMESTAMP=1733331289931964
MESSAGE=Stopping dbus.service - D-Bus User Message Bus...
JOB_ID=87
_SOURCE_REALTIME_TIMESTAMP=1733331289932977
MESSAGE=Stopping filter-chain.service - PipeWire filter chain daemon...
JOB_ID=90
_SOURCE_REALTIME_TIMESTAMP=1733331289933311
#*=8
MESSAGE=Stopping pipewire-pulse.service - PipeWire PulseAudio...
JOB_ID=88
_SOURCE_REALTIME_TIMESTAMP=1733331289933488
MESSAGE=Stopped dbus.service - D-Bus User Message Bus.
_SOURCE_REALTIME_TIMESTAMP=1733331289934084
MESSAGE=Stopped filter-chain.service - PipeWire filter chain daemon.
_SOURCE_REALTIME_TIMESTAMP=1733331289934582
MESSAGE=Stopped pipewire-pulse.service - PipeWire PulseAudio.
_SOURCE_REALTIME_TIMESTAMP=1733331290009143
MESSAGE=Stopping wireplumber.service - Multimedia Service Session Manager...
JOB_ID=86
_SOURCE_REALTIME_TIMESTAMP=1733331290009504
HTS"
CODE_FILE=../src/main.c
CODE_LINE=372
CODE_FUNC=signal_handler
MESSAGE=stopped by signal: 
GLIB_DOMAIN=wireplumber
_SOURCE_REALTIME_TIMESTAMP=1733331290009555
CODE_LINE=364
CODE_FUNC=on_disconnected
MESSAGE=disconnected from pipewire
_SOURCE_REALTIME_TIMESTAMP=1733331290010251
MESSAGE=Stopped wireplumber.service - Multimedia Service Session Manager.
_SOURCE_REALTIME_TIMESTAMP=1733331290011936
MESSAGE=Stopping pipewire.service - PipeWire Multimedia Service...
JOB_ID=89
_SOURCE_REALTIME_TIMESTAMP=1733331290012137
MESSAGE=Stopped pipewire.service - PipeWire Multimedia Service.
_SOURCE_REALTIME_TIMESTAMP=1733331290013409
9}8w
MESSAGE=Removed slice session.slice - User Core Session Slice.
JOB_ID=80
_SOURCE_REALTIME_TIMESTAMP=1733331290013704
MESSAGE=Stopped target basic.target - Basic System.
 B'{
JOB_ID=119
_SOURCE_REALTIME_TIMESTAMP=1733331290013719
MESSAGE=Stopped target paths.target - Paths.
JOB_ID=118
_SOURCE_REALTIME_TIMESTAMP=1733331290013729
MESSAGE=Stopped target sockets.target - Sockets.
JOB_ID=106
_SOURCE_REALTIME_TIMESTAMP=1733331290013738
CaHK,8
MESSAGE=Stopped target timers.target - Timers.
JOB_ID=103
_SOURCE_REALTIME_TIMESTAMP=1733331290013754
MESSAGE=Stopped launchpadlib-cache-clean.timer - Clean up old files in the Launchpadlib cache.
JOB_ID=79
_SOURCE_REALTIME_TIMESTAMP=1733331290013764
MESSAGE=Stopped snap.firmware-updater.firmware-notifier.timer - Timer firmware-notifier for snap application firmware-updater.firmware-notifier.
Cq$?
JOB_ID=114
_SOURCE_REALTIME_TIMESTAMP=1733331290013773
HVIR
MESSAGE=Closed dbus.socket - D-Bus User Message Bus Socket.
JOB_ID=129
_SOURCE_REALTIME_TIMESTAMP=1733331290014042
MESSAGE=Closed dirmngr.socket - GnuPG network certificate management daemon.
JOB_ID=112
_SOURCE_REALTIME_TIMESTAMP=1733331290014128
H>a\"{q
MESSAGE=Closed gcr-ssh-agent.socket - GCR ssh-agent wrapper.
JOB_ID=110
_SOURCE_REALTIME_TIMESTAMP=1733331290014208
D'M	
MESSAGE=Closed gnome-keyring-daemon.socket - GNOME Keyring daemon.
JOB_ID=107
hM+Y
_SOURCE_REALTIME_TIMESTAMP=1733331290014282
MESSAGE=Closed gpg-agent-browser.socket - GnuPG cryptographic agent and passphrase cache (access for web browsers).
	1w-
JOB_ID=109
_SOURCE_REALTIME_TIMESTAMP=1733331290014356
MESSAGE=Closed gpg-agent-extra.socket - GnuPG cryptographic agent and passphrase cache (restricted).
$-AY
JOB_ID=125
5*(R
_SOURCE_REALTIME_TIMESTAMP=1733331290014430
$My#
MESSAGE=Stopping gpg-agent-ssh.socket - GnuPG cryptographic agent (ssh-agent emulation)...
JOB_ID=135
_SOURCE_REALTIME_TIMESTAMP=1733331290024181
MESSAGE=Closed gpg-agent.socket - GnuPG cryptographic agent and passphrase cache.
#vgh
JOB_ID=132
_SOURCE_REALTIME_TIMESTAMP=1733331290024242
MESSAGE=Closed keyboxd.socket - GnuPG public key management service.
JOB_ID=94
_SOURCE_REALTIME_TIMESTAMP=1733331290024314
MESSAGE=Closed pipewire-pulse.socket - PipeWire PulseAudio.
JOB_ID=115
_SOURCE_REALTIME_TIMESTAMP=1733331290024375
MESSAGE=Closed pipewire.socket - PipeWire Multimedia System Sockets.
JOB_ID=126
_SOURCE_REALTIME_TIMESTAMP=1733331290024437
MESSAGE=Closed pk-debconf-helper.socket - debconf communication socket.
JOB_ID=127
_SOURCE_REALTIME_TIMESTAMP=1733331290024495
MESSAGE=Closed snapd.session-agent.socket - REST API socket for snapd user session agent.
JOB_ID=116
_SOURCE_REALTIME_TIMESTAMP=1733331290024553
LG A
MESSAGE=Closed speech-dispatcher.socket - Speech Dispatcher Socket.
JOB_ID=98
_SOURCE_REALTIME_TIMESTAMP=1733331290024610
MESSAGE=Closed gpg-agent-ssh.socket - GnuPG cryptographic agent (ssh-agent emulation).
_SOURCE_REALTIME_TIMESTAMP=1733331290033558
MESSAGE=Removed slice app.slice - User Application Slice.
JOB_ID=133
_SOURCE_REALTIME_TIMESTAMP=1733331290033774
MESSAGE=Reached target shutdown.target - Shutdown.
JOB_ID=77
USER_INVOCATION_ID=59bf69b55f2249948bd3cc8ecb96295b
USER_UNIT=shutdown.target
_SOURCE_REALTIME_TIMESTAMP=1733331290033795
MESSAGE=Finished systemd-exit.service - Exit the Session.
JOB_ID=76
USER_INVOCATION_ID=33bfee1377174d06a54d0255826fe8b2
t>'0
USER_UNIT=systemd-exit.service
_SOURCE_REALTIME_TIMESTAMP=1733331290033911
MESSAGE=Reached target exit.target - Exit the Session.
JOB_ID=75
USER_INVOCATION_ID=2097daaad92d46c8bafcfe4021d3c27d
USER_UNIT=exit.target
_SOURCE_REALTIME_TIMESTAMP=1733331290033936
SYSLOG_IDENTIFIER=(sd-pam)
SYSLOG_TIMESTAMP=Dec  4 20:54:50 
MESSAGE=pam_unix(systemd-user:session): session closed for user sddm
_PID=3174
_COMM=(sd-pam)
_CMDLINE="(sd-pam)"
_SOURCE_REALTIME_TIMESTAMP=1733331290056837
MESSAGE=user@112.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331290057867
MESSAGE=Stopped user@112.service - User Manager for UID 112.
KS>/
_SOURCE_REALTIME_TIMESTAMP=1733331290058148
MESSAGE=Stopping user-runtime-dir@112.service - User Runtime Directory /run/user/112...
JOB_ID=2376
_SOURCE_REALTIME_TIMESTAMP=1733331290059415
=!yJ
INVOCATION_ID=8b17449adde24cf49e3a6388d74706f0
MESSAGE=run-user-112.mount: Deactivated successfully.
H!Am
UNIT=run-user-112.mount
_SOURCE_REALTIME_TIMESTAMP=1733331290067973
MESSAGE=user-runtime-dir@112.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331290068463
MESSAGE=Stopped user-runtime-dir@112.service - User Runtime Directory /run/user/112.
_SOURCE_REALTIME_TIMESTAMP=1733331290068597
MESSAGE=Removed slice user-112.slice - User Slice of UID 112.
JOB_ID=2378
_SOURCE_REALTIME_TIMESTAMP=1733331290069503
CODE_LINE=2577
CODE_FUNC=unit_log_resources
CPU_USAGE_NSEC=1371813000
CPU_USAGE_NSEC
MESSAGE=user-112.slice: Consumed 1.371s CPU time.
MESSAGE_ID=ae8f7b866b0347b9af31fe1c80b127c0
_SOURCE_REALTIME_TIMESTAMP=1733331290069550
MESSAGE=[system] Activating service name='org.kde.powerdevil.discretegpuhelper' requested by ':1.67' (uid=1000 pid=5339 comm="/usr/lib/x86_64-linux-gnu/libexec/org_kde_powerdev" label="unconfined") (using servicehelper)
_SOURCE_REALTIME_TIMESTAMP=1733331290329404
HMgq<(+
MESSAGE=[system] Successfully activated service 'org.kde.powerdevil.discretegpuhelper'
_SOURCE_REALTIME_TIMESTAMP=1733331290532322
MESSAGE=[system] Activating service name='org.kde.powerdevil.chargethresholdhelper' requested by ':1.67' (uid=1000 pid=5339 comm="/usr/lib/x86_64-linux-gnu/libexec/org_kde_powerdev" label="unconfined") (using servicehelper)
_SOURCE_REALTIME_TIMESTAMP=1733331290532886
MESSAGE=[system] Successfully activated service 'org.kde.powerdevil.chargethresholdhelper'
_SOURCE_REALTIME_TIMESTAMP=1733331290543006
MESSAGE=[system] Activating service name='org.kde.powerdevil.backlighthelper' requested by ':1.67' (uid=1000 pid=5339 comm="/usr/lib/x86_64-linux-gnu/libexec/org_kde_powerdev" label="unconfined") (using servicehelper)
_SOURCE_REALTIME_TIMESTAMP=1733331290543465
_STREAM_ID=de8e315b7c5f4338b6a37461b5323b4a
SYSLOG_IDENTIFIER=org.kde.powerdevil.backlighthelper
MESSAGE=org.kde.powerdevil: no kernel backlight interface found
_PID=5372
Z7$9
_COMM=backlighthelper
4k;#s
_EXE=/usr/lib/kauth/libexec/backlighthelper
_CMDLINE=/usr/lib/kauth/libexec/backlighthelper
MESSAGE=[system] Successfully activated service 'org.kde.powerdevil.backlighthelper'
_SOURCE_REALTIME_TIMESTAMP=1733331290553367
SYSLOG_IDENTIFIER=polkitd
SYSLOG_PID=1833
Kt.Nk
MESSAGE=Registered Authentication Agent for unix-session:3 (system bus name :1.81 [/usr/lib/x86_64-linux-gnu/libexec/polkit-kde-authentication-agent-1], object path /org/kde/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_PID=1833
_UID=989
_GID=989
_COMM=polkitd
_EXE=/usr/lib/polkit-1/polkitd
_CMDLINE=/usr/lib/polkit-1/polkitd --no-debug
_SYSTEMD_CGROUP=/system.slice/polkit.service
_SYSTEMD_UNIT=polkit.service
_SYSTEMD_INVOCATION_ID=2fa82093854b40dbae2f6238d28528b4
_SOURCE_REALTIME_TIMESTAMP=1733331290579835
HKKf
SYSLOG_TIMESTAMP=Dec  4 20:54:51 
j5"Z
MESSAGE=[system] Activating service name='org.kde.kded.smart' requested by ':1.62' (uid=1000 pid=5255 comm="/usr/bin/kded5" label="unconfined") (using servicehelper)
_SOURCE_REALTIME_TIMESTAMP=1733331291162797
MESSAGE=[system] Successfully activated service 'org.kde.kded.smart'
_SOURCE_REALTIME_TIMESTAMP=1733331291173265
SYSLOG_TIMESTAMP=Dec  4 20:54:53 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.hostname1' unit='dbus-org.freedesktop.hostname1.service' requested by ':1.90' (uid=1000 pid=5544 comm="/usr/bin/ksystemstats" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331293507465
MESSAGE=Starting systemd-hostnamed.service - Hostname Service...
JOB_ID=2380
INVOCATION_ID=48d4860b36e94781a38b849ca789e3b3
_SOURCE_REALTIME_TIMESTAMP=1733331293511417
H"]B
MESSAGE=[system] Successfully activated service 'org.freedesktop.hostname1'
_SOURCE_REALTIME_TIMESTAMP=1733331293565335
MESSAGE=Started systemd-hostnamed.service - Hostname Service.
_SOURCE_REALTIME_TIMESTAMP=1733331293565438
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.PackageKit' unit='packagekit.service' requested by ':1.93' (uid=1000 pid=5509 comm="/usr/lib/x86_64-linux-gnu/libexec/DiscoverNotifier" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331293668650
MESSAGE=Starting packagekit.service - PackageKit Daemon...
JOB_ID=2476
INVOCATION_ID=e13161fe2d4e461a9ae95145c5240ff2
UNIT=packagekit.service
_SOURCE_REALTIME_TIMESTAMP=1733331294093133
SYSLOG_IDENTIFIER=PackageKit
SYSLOG_TIMESTAMP=Dec  4 20:54:54 
MESSAGE=daemon start
_PID=5556
_COMM=packagekitd
_EXE=/usr/libexec/packagekitd
_CMDLINE=/usr/libexec/packagekitd
_SYSTEMD_CGROUP=/system.slice/packagekit.service
_SYSTEMD_UNIT=packagekit.service
_SYSTEMD_INVOCATION_ID=e13161fe2d4e461a9ae95145c5240ff2
_SOURCE_REALTIME_TIMESTAMP=1733331294299725
MESSAGE=<info>  [1733331294.4412] audit: op="statistics" interface="enp4s0" ifindex=2 args="500" pid=5544 uid=1000 result="success"
NM_LOG_DOMAINS=AUDIT
CODE_FUNC=_dbus_set_property_auth_cb
CODE_LINE=8373
TIMESTAMP_MONOTONIC=59.276291
TIMESTAMP_BOOTTIME=102.276291
_SOURCE_REALTIME_TIMESTAMP=1733331294441251
MESSAGE=[system] Successfully activated service 'org.freedesktop.PackageKit'
_SOURCE_REALTIME_TIMESTAMP=1733331294645626
MESSAGE=Started packagekit.service - PackageKit Daemon.
_SOURCE_REALTIME_TIMESTAMP=1733331294645785
GLIB_OLD_LOG_API=1
GLIB_OLD_LOG_API
MESSAGE=pk_package_set_update_severity: assertion 'update_severity == PK_INFO_ENUM_UNKNOWN || update_severity == PK_INFO_ENUM_LOW || update_severity == PK_INFO_ENUM_NORMAL || update_severity == PK_INFO_ENUM_IMPORTANT || update_severity == PK_INFO_ENUM_CRITICAL' failed
GLIB_DOMAIN=PackageKit
_SOURCE_REALTIME_TIMESTAMP=1733331295627561
_SOURCE_REALTIME_TIMESTAMP=1733331295639399
SYSLOG_TIMESTAMP=Dec  4 20:54:55 
MESSAGE=get-updates transaction /3412_beecabde from uid 1000 finished with success after 350ms
_SOURCE_REALTIME_TIMESTAMP=1733331295699200
_SOURCE_MONOTONIC_TIMESTAMP=107881501
,xS^
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x413 SErr 0x40000 action 0x0
_SOURCE_MONOTONIC_TIMESTAMP=107881509
bA)?0
MESSAGE=ata1.00: irq_stat 0x40000008
_SOURCE_MONOTONIC_TIMESTAMP=107881513
MESSAGE=ata1: SError: { CommWake }
_SOURCE_MONOTONIC_TIMESTAMP=107881517
MESSAGE=ata1.00: failed command: READ FPDMA QUEUED
_SOURCE_MONOTONIC_TIMESTAMP=107881520
b'!r
MESSAGE=ata1.00: cmd 60/00:00:a0:2e:ae/01:00:1e:00:00/40 tag 0 ncq dma 131072 in
         res 41/40:00:00:00:00/00:01:00:00:00/00 Emask 0x409 (media error) <F>
_SOURCE_MONOTONIC_TIMESTAMP=107881528
MESSAGE=ata1.00: status: { DRDY ERR }
_SOURCE_MONOTONIC_TIMESTAMP=107881531
MESSAGE=ata1.00: error: { UNC }
L"xO
_SOURCE_MONOTONIC_TIMESTAMP=107893255
MESSAGE=ata1.00: configured for UDMA/133
;>.v
_KERNEL_SUBSYSTEM=scsi
_KERNEL_SUBSYSTEM
_KERNEL_DEVICE=+scsi:0:0:0:0
_KERNEL_DEVICE
_UDEV_SYSNAME=0:0:0:0
_UDEV_SYSNAME
_SOURCE_MONOTONIC_TIMESTAMP=107903447
MESSAGE=sd 0:0:0:0: [sda] tag#0 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
_SOURCE_MONOTONIC_TIMESTAMP=107903453
MESSAGE=sd 0:0:0:0: [sda] tag#0 Sense Key : Medium Error [current] 
_SOURCE_MONOTONIC_TIMESTAMP=107903456
MESSAGE=sd 0:0:0:0: [sda] tag#0 Add. Sense: Unrecovered read error - auto reallocate failed
_SOURCE_MONOTONIC_TIMESTAMP=107903460
%X}0#
MESSAGE=sd 0:0:0:0: [sda] tag#0 CDB: Read(10) 28 00 1e ae 2e a0 00 01 00 00
p e/
_SOURCE_MONOTONIC_TIMESTAMP=107903462
MESSAGE=I/O error, dev sda, sector 514731680 op 0x0:(READ) flags 0x80700 phys_seg 2 prio class 0
_SOURCE_MONOTONIC_TIMESTAMP=107903476
vWorK
MESSAGE=ata1: EH complete
_SOURCE_MONOTONIC_TIMESTAMP=108015048
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x60000004 SErr 0x0 action 0x0
_SOURCE_MONOTONIC_TIMESTAMP=108015058
_SOURCE_MONOTONIC_TIMESTAMP=108015062
_SOURCE_MONOTONIC_TIMESTAMP=108015066
MESSAGE=ata1.00: cmd 60/08:10:a0:2e:ae/00:00:1e:00:00/40 tag 2 ncq dma 4096 in
         res 41/40:08:00:00:00/00:00:00:00:00/00 Emask 0x409 (media error) <F>
_SOURCE_MONOTONIC_TIMESTAMP=108015074
_SOURCE_MONOTONIC_TIMESTAMP=108015077
_SOURCE_MONOTONIC_TIMESTAMP=108027268
_SOURCE_MONOTONIC_TIMESTAMP=108037452
MESSAGE=sd 0:0:0:0: [sda] tag#2 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
_SOURCE_MONOTONIC_TIMESTAMP=108037458
MESSAGE=sd 0:0:0:0: [sda] tag#2 Sense Key : Medium Error [current] 
_SOURCE_MONOTONIC_TIMESTAMP=108037462
MESSAGE=sd 0:0:0:0: [sda] tag#2 Add. Sense: Unrecovered read error - auto reallocate failed
_SOURCE_MONOTONIC_TIMESTAMP=108037465
MESSAGE=sd 0:0:0:0: [sda] tag#2 CDB: Read(10) 28 00 1e ae 2e a0 00 00 08 00
_SOURCE_MONOTONIC_TIMESTAMP=108037468
MESSAGE=I/O error, dev sda, sector 514731680 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
_SOURCE_MONOTONIC_TIMESTAMP=108037487
SYSLOG_IDENTIFIER=CRON
SYSLOG_PID=5666
SYSLOG_TIMESTAMP=Dec  4 20:55:01 
MESSAGE=pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
_PID=5666
_COMM=cron
_EXE=/usr/sbin/cron
w&a,
_CMDLINE=/usr/sbin/CRON -f -P
"i- 
_AUDIT_SESSION=5
_AUDIT_LOGINUID=0
_SYSTEMD_CGROUP=/system.slice/cron.service
_SYSTEMD_UNIT=cron.service
_SYSTEMD_INVOCATION_ID=8843db5f56be471890a57acd433665ce
_SOURCE_REALTIME_TIMESTAMP=1733331301285129
SYSLOG_PID=5667
MESSAGE=(root) CMD (command -v debian-sa1 > /dev/null && debian-sa1 1 1)
_PID=5667
_SOURCE_REALTIME_TIMESTAMP=1733331301285475
MESSAGE=pam_unix(cron:session): session closed for user root
_SOURCE_REALTIME_TIMESTAMP=1733331301311396
'u E
_SOURCE_MONOTONIC_TIMESTAMP=124546002
MESSAGE=audit: type=1400 audit(1733331316.392:229): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=6611 comm="snap-confine" capability=12  capname="net_admin"
_SOURCE_MONOTONIC_TIMESTAMP=124546025
MESSAGE=audit: type=1400 audit(1733331316.392:230): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=6611 comm="snap-confine" capability=38  capname="perfmon"
INVOCATION_ID=824fd9e429524e18877bbd6e110ccac3
MESSAGE=tmp-snap.rootfs_ViqJFL.mount: Deactivated successfully.
UNIT=tmp-snap.rootfs_ViqJFL.mount
_SOURCE_REALTIME_TIMESTAMP=1733331316510539
_SOURCE_MONOTONIC_TIMESTAMP=128739896
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x180 SErr 0x40000 action 0x0
\	}VR
_SOURCE_MONOTONIC_TIMESTAMP=128739904
HB9'
_SOURCE_MONOTONIC_TIMESTAMP=128739907
_SOURCE_MONOTONIC_TIMESTAMP=128739912
P?{^
_SOURCE_MONOTONIC_TIMESTAMP=128739915
MESSAGE=ata1.00: cmd 60/40:38:98:a4:6d/00:00:1e:00:00/40 tag 7 ncq dma 32768 in
         res 41/40:40:00:00:00/00:00:00:00:00/00 Emask 0x409 (media error) <F>
_SOURCE_MONOTONIC_TIMESTAMP=128739923
_SOURCE_MONOTONIC_TIMESTAMP=128739925
_SOURCE_MONOTONIC_TIMESTAMP=128774828
_SOURCE_MONOTONIC_TIMESTAMP=128794198
MESSAGE=sd 0:0:0:0: [sda] tag#7 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
:pp\
_SOURCE_MONOTONIC_TIMESTAMP=128794203
MESSAGE=sd 0:0:0:0: [sda] tag#7 Sense Key : Medium Error [current] 
_SOURCE_MONOTONIC_TIMESTAMP=128794207
MESSAGE=sd 0:0:0:0: [sda] tag#7 Add. Sense: Unrecovered read error - auto reallocate failed
_SOURCE_MONOTONIC_TIMESTAMP=128794211
MESSAGE=sd 0:0:0:0: [sda] tag#7 CDB: Read(10) 28 00 1e 6d a4 98 00 00 40 00
_SOURCE_MONOTONIC_TIMESTAMP=128794213
MESSAGE=I/O error, dev sda, sector 510502040 op 0x0:(READ) flags 0x80700 phys_seg 1 prio class 0
_SOURCE_MONOTONIC_TIMESTAMP=128794226
_SOURCE_MONOTONIC_TIMESTAMP=130333700
MESSAGE=audit: type=1400 audit(1733331322.180:231): apparmor="DENIED" operation="open" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/etc/openal/alsoft.conf" pid=6611 comm="telegram-deskto" requested_mask="r" denied_mask="r" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=131523701
MESSAGE=audit: type=1107 audit(1733331323.370:232): pid=1806 uid=101 auid=4294967295 ses=4294967295 subj=unconfined msg='apparmor="DENIED" operation="dbus_method_call"  bus="system" path="/org/freedesktop/NetworkManager" interface="org.freedesktop.DBus.Properties" member="GetAll" mask="send" name="org.freedesktop.NetworkManager" pid=6611 label="snap.telegram-desktop.telegram-desktop" peer_pid=1978 peer_label="unconfined"
 exe="/usr/bin/dbus-daemon" sauid=101 hostname=? addr=? terminal=?'
_SOURCE_REALTIME_TIMESTAMP=1733331323599296
~f[H
_SOURCE_MONOTONIC_TIMESTAMP=132134786
MESSAGE=audit: type=1400 audit(1733331323.981:233): apparmor="DENIED" operation="ptrace" class="ptrace" profile="snap.telegram-desktop.telegram-desktop" pid=6611 comm="telegram-deskto" requested_mask="read" denied_mask="read" peer="unconfined"
_SOURCE_MONOTONIC_TIMESTAMP=132269940
MESSAGE=audit: type=1400 audit(1733331324.116:234): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:255" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=132270176
MESSAGE=audit: type=1400 audit(1733331324.116:235): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:254" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=132270256
E{O2
MESSAGE=audit: type=1400 audit(1733331324.116:236): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:0" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=132270364
MESSAGE=audit: type=1400 audit(1733331324.117:237): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:0" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=132271771
MESSAGE=audit: type=1107 audit(1733331324.118:238): pid=1806 uid=101 auid=4294967295 ses=4294967295 subj=unconfined msg='apparmor="DENIED" operation="dbus_method_call"  bus="system" path="/org/freedesktop/DBus" interface="org.freedesktop.DBus" member="ListNames" mask="send" name="org.freedesktop.DBus" pid=6611 label="snap.telegram-desktop.telegram-desktop" peer_label="unconfined"
 exe="/usr/bin/dbus-daemon" sauid=101 hostname=? addr=? terminal=?'
+>wt
_SOURCE_MONOTONIC_TIMESTAMP=132329933
MESSAGE=audit: type=1400 audit(1733331324.176:239): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:254" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
CODE_FILE=src/resolve/resolved-dns-server.c
CODE_LINE=585
CODE_FUNC=dns_server_possible_feature_level
MESSAGE=Using degraded feature set UDP instead of UDP+EDNS0 for DNS server 192.168.0.1.
_SOURCE_REALTIME_TIMESTAMP=1733331432674205
SYSLOG_IDENTIFIER=anacron
SYSLOG_PID=1801
SYSLOG_TIMESTAMP=Dec  4 20:58:47 
MESSAGE=Job `cron.daily' started
_PID=1801
_COMM=anacron
_EXE=/usr/sbin/anacron
_CMDLINE=/usr/sbin/anacron -d -q -s
_SYSTEMD_CGROUP=/system.slice/anacron.service
_SYSTEMD_UNIT=anacron.service
_SYSTEMD_INVOCATION_ID=04e3b86d102a4439a4cba3a9f4bbcf82
_SOURCE_REALTIME_TIMESTAMP=1733331527712277
X#gY
SYSLOG_PID=17849
MESSAGE=Updated timestamp for job `cron.daily' to 2024-12-04
_PID=17849
_SOURCE_REALTIME_TIMESTAMP=1733331527823479
H]ba
MESSAGE=Starting update-notifier-download.service - Download data for packages that failed at package install time...
JOB_ID=2672
d3W7
INVOCATION_ID=3c97afce5a494818b4c3c36180dd8706
UNIT=update-notifier-download.service
_SOURCE_REALTIME_TIMESTAMP=1733331527867166
SYSLOG_TIMESTAMP=Dec  4 20:58:48 
ZOm7
MESSAGE=Job `cron.daily' terminated
_SOURCE_REALTIME_TIMESTAMP=1733331528079796
>9Z*
MESSAGE=update-notifier-download.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331528262262
h?K1
MESSAGE=Finished update-notifier-download.service - Download data for packages that failed at package install time.
_SOURCE_REALTIME_TIMESTAMP=1733331528262466
SYSLOG_TIMESTAMP=Dec  4 20:59:08 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.timedate1' unit='dbus-org.freedesktop.timedate1.service' requested by ':1.16' (uid=0 pid=1848 comm="/usr/lib/snapd/snapd" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331548018053
MESSAGE=Starting systemd-timedated.service - Time & Date Service...
JOB_ID=2767
INVOCATION_ID=3ee6088e0cbc4d4ea4843b86d3687394
n_n`
_SOURCE_REALTIME_TIMESTAMP=1733331548038148
MESSAGE=[system] Successfully activated service 'org.freedesktop.timedate1'
_SOURCE_REALTIME_TIMESTAMP=1733331548081526
MESSAGE=Started systemd-timedated.service - Time & Date Service.
_SOURCE_REALTIME_TIMESTAMP=1733331548081635
OZ`G
_STREAM_ID=ff92208476c548f494063f457a415a58
SYSLOG_IDENTIFIER=snapd
MESSAGE=storehelpers.go:1044: cannot refresh: snap has no updates available: "bare", "core18", "core20", "core24", "discord", "docker", "firefox", "firmware-updater", "geforcenow", "gnome-3-28-1804", "gnome-3-38-2004", "gnome-42-2204", "gnome-46-2404", "gtk-common-themes", "intellij-idea-community", "mesa-2404", "obsidian", "port", "redisinsight", "snapd", "speedtest", "spotify", "telegram-desktop", "thunderbird"
_PID=1848
_COMM=snapd
_EXE=/snap/snapd/23258/usr/lib/snapd/snapd
_CMDLINE=/usr/lib/snapd/snapd
_SYSTEMD_CGROUP=/system.slice/snapd.service
_SYSTEMD_UNIT=snapd.service
_SYSTEMD_INVOCATION_ID=819a12bf54ec4316ac4abafc7204cabb
CODE_FILE=src/core/dbus-manager.c
CODE_LINE=1597
CODE_FUNC=log_caller
MESSAGE=Reloading requested from client PID 18951 ('systemctl') (unit snapd.service)...
_SOURCE_REALTIME_TIMESTAMP=1733331555523978
CODE_LINE=1961
CODE_FUNC=invoke_main_loop
E'r}m
MESSAGE=Reloading...
_SOURCE_REALTIME_TIMESTAMP=1733331555523988
CODE_FILE=src/basic/fs-util.c
CODE_LINE=356
CODE_FUNC=stat_warn_permissions
MESSAGE=Configuration file /run/systemd/system/netplan-ovs-cleanup.service is marked world-inaccessible. This has no effect as configuration data is accessible via APIs without restrictions. Proceeding anyway.
_SOURCE_REALTIME_TIMESTAMP=1733331555615287
CODE_LINE=1987
MESSAGE=Reloading finished in 258 ms.
_SOURCE_REALTIME_TIMESTAMP=1733331555782737
CODE_LINE=2745
CODE_FUNC=manager_dispatch_notify_fd
MESSAGE=Cannot find unit for notify message of PID 18951, ignoring.
_SOURCE_REALTIME_TIMESTAMP=1733331555833010
MESSAGE=Mounting snap-core22-1722.mount - Mount unit for core22, revision 1722...
JOB_ID=2863
INVOCATION_ID=042145b71fae491f9ba99c843950a830
UNIT=snap-core22-1722.mount
_SOURCE_REALTIME_TIMESTAMP=1733331555860083
_SOURCE_MONOTONIC_TIMESTAMP=364017838
MESSAGE=loop41: detected capacity change from 0 to 151288
MESSAGE=Mounted snap-core22-1722.mount - Mount unit for core22, revision 1722.
_SOURCE_REALTIME_TIMESTAMP=1733331555871216
TID=535
CODE_FILE=src/udev/net/link-config.c
CODE_LINE=281
CODE_FUNC=link_load_one
SYSLOG_IDENTIFIER=systemd-udevd
MESSAGE=/run/systemd/network/10-netplan-NM-d266210c-d854-44fa-bffe-8725a4464598.link: No valid settings found in the [Match] section, ignoring file. To match all interfaces, add OriginalName=* in the [Match] section.
_PID=535
_COMM=systemd-udevd
_EXE=/usr/bin/udevadm
_CMDLINE=/usr/lib/systemd/systemd-udevd
_CAP_EFFECTIVE=1f7fdffffff
_SYSTEMD_CGROUP=/system.slice/systemd-udevd.service/udev
_SYSTEMD_UNIT=systemd-udevd.service
_SYSTEMD_INVOCATION_ID=3ec6f19f09df47ec88024557cede9113
_SOURCE_REALTIME_TIMESTAMP=1733331564021860
INVOCATION_ID=543df6f297624f1abec0e49b37f2a94d
cfO/
MESSAGE=snap-core22-1690.mount: Deactivated successfully.
UNIT=snap-core22-1690.mount
_SOURCE_REALTIME_TIMESTAMP=1733331564023651
MESSAGE=Cannot find unit for notify message of PID 19982, ignoring.
_SOURCE_REALTIME_TIMESTAMP=1733331564034434
MESSAGE=Reloading requested from client PID 19985 ('systemctl') (unit snapd.service)...
_SOURCE_REALTIME_TIMESTAMP=1733331564053546
HNYQ
_SOURCE_REALTIME_TIMESTAMP=1733331564053554
_SOURCE_REALTIME_TIMESTAMP=1733331564134671
MESSAGE=Reloading finished in 245 ms.
_SOURCE_REALTIME_TIMESTAMP=1733331564299310
MESSAGE=Cannot find unit for notify message of PID 19985, ignoring.
_SOURCE_REALTIME_TIMESTAMP=1733331564341246
MESSAGE=storehelpers.go:1044: cannot refresh snap "core22": snap has no updates available
_SOURCE_REALTIME_TIMESTAMP=1733331578112711
SYSLOG_TIMESTAMP=Dec  4 20:59:54 
MESSAGE=uid 1000 is trying to obtain org.freedesktop.packagekit.system-sources-refresh auth (only_trusted:0)
_SOURCE_REALTIME_TIMESTAMP=1733331594229777
MESSAGE=uid 1000 obtained auth for org.freedesktop.packagekit.system-sources-refresh
_SOURCE_REALTIME_TIMESTAMP=1733331594232313
7c?N
MESSAGE=Starting apt-news.service - Update APT News...
JOB_ID=2872
INVOCATION_ID=c595c190a4f84d5fbc61fc8ee589399a
UNIT=apt-news.service
_SOURCE_REALTIME_TIMESTAMP=1733331594497177
MESSAGE=Starting esm-cache.service - Update the local ESM caches...
JOB_ID=2967
INVOCATION_ID=6c2e3ed12b4d4c8c9c4c766bc9e86753
UNIT=esm-cache.service
_SOURCE_REALTIME_TIMESTAMP=1733331594514799
MESSAGE=apt-news.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331595457251
MESSAGE=Finished apt-news.service - Update APT News.
_SOURCE_REALTIME_TIMESTAMP=1733331595457452
MESSAGE=esm-cache.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331596755807
MESSAGE=Finished esm-cache.service - Update the local ESM caches.
_SOURCE_REALTIME_TIMESTAMP=1733331596756053
SYSLOG_TIMESTAMP=Dec  4 21:00:03 
MESSAGE=refresh-cache transaction /3413_baeaaccb from uid 1000 finished with success after 9276ms
_SOURCE_REALTIME_TIMESTAMP=1733331603510092
_SOURCE_REALTIME_TIMESTAMP=1733331604387377
_SOURCE_REALTIME_TIMESTAMP=1733331604388778
SYSLOG_TIMESTAMP=Dec  4 21:00:04 
MESSAGE=get-updates transaction /3414_baddbcab from uid 1000 finished with success after 876ms
_SOURCE_REALTIME_TIMESTAMP=1733331604389977
_SOURCE_REALTIME_TIMESTAMP=1733331604681121
_SOURCE_REALTIME_TIMESTAMP=1733331604682537
MESSAGE=get-updates transaction /3415_cbeddaae from uid 1000 finished with success after 286ms
_SOURCE_REALTIME_TIMESTAMP=1733331604683662
_SOURCE_MONOTONIC_TIMESTAMP=449691426
MESSAGE=audit: type=1400 audit(1733331641.535:240): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=23620 comm="snap-confine" capability=12  capname="net_admin"
_SOURCE_MONOTONIC_TIMESTAMP=449691449
MESSAGE=audit: type=1400 audit(1733331641.535:241): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=23620 comm="snap-confine" capability=38  capname="perfmon"
|stk
INVOCATION_ID=2fc1a11918944573a6add9a7b7c9527a
MESSAGE=tmp-snap.rootfs_3NCuYh.mount: Deactivated successfully.
UNIT=tmp-snap.rootfs_3NCuYh.mount
_SOURCE_REALTIME_TIMESTAMP=1733331641633916
_SOURCE_MONOTONIC_TIMESTAMP=450485750
MESSAGE=audit: type=1400 audit(1733331642.329:242): apparmor="DENIED" operation="open" class="file" profile="snap.firmware-updater.firmware-notifier" name="/proc/sys/vm/max_map_count" pid=23620 comm="firmware-notifi" requested_mask="r" denied_mask="r" fsuid=1000 ouid=0
SYSLOG_TIMESTAMP=Dec  4 21:00:42 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.fwupd' unit='fwupd.service' requested by ':1.112' (uid=1000 pid=23620 comm="/snap/firmware-updater/147/bin/firmware-notifier" label="snap.firmware-updater.firmware-notifier (enforce)")
_SOURCE_REALTIME_TIMESTAMP=1733331642355151
MESSAGE=Starting fwupd.service - Firmware update daemon...
JOB_ID=3062
INVOCATION_ID=35594fb467334a34b6c2a39628aa1bcf
UNIT=fwupd.service
_SOURCE_REALTIME_TIMESTAMP=1733331642376085
MESSAGE=Mounted /dev/sdb2 at /media/root/ESP on behalf of uid 0
GLIB_DOMAIN=udisks
THREAD_ID=24642
mu=l
THREAD_ID
CODE_FUNC=handle_mount
CODE_FILE=udiskslinuxfilesystem.c:1394
_PID=1856
_COMM=udisksd
_EXE=/usr/libexec/udisks2/udisksd
/Q>Y
_CMDLINE=/usr/libexec/udisks2/udisksd
_SYSTEMD_CGROUP=/system.slice/udisks2.service
_SYSTEMD_UNIT=udisks2.service
_SYSTEMD_INVOCATION_ID=7cd3a193136c44e38fcbce2d84548e60
_SOURCE_REALTIME_TIMESTAMP=1733331643784595
_SOURCE_REALTIME_TIMESTAMP=1733331643788509
MESSAGE=Cleaning up mount point /media/root/ESP (device 8:18 is not mounted)
CODE_FUNC=udisks_state_check_mounted_fs_entry
CODE_FILE=udisksstate.c:771
_SOURCE_REALTIME_TIMESTAMP=1733331643842092
INVOCATION_ID=2f6d71578a8740a08fe3bb0d73935a33
MESSAGE=media-root-ESP.mount: Deactivated successfully.
UNIT=media-root-ESP.mount
_SOURCE_REALTIME_TIMESTAMP=1733331643842318
MESSAGE=Unmounted /dev/sdb2 on behalf of uid 0
CODE_FUNC=handle_unmount
CODE_FILE=udiskslinuxfilesystem.c:1692
_SOURCE_REALTIME_TIMESTAMP=1733331643921500
MESSAGE=Mounted /dev/nvme0n1p1 at /media/root/A0B8-A861 on behalf of uid 0
_SOURCE_REALTIME_TIMESTAMP=1733331643962701
MESSAGE=Cleaning up mount point /media/root/A0B8-A861 (device 259:1 is not mounted)
_SOURCE_REALTIME_TIMESTAMP=1733331643993736
,^SP
MESSAGE=Unmounted /dev/nvme0n1p1 on behalf of uid 0
_SOURCE_REALTIME_TIMESTAMP=1733331644038856
_STREAM_ID=d97fb993acae4a9f87b44889fe97ce23
SYSLOG_IDENTIFIER=fwupd
MESSAGE=17:00:44.089 FuPluginUefiCapsule  skipping device that failed coldplug: ESRT GUID '00000000-0000-0000-0000-000000000000' was not valid
_PID=24635
72lx
_COMM=fwupd
_EXE=/usr/libexec/fwupd/fwupd
_CMDLINE=/usr/libexec/fwupd/fwupd
_CAP_EFFECTIVE=1fffffeffff
_SYSTEMD_CGROUP=/system.slice/fwupd.service
_SYSTEMD_UNIT=fwupd.service
_SYSTEMD_INVOCATION_ID=35594fb467334a34b6c2a39628aa1bcf
INVOCATION_ID=0d51c2a37d52429bb395e9528070b2f5
-Ag*
MESSAGE=media-root-A0B8\x2dA861.mount: Deactivated successfully.
UNIT=media-root-A0B8\x2dA861.mount
_SOURCE_REALTIME_TIMESTAMP=1733331644789641
MESSAGE=17:00:45.051 FuMain               Daemon ready for requests (locale ru_RU.UTF-8)
SYSLOG_TIMESTAMP=Dec  4 21:00:45 
MESSAGE=[system] Successfully activated service 'org.freedesktop.fwupd'
_SOURCE_REALTIME_TIMESTAMP=1733331645053670
MESSAGE=Started fwupd.service - Firmware update daemon.
_SOURCE_REALTIME_TIMESTAMP=1733331645053852
SYSLOG_PID=36077
SYSLOG_TIMESTAMP=Dec  4 21:05:01 
_PID=36077
_AUDIT_SESSION=6
_SOURCE_REALTIME_TIMESTAMP=1733331901315071
SYSLOG_PID=36078
_PID=36078
v16+
_SOURCE_REALTIME_TIMESTAMP=1733331901315438
_SOURCE_REALTIME_TIMESTAMP=1733331901317282
SYSLOG_TIMESTAMP=Dec  4 21:05:10 
MESSAGE=daemon quit
_SOURCE_REALTIME_TIMESTAMP=1733331910170040
MESSAGE=packagekit.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331910175394
Hv&'.eEY
:6	E3 
CPU_USAGE_NSEC=5786735000
MEMORY_PEAK=24297472
MEMORY_PEAK
MEMORY_SWAP_PEAK=0
MEMORY_SWAP_PEAK
MESSAGE=packagekit.service: Consumed 5.786s CPU time, 23.1M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733331910175631
MESSAGE=Starting systemd-tmpfiles-clean.service - Cleanup of Temporary Directories...
JOB_ID=3199
h .e
INVOCATION_ID=2667ebcc860747c492d87e679cade3d9
(	"a/6i
UNIT=systemd-tmpfiles-clean.service
_SOURCE_REALTIME_TIMESTAMP=1733332132880151
MESSAGE=systemd-tmpfiles-clean.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733332132943297
MESSAGE=Finished systemd-tmpfiles-clean.service - Cleanup of Temporary Directories.
_SOURCE_REALTIME_TIMESTAMP=1733332132943523
SYSLOG_PID=63617
SYSLOG_TIMESTAMP=Dec  4 21:15:01 
md]\
_PID=63617
_AUDIT_SESSION=7
_SOURCE_REALTIME_TIMESTAMP=1733332501320541
p8<=
SYSLOG_PID=63618
_PID=63618
_SOURCE_REALTIME_TIMESTAMP=1733332501320888
&84T
_SOURCE_REALTIME_TIMESTAMP=1733332501322597
SYSLOG_PID=69133
SYSLOG_TIMESTAMP=Dec  4 21:17:01 
_PID=69133
_AUDIT_SESSION=8
_SOURCE_REALTIME_TIMESTAMP=1733332621326056
SYSLOG_PID=69134
MESSAGE=(root) CMD (cd / && run-parts --report /etc/cron.hourly)
_PID=69134
_SOURCE_REALTIME_TIMESTAMP=1733332621326444
_SOURCE_REALTIME_TIMESTAMP=1733332621348343
SYSLOG_TIMESTAMP=Dec  4 21:23:07 
MESSAGE=Registered Authentication Agent for unix-process:86416:179534 (system bus name :1.129 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733332987529245
MESSAGE=Identity `unix-group:admin' is not valid, ignoring: No UNIX group with name admin: Success
_SOURCE_REALTIME_TIMESTAMP=1733332987578992
SYSLOG_TIMESTAMP=Dec  4 21:23:10 
MESSAGE=Operator of unix-session:3 FAILED to authenticate to gain authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.130 [systemctl stop systemd] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733332990277915
)	u(
MESSAGE=Unregistered Authentication Agent for unix-process:86416:179534 (system bus name :1.129, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733332990279670
)	u(
$S0S
SYSLOG_IDENTIFIER=smartd
SYSLOG_PID=1836
SYSLOG_TIMESTAMP=Dec  4 21:23:52 
MESSAGE=System clock time adjusted to the past. Resetting next wakeup time.
&)SL-
SYSLOG_RAW=<30>Dec  4 21:23:52 smartd[1836]: System clock time adjusted to the past. Resetting next wakeup time.
_PID=1836
_COMM=smartd
_EXE=/usr/sbin/smartd
_CMDLINE=/usr/sbin/smartd -n
_SYSTEMD_CGROUP=/system.slice/smartmontools.service
_SYSTEMD_UNIT=smartmontools.service
_SYSTEMD_INVOCATION_ID=65f896f182bc4619941acd9cb7185039
_SOURCE_REALTIME_TIMESTAMP=1733333032330248
SYSLOG_TIMESTAMP=Dec  4 21:24:34 
MESSAGE=Registered Authentication Agent for unix-process:90081:188221 (system bus name :1.132 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733333074386602
gl0p
_SOURCE_REALTIME_TIMESTAMP=1733333074393725
SYSLOG_TIMESTAMP=Dec  4 21:24:36 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.133 [systemctl stop systemd] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333076084938
H`O%
MESSAGE=Unregistered Authentication Agent for unix-process:unknown (system bus name :1.132, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
%j.0
_SOURCE_REALTIME_TIMESTAMP=1733333076087565
SYSLOG_PID=91017
z"}v
SYSLOG_TIMESTAMP=Dec  4 21:25:01 
_PID=91017
_AUDIT_SESSION=9
VQ=4
_SOURCE_REALTIME_TIMESTAMP=1733333101351738
SYSLOG_PID=91018
_PID=91018
_SOURCE_REALTIME_TIMESTAMP=1733333101352144
_SOURCE_REALTIME_TIMESTAMP=1733333101354075
CODE_LINE=448
MESSAGE=Grace period over, resuming full feature set (UDP+EDNS0) for DNS server 192.168.0.1.
_SOURCE_REALTIME_TIMESTAMP=1733333190457396
)NO:
SYSLOG_TIMESTAMP=Dec  4 21:27:34 
_SOURCE_REALTIME_TIMESTAMP=1733333254896995
05w	X
SYSLOG_TIMESTAMP=Dec  4 21:27:37 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.139 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333257379774
MESSAGE=Stopping redis-server.service - Advanced key-value store...
JOB_ID=3206
INVOCATION_ID=625e22086efc424783169e7653170ece
UNIT=redis-server.service
_SOURCE_REALTIME_TIMESTAMP=1733333257380462
MESSAGE=redis-server.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733333257664987
MESSAGE=Stopped redis-server.service - Advanced key-value store.
_SOURCE_REALTIME_TIMESTAMP=1733333257665203
CPU_USAGE_NSEC=1626506000
MEMORY_PEAK=30429184
MESSAGE=redis-server.service: Consumed 1.626s CPU time, 29.0M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733333257665356
SYSLOG_TIMESTAMP=Dec  4 21:28:14 
MESSAGE=Registered Authentication Agent for unix-process:100101:210281 (system bus name :1.142 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733333294990633
_SOURCE_REALTIME_TIMESTAMP=1733333294997143
SYSLOG_TIMESTAMP=Dec  4 21:28:17 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.143 [systemctl start redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333297911180
MESSAGE=Starting redis-server.service - Advanced key-value store...
JOB_ID=3207
INVOCATION_ID=de1e5192449144da97a26f4ea46becaf
_SOURCE_REALTIME_TIMESTAMP=1733333297929220
MESSAGE=Started redis-server.service - Advanced key-value store.
_SOURCE_REALTIME_TIMESTAMP=1733333298021779
SYSLOG_TIMESTAMP=Dec  4 21:28:18 
MESSAGE=Unregistered Authentication Agent for unix-process:100101:210281 (system bus name :1.142, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733333298023429
SYSLOG_TIMESTAMP=Dec  4 21:28:41 
_SOURCE_REALTIME_TIMESTAMP=1733333321780092
SYSLOG_TIMESTAMP=Dec  4 21:28:49 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.146 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333329945677
JOB_ID=3397
_SOURCE_REALTIME_TIMESTAMP=1733333329946316
_SOURCE_REALTIME_TIMESTAMP=1733333330145319
_SOURCE_REALTIME_TIMESTAMP=1733333330145544
JOB_ID=3398
INVOCATION_ID=354dc30a0e334cc6a851da1faaec884b
_SOURCE_REALTIME_TIMESTAMP=1733333362274162
_A\a27
_SOURCE_REALTIME_TIMESTAMP=1733333362365237
xw;B
SYSLOG_TIMESTAMP=Dec  4 21:29:38 
_SOURCE_REALTIME_TIMESTAMP=1733333378315149
J u(
SYSLOG_TIMESTAMP=Dec  4 21:29:41 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.149 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333381841200
r>T#"
JOB_ID=3493
_SOURCE_REALTIME_TIMESTAMP=1733333381841929
_SOURCE_REALTIME_TIMESTAMP=1733333382071915
_SOURCE_REALTIME_TIMESTAMP=1733333382072142
SYSLOG_PID=104754
p9rW
SYSLOG_TIMESTAMP=Dec  4 21:30:01 
_PID=104754
_AUDIT_SESSION=10
_SOURCE_REALTIME_TIMESTAMP=1733333401357313
SYSLOG_PID=104755
MESSAGE=(root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi)
_PID=104755
_SOURCE_REALTIME_TIMESTAMP=1733333401357774
_SOURCE_REALTIME_TIMESTAMP=1733333401358970
SYSLOG_TIMESTAMP=Dec  4 21:31:00 
_SOURCE_REALTIME_TIMESTAMP=1733333460242648
,%u(
SYSLOG_TIMESTAMP=Dec  4 21:31:04 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.152 [systemctl restart redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333464006653
@f%u(
JOB_ID=3494
INVOCATION_ID=422d54ad4ae24d35a41b36a15e7b1f65
_SOURCE_REALTIME_TIMESTAMP=1733333464020261
8uf%u(
_SOURCE_REALTIME_TIMESTAMP=1733333464111175
g%u(
HX&9
SYSLOG_TIMESTAMP=Dec  4 21:32:48 
_SOURCE_REALTIME_TIMESTAMP=1733333568067692
SYSLOG_TIMESTAMP=Dec  4 21:32:52 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.reload-daemon for system-bus-name::1.155 [systemctl daemon-reload] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333572529146
MESSAGE=Reloading requested from client PID 112972 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333572529509
_SOURCE_REALTIME_TIMESTAMP=1733333572529522
_SOURCE_REALTIME_TIMESTAMP=1733333572618894
MESSAGE=Reloading finished in 260 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333572790509
SYSLOG_TIMESTAMP=Dec  4 21:33:05 
MESSAGE=Registered Authentication Agent for unix-process:113992:239326 (system bus name :1.157 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733333585434177
_SOURCE_REALTIME_TIMESTAMP=1733333585440547
SYSLOG_TIMESTAMP=Dec  4 21:33:07 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.reload-daemon for system-bus-name::1.158 [systemctl daemon-reload] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333587589867
nZ`m&
MESSAGE=Reloading requested from client PID 113992 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333587590246
%xMRn
_SOURCE_REALTIME_TIMESTAMP=1733333587590257
_SOURCE_REALTIME_TIMESTAMP=1733333587689901
MESSAGE=Reloading finished in 266 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333587857249
MESSAGE=Unregistered Authentication Agent for unix-process:113992:239326 (system bus name :1.157, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733333587896532
Jgps
MESSAGE=Starting fwupd-refresh.service - Refresh fwupd metadata and update motd...
JOB_ID=3589
INVOCATION_ID=db7a9c68aa0e46af98cb864b90e5901d
UNIT=fwupd-refresh.service
_SOURCE_REALTIME_TIMESTAMP=1733333587918356
MESSAGE=fwupd-refresh.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733333587975738
MESSAGE=Finished fwupd-refresh.service - Refresh fwupd metadata and update motd.
_SOURCE_REALTIME_TIMESTAMP=1733333587975941
SYSLOG_PID=118633
SYSLOG_TIMESTAMP=Dec  4 21:35:01 
/oAuz
_PID=118633
_AUDIT_SESSION=11
_SOURCE_REALTIME_TIMESTAMP=1733333701361892
SYSLOG_PID=118634
qcc1
_PID=118634
_SOURCE_REALTIME_TIMESTAMP=1733333701362300
_SOURCE_REALTIME_TIMESTAMP=1733333701364022
)cR'
SYSLOG_TIMESTAMP=Dec  4 21:35:12 
_SOURCE_REALTIME_TIMESTAMP=1733333712103555
/4u(
)-t2:Z
SYSLOG_TIMESTAMP=Dec  4 21:35:15 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.reload-daemon for system-bus-name::1.161 [systemctl daemon-reload] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333715518751
d4u(
MESSAGE=Reloading requested from client PID 119537 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333715519214
d4u(
M@x?7
_SOURCE_REALTIME_TIMESTAMP=1733333715519228
d4u(
_SOURCE_REALTIME_TIMESTAMP=1733333715617235
e4u(
MESSAGE=Reloading finished in 262 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333715782583
h4u(
MESSAGE=Starting plocate-updatedb.service - Update the plocate database...
JOB_ID=3690
INVOCATION_ID=630b5c542540444691c887ca4784fe88
UNIT=plocate-updatedb.service
_SOURCE_REALTIME_TIMESTAMP=1733333715842178
h4u(
MESSAGE=Reloading requested from client PID 120551 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333726370636
	5u(
_SOURCE_REALTIME_TIMESTAMP=1733333726370646
	5u(
_SOURCE_REALTIME_TIMESTAMP=1733333726457188
MESSAGE=Reloading finished in 250 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333726621021
MESSAGE=Reloading requested from client PID 120640 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333726669598
_SOURCE_REALTIME_TIMESTAMP=1733333726669607
_SOURCE_REALTIME_TIMESTAMP=1733333726751749
H!Fy
MESSAGE=Reloading finished in 244 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333726914806
y<Ke
MESSAGE=Reloading requested from client PID 120547 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333726972931
Hib"m
_SOURCE_REALTIME_TIMESTAMP=1733333726972940
Ns1y
_SOURCE_REALTIME_TIMESTAMP=1733333727061689
MESSAGE=Reloading finished in 253 ms.
o>8N/{c
_SOURCE_REALTIME_TIMESTAMP=1733333727226925
_SOURCE_MONOTONIC_TIMESTAMP=2536731995
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x100000 SErr 0x40000 action 0x0
+5u(
RdJ;m
_SOURCE_MONOTONIC_TIMESTAMP=2536732003
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732005
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732009
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732011
MESSAGE=ata1.00: cmd 60/08:a0:d8:6f:92/00:00:32:00:00/40 tag 20 ncq dma 4096 in
         res 41/40:08:00:00:00/00:00:00:00:00/00 Emask 0x409 (media error) <F>
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732017
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732020
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536743737
,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753934
MESSAGE=sd 0:0:0:0: [sda] tag#20 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
7,5u(
2jVg
_SOURCE_MONOTONIC_TIMESTAMP=2536753942
MESSAGE=sd 0:0:0:0: [sda] tag#20 Sense Key : Medium Error [current] 
8,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753947
MESSAGE=sd 0:0:0:0: [sda] tag#20 Add. Sense: Unrecovered read error - auto reallocate failed
}9,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753952
MESSAGE=sd 0:0:0:0: [sda] tag#20 CDB: Read(10) 28 00 32 92 6f d8 00 00 08 00
:,5u(
Ld@P
_SOURCE_MONOTONIC_TIMESTAMP=2536753955
MESSAGE=I/O error, dev sda, sector 848457688 op 0x0:(READ) flags 0x3000 phys_seg 1 prio class 3
:,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753972
:,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753976
MESSAGE=EXT4-fs warning (device sda3): htree_dirblock_to_tree:1082: inode #26364247: lblock 96: comm updatedb.plocat: error -5 reading directory block
:,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840310
)~Bh=
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x2000 SErr 0x0 action 0x0
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840318
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840322
-5u(
Ht({
_SOURCE_MONOTONIC_TIMESTAMP=2536840325
MESSAGE=ata1.00: cmd 60/08:68:d8:6f:92/00:00:32:00:00/40 tag 13 ncq dma 4096 in
         res 41/40:08:00:00:00/00:00:00:00:00/00 Emask 0x409 (media error) <F>
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840344
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840348
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536852029
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862220
MESSAGE=sd 0:0:0:0: [sda] tag#13 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862226
m)k#
MESSAGE=sd 0:0:0:0: [sda] tag#13 Sense Key : Medium Error [current] 
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862229
MESSAGE=sd 0:0:0:0: [sda] tag#13 Add. Sense: Unrecovered read error - auto reallocate failed
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862232
MESSAGE=sd 0:0:0:0: [sda] tag#13 CDB: Read(10) 28 00 32 92 6f d8 00 00 08 00
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862234
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862246
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862248
-5u(
MESSAGE=plocate-updatedb.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733333735736319
MESSAGE=Finished plocate-updatedb.service - Update the plocate database.
_SOURCE_REALTIME_TIMESTAMP=1733333735736554
CPU_USAGE_NSEC=4036439000
MEMORY_PEAK=321769472
7<0h
MESSAGE=plocate-updatedb.service: Consumed 4.036s CPU time, 306.8M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733333735736786
MESSAGE=Reloading requested from client PID 124462 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333818066237
_SOURCE_REALTIME_TIMESTAMP=1733333818066246
_SOURCE_REALTIME_TIMESTAMP=1733333818159709
_SOURCE_REALTIME_TIMESTAMP=1733333818324786
MESSAGE=Reloading requested from client PID 124550 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333818375207
_SOURCE_REALTIME_TIMESTAMP=1733333818375218
Z] C
_SOURCE_REALTIME_TIMESTAMP=1733333818460057
MESSAGE=Reloading finished in 248 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333818624404
MESSAGE=Reloading requested from client PID 124458 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333818680403
YC.Q
_SOURCE_REALTIME_TIMESTAMP=1733333818680412
_SOURCE_REALTIME_TIMESTAMP=1733333818767128
MESSAGE=Reloading finished in 252 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333818933380
MESSAGE=Reloading requested from client PID 125634 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333827331237
_SOURCE_REALTIME_TIMESTAMP=1733333827331246
_SOURCE_REALTIME_TIMESTAMP=1733333827414995
_SOURCE_REALTIME_TIMESTAMP=1733333827582264
MESSAGE=Reloading requested from client PID 125721 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333827634039
Pc	v
_SOURCE_REALTIME_TIMESTAMP=1733333827634049
_SOURCE_REALTIME_TIMESTAMP=1733333827727507
_SOURCE_REALTIME_TIMESTAMP=1733333827900749
MESSAGE=Reloading requested from client PID 125630 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333827954723
NNSb
_SOURCE_REALTIME_TIMESTAMP=1733333827954731
FhRN
_SOURCE_REALTIME_TIMESTAMP=1733333828039588
MESSAGE=Reloading finished in 249 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333828204410
MESSAGE=Reloading requested from client PID 125899 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333831803093
`R;u(
_SOURCE_REALTIME_TIMESTAMP=1733333831803102
saR;u(
_SOURCE_REALTIME_TIMESTAMP=1733333831895157
S;u(
MESSAGE=Reloading finished in 259 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333832062378
UV;u(
MESSAGE=Reloading requested from client PID 125986 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333832107757
W;u(
_SOURCE_REALTIME_TIMESTAMP=1733333832107766
W;u(
_SOURCE_REALTIME_TIMESTAMP=1733333832197544
eX;u(
MESSAGE=Reloading finished in 254 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333832362355
Z;u(
H9TQ
MESSAGE=Reloading requested from client PID 125895 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333832425041
[;u(
_SOURCE_REALTIME_TIMESTAMP=1733333832425055
[;u(
_SOURCE_REALTIME_TIMESTAMP=1733333832510495
-,];u(
_SOURCE_REALTIME_TIMESTAMP=1733333832674236
_;u(
MESSAGE=Reloading requested from client PID 131461 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333962176596
_SOURCE_REALTIME_TIMESTAMP=1733333962176607
_SOURCE_REALTIME_TIMESTAMP=1733333962276134
MESSAGE=Reloading finished in 280 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333962457277
MESSAGE=Reloading requested from client PID 132429 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333962506421
_SOURCE_REALTIME_TIMESTAMP=1733333962506431
_SOURCE_REALTIME_TIMESTAMP=1733333962591776
H.d]
_SOURCE_REALTIME_TIMESTAMP=1733333962761652
 Cu(
MESSAGE=Reloading requested from client PID 131457 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333962812008
yj!Cu(
_SOURCE_REALTIME_TIMESTAMP=1733333962812019
j!Cu(
_SOURCE_REALTIME_TIMESTAMP=1733333962898793
"Cu(
_SOURCE_REALTIME_TIMESTAMP=1733333963074320
>k%Cu(
MESSAGE=Starting apt-daily.service - Daily apt download activities...
JOB_ID=3785
INVOCATION_ID=de05b3103a364ba2bca49b4668c8dd25
UNIT=apt-daily.service
_SOURCE_REALTIME_TIMESTAMP=1733333963137105
&Cu(
6b0\
MESSAGE=apt-daily.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733333963552108
,Cu(
MESSAGE=Finished apt-daily.service - Daily apt download activities.
[\s0A4H
_SOURCE_REALTIME_TIMESTAMP=1733333963552345
,Cu(
f9ln
SYSLOG_TIMESTAMP=Dec  4 21:42:22 
_SOURCE_REALTIME_TIMESTAMP=1733334142086452
SYSLOG_TIMESTAMP=Dec  4 21:42:25 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.191 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733334145009851
JOB_ID=3880
_SOURCE_REALTIME_TIMESTAMP=1733334145010743
_SOURCE_REALTIME_TIMESTAMP=1733334145194543
_SOURCE_REALTIME_TIMESTAMP=1733334145194766
SYSLOG_TIMESTAMP=Dec  4 21:42:27 
_SOURCE_REALTIME_TIMESTAMP=1733334147893849
)Nu(
SYSLOG_TIMESTAMP=Dec  4 21:42:30 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.194 [systemctl restart redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733334150009757
INu(
JOB_ID=3881
INVOCATION_ID=87b3cf40b45c4c649b00d3e2c64446c2
_SOURCE_REALTIME_TIMESTAMP=1733334150022144
JNu(
_SOURCE_REALTIME_TIMESTAMP=1733334150113556
!iKNu(
SYSLOG_PID=147449
SYSLOG_TIMESTAMP=Dec  4 21:45:01 
_PID=147449
_AUDIT_SESSION=12
_SOURCE_REALTIME_TIMESTAMP=1733334301368216
_OWu(
SYSLOG_PID=147450
_PID=147450
_SOURCE_REALTIME_TIMESTAMP=1733334301368594
OWu(
_SOURCE_REALTIME_TIMESTAMP=1733334301370304
OWu(
PRIORITY=2
SYSLOG_TIMESTAMP=Dec  4 21:53:52 
MESSAGE=Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
SYSLOG_RAW=<26>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
_SOURCE_REALTIME_TIMESTAMP=1733334832473529
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 59 to 58
SYSLOG_RAW=<30>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 59 to 58
_SOURCE_REALTIME_TIMESTAMP=1733334832473579
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 41 to 42
SYSLOG_RAW=<30>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 41 to 42
jxu1
_SOURCE_REALTIME_TIMESTAMP=1733334832473617
4=;S
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 195 Hardware_ECC_Recovered changed from 4 to 3
"=0!"
SYSLOG_RAW=<30>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 195 Hardware_ECC_Recovered changed from 4 to 3
%Oa}
_SOURCE_REALTIME_TIMESTAMP=1733334832473653
H_(s
MESSAGE=Device: /dev/sda [SAT], ATA error count increased from 9627 to 9633
SYSLOG_RAW=<26>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], ATA error count increased from 9627 to 9633
_SOURCE_REALTIME_TIMESTAMP=1733334832606442
`r2A,
MESSAGE=<info>  [1733334845.5994] dhcp4 (enp4s0): state changed new lease, address=192.168.0.104
NM_LOG_DOMAINS=DHCP4
CODE_FILE=src/core/dhcp/nm-dhcp-client.c
CODE_LINE=837
TIMESTAMP_MONOTONIC=3610.434504
TIMESTAMP_BOOTTIME=3653.434504
NM_DEVICE=enp4s0
_SOURCE_REALTIME_TIMESTAMP=1733334845599470
SYSLOG_TIMESTAMP=Dec  4 21:54:05 
_SOURCE_REALTIME_TIMESTAMP=1733334845600057
JOB_ID=3976
INVOCATION_ID=dea69bb791324061aec28cc172642393
_SOURCE_REALTIME_TIMESTAMP=1733334845617153
_SOURCE_REALTIME_TIMESTAMP=1733334845621271
_SOURCE_REALTIME_TIMESTAMP=1733334845621358
_SOURCE_REALTIME_TIMESTAMP=1733334855646081
Xxu(
SYSLOG_PID=175156
SYSLOG_TIMESTAMP=Dec  4 21:55:01 
_PID=175156
_AUDIT_SESSION=13
_SOURCE_REALTIME_TIMESTAMP=1733334901373944
SYSLOG_PID=175157
_PID=175157
_SOURCE_REALTIME_TIMESTAMP=1733334901374484
_SOURCE_REALTIME_TIMESTAMP=1733334901376414
SYSLOG_PID=202914
SYSLOG_TIMESTAMP=Dec  4 22:05:01 
_PID=202914
{[">
_AUDIT_SESSION=14
_SOURCE_REALTIME_TIMESTAMP=1733335501379737
SYSLOG_PID=202915
_PID=202915
_SOURCE_REALTIME_TIMESTAMP=1733335501380142
_SOURCE_REALTIME_TIMESTAMP=1733335501381931
SYSLOG_TIMESTAMP=Dec  4 22:10:38 
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/ldac
_SOURCE_REALTIME_TIMESTAMP=1733335838524149
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733335838524435
VgWd
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733335838524641
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733335838524833
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733335838525022
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733335838525197
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/sbc
_SOURCE_REALTIME_TIMESTAMP=1733335838525393
7h*x
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733335838525575
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733335838525745
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733335838525917
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733335838526097
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733335838526269
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733335838526447
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/faststream
_SOURCE_REALTIME_TIMESTAMP=1733335838526626
$([J
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/faststream_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335838526800
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733335838526980
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733335838527155
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/opus_05_duplex
I]_(
_SOURCE_REALTIME_TIMESTAMP=1733335838527333
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335838527501
SYSLOG_TIMESTAMP=Dec  4 22:11:44 
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/ldac
_SOURCE_REALTIME_TIMESTAMP=1733335904469809
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733335904469895
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733335904469973
HQCeO
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733335904470046
Bf((j
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733335904470117
=glNe
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733335904470204
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/sbc
_SOURCE_REALTIME_TIMESTAMP=1733335904470279
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733335904470344
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733335904470414
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733335904470482
7&2:S
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733335904470554
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733335904470623
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733335904470692
:>c4$!u
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/faststream
_SOURCE_REALTIME_TIMESTAMP=1733335904470761
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/faststream_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335904470830
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733335904470899
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733335904470977
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335904471050
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335904471120
SYSLOG_PID=230917
SYSLOG_TIMESTAMP=Dec  4 22:15:01 
_PID=230917
_AUDIT_SESSION=15
_SOURCE_REALTIME_TIMESTAMP=1733336101385489
SYSLOG_PID=230918
_PID=230918
_SOURCE_REALTIME_TIMESTAMP=1733336101385863
_SOURCE_REALTIME_TIMESTAMP=1733336101387842
Wrb,
_SOURCE_REALTIME_TIMESTAMP=1733336158736104
SYSLOG_PID=236563
SYSLOG_TIMESTAMP=Dec  4 22:17:01 
_PID=236563
_AUDIT_SESSION=16
_SOURCE_REALTIME_TIMESTAMP=1733336221390869
SYSLOG_PID=236564
_PID=236564
_SOURCE_REALTIME_TIMESTAMP=1733336221391242
_SOURCE_REALTIME_TIMESTAMP=1733336221393179
SYSLOG_TIMESTAMP=Dec  4 22:23:52 
SYSLOG_RAW=<26>Dec  4 22:23:52 smartd[1836]: Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
_SOURCE_REALTIME_TIMESTAMP=1733336632749322
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 58 to 59
SYSLOG_RAW=<30>Dec  4 22:23:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 58 to 59
_SOURCE_REALTIME_TIMESTAMP=1733336632749379
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 42 to 41
SYSLOG_RAW=<30>Dec  4 22:23:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 42 to 41
_SOURCE_REALTIME_TIMESTAMP=1733336632749419
JOB_ID=4072
INVOCATION_ID=2136253d38ea4b4cab7b07a7ffb38150
_SOURCE_REALTIME_TIMESTAMP=1733336633066182
JOB_ID=4167
INVOCATION_ID=527d5e57d4d14993b47872a9d2221e5e
_SOURCE_REALTIME_TIMESTAMP=1733336633068894
_SOURCE_REALTIME_TIMESTAMP=1733336633152976
H4tb
_SOURCE_REALTIME_TIMESTAMP=1733336633153178
_SOURCE_REALTIME_TIMESTAMP=1733336633773096
_SOURCE_REALTIME_TIMESTAMP=1733336633773319
SYSLOG_TIMESTAMP=Dec  4 22:23:54 
)]0Y
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.PackageKit' unit='packagekit.service' requested by ':1.215' (uid=0 pid=256755 comm="/usr/bin/gdbus call --system --dest org.freedeskto" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733336634632027
HYH6
rnjy
JOB_ID=4262
INVOCATION_ID=c68483a1212d4b1696d46ee76f737ee7
_SOURCE_REALTIME_TIMESTAMP=1733336634655190
_PID=256759
_SYSTEMD_INVOCATION_ID=c68483a1212d4b1696d46ee76f737ee7
_SOURCE_REALTIME_TIMESTAMP=1733336634658327
_SOURCE_REALTIME_TIMESTAMP=1733336634671699
_SOURCE_REALTIME_TIMESTAMP=1733336634671809
u~w.z
_SOURCE_REALTIME_TIMESTAMP=1733336636770574
_SOURCE_REALTIME_TIMESTAMP=1733336636772520
SYSLOG_TIMESTAMP=Dec  4 22:23:56 
MESSAGE=get-updates transaction /3416_edbcddbd from uid 1000 finished with success after 1781ms
_SOURCE_REALTIME_TIMESTAMP=1733336636773624
_SOURCE_REALTIME_TIMESTAMP=1733336639171829
_SOURCE_REALTIME_TIMESTAMP=1733336639173233
SYSLOG_TIMESTAMP=Dec  4 22:23:59 
MESSAGE=get-updates transaction /3417_bacddcbe from uid 1000 finished with success after 1689ms
_SOURCE_REALTIME_TIMESTAMP=1733336639174269
SYSLOG_IDENTIFIER=adduser
SYSLOG_PID=258958
SYSLOG_TIMESTAMP=Dec  4 22:24:24 
MESSAGE=The home dir /run/sshd you specified can't be accessed: No such file or directory
SYSLOG_RAW=<14>Dec  4 22:24:24 adduser[258958]: The home dir /run/sshd you specified can't be accessed: No such file or directory
_PID=258958
_COMM=adduser
_EXE=/usr/bin/perl
_CMDLINE=adduser
_SYSTEMD_CGROUP=/user.slice/user-1000.slice/user@1000.service/app.slice/app-konsole-466a5e6cabb04878a12d0b83094a5a54.scope
_SYSTEMD_USER_UNIT=app-konsole-466a5e6cabb04878a12d0b83094a5a54.scope
_SYSTEMD_INVOCATION_ID=42b2f9d9467d476abf5e3454b2e9df50
_SOURCE_REALTIME_TIMESTAMP=1733336664120011
MESSAGE=Selecting UID from range 100 to 999 ...
SYSLOG_RAW=<14>Dec  4 22:24:24 adduser[258958]: Selecting UID from range 100 to 999 ...
_SOURCE_REALTIME_TIMESTAMP=1733336664123513
/v'F
MESSAGE=Adding system user `sshd' (UID 124) ...
_SOURCE_REALTIME_TIMESTAMP=1733336664125799
@l;-
MESSAGE=Adding new user `sshd' (UID 124) with group `nogroup' ...
_SOURCE_REALTIME_TIMESTAMP=1733336664127612
SYSLOG_IDENTIFIER=useradd
SYSLOG_PID=258963
MESSAGE=new user: name=sshd, UID=124, GID=65534, home=/run/sshd, shell=/usr/sbin/nologin, from=none
_PID=258963
_COMM=useradd
_EXE=/usr/sbin/useradd
<pAN.
_CMDLINE=/usr/sbin/useradd -r -K SYS_UID_MIN 100 -K SYS_UID_MAX 999 -d /run/sshd -g nogroup -s /usr/sbin/nologin -u 124 sshd
_SOURCE_REALTIME_TIMESTAMP=1733336664707130
MESSAGE=Not creating home directory `/run/sshd'.
_SOURCE_REALTIME_TIMESTAMP=1733336664864103
MESSAGE=Reloading requested from client PID 258977 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336664877766
_SOURCE_REALTIME_TIMESTAMP=1733336664877776
_SOURCE_REALTIME_TIMESTAMP=1733336664975136
s1nQ"
MESSAGE=Reloading finished in 265 ms.
_SOURCE_REALTIME_TIMESTAMP=1733336665143269
JOB_ID=4363
INVOCATION_ID=040248e4425e4eef96f4d47ad2ea8f97
_SOURCE_REALTIME_TIMESTAMP=1733336665208108
_SOURCE_REALTIME_TIMESTAMP=1733336665239720
a~8F
_SOURCE_REALTIME_TIMESTAMP=1733336665239914
MESSAGE=Reloading requested from client PID 259085 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336665388193
_SOURCE_REALTIME_TIMESTAMP=1733336665388204
_SOURCE_REALTIME_TIMESTAMP=1733336665480719
MESSAGE=Reloading finished in 256 ms.
_SOURCE_REALTIME_TIMESTAMP=1733336665644660
MESSAGE=Listening on ssh.socket - OpenBSD Secure Shell server socket.
JOB_ID=4464
INVOCATION_ID=fc8b46c47d6940e5906fb1ec6596d1d3
UNIT=ssh.socket
_SOURCE_REALTIME_TIMESTAMP=1733336665770595
_SOURCE_REALTIME_TIMESTAMP=1733336676764705
_SOURCE_REALTIME_TIMESTAMP=1733336676766161
SYSLOG_TIMESTAMP=Dec  4 22:24:36 
MESSAGE=get-updates transaction /3418_cbebeedd from uid 1000 finished with success after 351ms
_SOURCE_REALTIME_TIMESTAMP=1733336676767255
MESSAGE=Reloading requested from client PID 259283 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336678308832
_SOURCE_REALTIME_TIMESTAMP=1733336678308842
_SOURCE_REALTIME_TIMESTAMP=1733336678401723
Hm97
MESSAGE=Reloading finished in 257 ms.
_SOURCE_REALTIME_TIMESTAMP=1733336678566407
73+P
MESSAGE=Reloading requested from client PID 259372 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336678607209
m8bG
_SOURCE_REALTIME_TIMESTAMP=1733336678607217
_SOURCE_REALTIME_TIMESTAMP=1733336678693068
_SOURCE_REALTIME_TIMESTAMP=1733336678859984
MESSAGE=Reloading requested from client PID 259279 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336678913077
_SOURCE_REALTIME_TIMESTAMP=1733336678913086
I"	G
_SOURCE_REALTIME_TIMESTAMP=1733336679002856
MESSAGE=Reloading finished in 261 ms.
_SOURCE_REALTIME_TIMESTAMP=1733336679174708
MESSAGE=Starting ssh.service - OpenBSD Secure Shell server...
JOB_ID=4559
INVOCATION_ID=df43183ae48442cabeb42214b032f6aa
UNIT=ssh.service
_SOURCE_REALTIME_TIMESTAMP=1733336682831164
SYSLOG_IDENTIFIER=sshd
SYSLOG_PID=260446
SYSLOG_TIMESTAMP=Dec  4 22:24:42 
u/^7T
MESSAGE=Server listening on :: port 22.
_PID=260446
_COMM=sshd
_EXE=/usr/sbin/sshd
_CMDLINE="sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"
_SYSTEMD_CGROUP=/system.slice/ssh.service
_SYSTEMD_UNIT=ssh.service
_SYSTEMD_INVOCATION_ID=df43183ae48442cabeb42214b032f6aa
_SOURCE_REALTIME_TIMESTAMP=1733336682846889
^(EG
MESSAGE=Started ssh.service - OpenBSD Secure Shell server.
_SOURCE_REALTIME_TIMESTAMP=1733336682846966
I)EG
2,(S
SYSLOG_PID=260468
SYSLOG_TIMESTAMP=Dec  4 22:25:01 
_PID=260468
_AUDIT_SESSION=17
_SOURCE_REALTIME_TIMESTAMP=1733336701396622
p4`H
SYSLOG_PID=260469
_PID=260469
_SOURCE_REALTIME_TIMESTAMP=1733336701397027
_SOURCE_REALTIME_TIMESTAMP=1733336701398743
SYSLOG_TIMESTAMP=Dec  4 22:29:40 
_SOURCE_REALTIME_TIMESTAMP=1733336980170116
_SOURCE_REALTIME_TIMESTAMP=1733336980175156
CPU_USAGE_NSEC=2565860000
MEMORY_PEAK=207220736
MESSAGE=packagekit.service: Consumed 2.565s CPU time, 197.6M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733336980175383
SYSLOG_PID=274907
SYSLOG_TIMESTAMP=Dec  4 22:30:01 
_PID=274907
_AUDIT_SESSION=18
_SOURCE_REALTIME_TIMESTAMP=1733337001401704
SYSLOG_PID=274910
_PID=274910
_SOURCE_REALTIME_TIMESTAMP=1733337001402102
_SOURCE_REALTIME_TIMESTAMP=1733337001403396
SYSLOG_TIMESTAMP=Dec  4 22:31:32 
MESSAGE=Registered Authentication Agent for unix-process:279550:589991 (system bus name :1.221 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733337092086039
_SOURCE_REALTIME_TIMESTAMP=1733337092092935
H<\g
SYSLOG_TIMESTAMP=Dec  4 22:31:34 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.222 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733337094608312
JOB_ID=4655
_SOURCE_REALTIME_TIMESTAMP=1733337094608971
_SOURCE_REALTIME_TIMESTAMP=1733337094815146
_SOURCE_REALTIME_TIMESTAMP=1733337094815380
CPU_USAGE_NSEC=2971027000
MEMORY_PEAK=19800064
MESSAGE=redis-server.service: Consumed 2.971s CPU time, 18.8M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733337094815569
MESSAGE=Unregistered Authentication Agent for unix-process:279550:589991 (system bus name :1.221, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733337094818177
SYSLOG_PID=288904
SYSLOG_TIMESTAMP=Dec  4 22:35:01 
_PID=288904
_AUDIT_SESSION=19
_SOURCE_REALTIME_TIMESTAMP=1733337301406844
Hn1Qa.
SYSLOG_PID=288907
_PID=288907
_SOURCE_REALTIME_TIMESTAMP=1733337301407283
Hs/9
_SOURCE_REALTIME_TIMESTAMP=1733337301409625
SYSLOG_PID=316867
SYSLOG_TIMESTAMP=Dec  4 22:45:01 
_PID=316867
_AUDIT_SESSION=20
_SOURCE_REALTIME_TIMESTAMP=1733337901413253
SYSLOG_PID=316868
_PID=316868
_SOURCE_REALTIME_TIMESTAMP=1733337901413692
_SOURCE_REALTIME_TIMESTAMP=1733337901415581
H~d~
_SOURCE_MONOTONIC_TIMESTAMP=7209533845
MESSAGE=audit: type=1400 audit(1733338401.542:243): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=340103 comm="snap-confine" capability=12  capname="net_admin"
_SOURCE_MONOTONIC_TIMESTAMP=7209533859
MESSAGE=audit: type=1400 audit(1733338401.542:244): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=340103 comm="snap-confine" capability=38  capname="perfmon"
SYSLOG_TIMESTAMP=Dec  4 22:53:52 
SYSLOG_RAW=<26>Dec  4 22:53:52 smartd[1836]: Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
_SOURCE_REALTIME_TIMESTAMP=1733338432987049
SYSLOG_RAW=<30>Dec  4 22:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 59 to 58
_SOURCE_REALTIME_TIMESTAMP=1733338432987098
SYSLOG_RAW=<30>Dec  4 22:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 41 to 42
_SOURCE_REALTIME_TIMESTAMP=1733338432987135
MESSAGE=<info>  [1733338445.5506] dhcp4 (enp4s0): state changed new lease, address=192.168.0.104
TIMESTAMP_MONOTONIC=7210.385692
TIMESTAMP_BOOTTIME=7253.385692
_SOURCE_REALTIME_TIMESTAMP=1733338445550662
RNv(
SYSLOG_TIMESTAMP=Dec  4 22:54:05 
_SOURCE_REALTIME_TIMESTAMP=1733338445551544
RNv(
JOB_ID=4656
INVOCATION_ID=770ba025a05b4ff6bc09e88fb5dfd2c0
_SOURCE_REALTIME_TIMESTAMP=1733338445572173
RNv(
_BI5O
_SOURCE_REALTIME_TIMESTAMP=1733338445576640
RNv(
_SOURCE_REALTIME_TIMESTAMP=1733338445576730
RNv(
_SOURCE_REALTIME_TIMESTAMP=1733338455599072
SYSLOG_PID=344864
}@Is
SYSLOG_TIMESTAMP=Dec  4 22:55:01 
kA[B
_PID=344864
_AUDIT_SESSION=21
_SOURCE_REALTIME_TIMESTAMP=1733338501419384
SYSLOG_PID=344865
_PID=344865
_SOURCE_REALTIME_TIMESTAMP=1733338501419875
_SOURCE_REALTIME_TIMESTAMP=1733338501422494
_SOURCE_REALTIME_TIMESTAMP=1733338569650088
SYSLOG_PID=372311
^x~3
SYSLOG_TIMESTAMP=Dec  4 23:05:01 
_PID=372311
_AUDIT_SESSION=22
_SOURCE_REALTIME_TIMESTAMP=1733339101425981
Lqjuv(
SYSLOG_PID=372312
_PID=372312
_SOURCE_REALTIME_TIMESTAMP=1733339101426378
kuv(
_SOURCE_REALTIME_TIMESTAMP=1733339101428221
kuv(
SYSLOG_TIMESTAMP=Dec  4 23:08:04 
MESSAGE=Registered Authentication Agent for unix-process:381535:809212 (system bus name :1.229 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733339284298252
_SOURCE_REALTIME_TIMESTAMP=1733339284305560
SYSLOG_TIMESTAMP=Dec  4 23:08:06 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.230 [systemctl start sshd] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733339286396289
MESSAGE=Unregistered Authentication Agent for unix-process:unknown (system bus name :1.229, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733339286400306
5S+;@	
JOB_ID=4848
INVOCATION_ID=3d732de458be49aabaafd45bf6736add
_SOURCE_REALTIME_TIMESTAMP=1733339530191185
JOB_ID=4943
INVOCATION_ID=ecb56d804ac34e85826fdd2a89a7950f
_SOURCE_REALTIME_TIMESTAMP=1733339530193559
%l5q
_SOURCE_REALTIME_TIMESTAMP=1733339530277780
_SOURCE_REALTIME_TIMESTAMP=1733339530278003
;88V
SYSLOG_TIMESTAMP=Dec  4 23:12:11 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.PackageKit' unit='packagekit.service' requested by ':1.234' (uid=0 pid=393151 comm="/usr/bin/gdbus call --system --dest org.freedeskto" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733339531018588
JOB_ID=5038
INVOCATION_ID=08de5368c2514fd8affd311e590f46de
_SOURCE_REALTIME_TIMESTAMP=1733339531034254
_PID=393155
_SYSTEMD_INVOCATION_ID=08de5368c2514fd8affd311e590f46de
_SOURCE_REALTIME_TIMESTAMP=1733339531038265
_SOURCE_REALTIME_TIMESTAMP=1733339531051223
_SOURCE_REALTIME_TIMESTAMP=1733339531051353
_SOURCE_REALTIME_TIMESTAMP=1733339531267136
_SOURCE_REALTIME_TIMESTAMP=1733339531267323
_SOURCE_REALTIME_TIMESTAMP=1733339533025231
{LPn%2
_SOURCE_REALTIME_TIMESTAMP=1733339533027126
SYSLOG_TIMESTAMP=Dec  4 23:12:13 
MESSAGE=get-updates transaction /3419_eacceead from uid 1000 finished with success after 1709ms
_SOURCE_REALTIME_TIMESTAMP=1733339533028295
_SOURCE_REALTIME_TIMESTAMP=1733339533844590
_SOURCE_REALTIME_TIMESTAMP=1733339533846069
MESSAGE=get-updates transaction /3420_cdcdbdca from uid 1000 finished with success after 411ms
_SOURCE_REALTIME_TIMESTAMP=1733339533847087
_SOURCE_REALTIME_TIMESTAMP=1733339547113432
koP&
SYSLOG_PID=400571
SYSLOG_TIMESTAMP=Dec  4 23:15:01 
_PID=400571
_AUDIT_SESSION=23
_SOURCE_REALTIME_TIMESTAMP=1733339701432359
SYSLOG_PID=400572
_PID=400572
_SOURCE_REALTIME_TIMESTAMP=1733339701432802
_SOURCE_REALTIME_TIMESTAMP=1733339701434632
SYSLOG_PID=402379
SYSLOG_TIMESTAMP=Dec  4 23:15:42 
MESSAGE=Accepted password for cudok from 192.168.0.104 port 57732 ssh2
_PID=402379
_CMDLINE="sshd: cudok [priv]"
_SOURCE_REALTIME_TIMESTAMP=1733339742994968
MESSAGE=pam_unix(sshd:session): session opened for user cudok(uid=1000) by cudok(uid=0)
_SOURCE_REALTIME_TIMESTAMP=1733339742996387
HaJ2
SESSION_ID=24
LEADER=402379
MESSAGE=New session 24 of user cudok.
_SOURCE_REALTIME_TIMESTAMP=1733339742998592
MESSAGE=Started session-24.scope - Session 24 of User cudok.
JOB_ID=5140
INVOCATION_ID=ddf3454e6cb64cd38b81da0a776ca754
S:AI
UNIT=session-24.scope
_SOURCE_REALTIME_TIMESTAMP=1733339743015083
SYSLOG_PID=406185
SYSLOG_TIMESTAMP=Dec  4 23:17:01 
_PID=406185
_AUDIT_SESSION=25
_SOURCE_REALTIME_TIMESTAMP=1733339821438356
SYSLOG_PID=406186
_PID=406186
_SOURCE_REALTIME_TIMESTAMP=1733339821438739
_SOURCE_REALTIME_TIMESTAMP=1733339821440651
SYSLOG_TIMESTAMP=Dec  4 23:17:16 
_SOURCE_REALTIME_TIMESTAMP=1733339836170025
_SOURCE_REALTIME_TIMESTAMP=1733339836174506
CPU_USAGE_NSEC=1585228000
|O	o
MESSAGE=packagekit.service: Consumed 1.585s CPU time.
_SOURCE_REALTIME_TIMESTAMP=1733339836174754
SYSLOG_TIMESTAMP=Dec  4 23:23:52 
SYSLOG_RAW=<26>Dec  4 23:23:52 smartd[1836]: Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
_SOURCE_REALTIME_TIMESTAMP=1733340232192531
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 58 to 55
SYSLOG_RAW=<30>Dec  4 23:23:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 58 to 55
_SOURCE_REALTIME_TIMESTAMP=1733340232192594
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 42 to 45
SYSLOG_RAW=<30>Dec  4 23:23:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 42 to 45
_SOURCE_REALTIME_TIMESTAMP=1733340232192642
jRP?f
SYSLOG_PID=427800
SYSLOG_TIMESTAMP=Dec  4 23:25:01 
_PID=427800
_AUDIT_SESSION=26
2+$k
_SOURCE_REALTIME_TIMESTAMP=1733340301444207
W,c.
SYSLOG_PID=427801
VoBj
_PID=427801
_SOURCE_REALTIME_TIMESTAMP=1733340301444574
_SOURCE_REALTIME_TIMESTAMP=1733340301446401
SYSLOG_PID=441473
SYSLOG_TIMESTAMP=Dec  4 23:30:01 
_PID=441473
c(m=
_AUDIT_SESSION=27
2OrJ
_SOURCE_REALTIME_TIMESTAMP=1733340601449574
SYSLOG_PID=441474
_PID=441474
_SOURCE_REALTIME_TIMESTAMP=1733340601449957
|U9gG
_SOURCE_REALTIME_TIMESTAMP=1733340601451205
_SOURCE_REALTIME_TIMESTAMP=1733340754768697
H<,N
l
```
```output
:unknown (system bus name :1.229, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733339286400306
5S+;@	
JOB_ID=4848
INVOCATION_ID=3d732de458be49aabaafd45bf6736add
_SOURCE_REALTIME_TIMESTAMP=1733339530191185
JOB_ID=4943
INVOCATION_ID=ecb56d804ac34e85826fdd2a89a7950f
_SOURCE_REALTIME_TIMESTAMP=1733339530193559
%l5q
_SOURCE_REALTIME_TIMESTAMP=1733339530277780
_SOURCE_REALTIME_TIMESTAMP=1733339530278003
;88V
SYSLOG_TIMESTAMP=Dec  4 23:12:11 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.PackageKit' unit='packagekit.service' requested by ':1.234' (uid=0 pid=393151 comm="/usr/bin/gdbus call --system --dest org.freedeskto" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733339531018588
JOB_ID=5038
INVOCATION_ID=08de5368c2514fd8affd311e590f46de
_SOURCE_REALTIME_TIMESTAMP=1733339531034254
_PID=393155
_SYSTEMD_INVOCATION_ID=08de5368c2514fd8affd311e590f46de
_SOURCE_REALTIME_TIMESTAMP=1733339531038265
_SOURCE_REALTIME_TIMESTAMP=1733339531051223
_SOURCE_REALTIME_TIMESTAMP=1733339531051353
_SOURCE_REALTIME_TIMESTAMP=1733339531267136
_SOURCE_REALTIME_TIMESTAMP=1733339531267323
_SOURCE_REALTIME_TIMESTAMP=1733339533025231
{LPn%2
_SOURCE_REALTIME_TIMESTAMP=1733339533027126
SYSLOG_TIMESTAMP=Dec  4 23:12:13 
MESSAGE=get-updates transaction /3419_eacceead from uid 1000 finished with success after 1709ms
_SOURCE_REALTIME_TIMESTAMP=1733339533028295
_SOURCE_REALTIME_TIMESTAMP=1733339533844590
_SOURCE_REALTIME_TIMESTAMP=1733339533846069
MESSAGE=get-updates transaction /3420_cdcdbdca from uid 1000 finished with success after 411ms
_SOURCE_REALTIME_TIMESTAMP=1733339533847087
_SOURCE_REALTIME_TIMESTAMP=1733339547113432
koP&
SYSLOG_PID=400571
SYSLOG_TIMESTAMP=Dec  4 23:15:01 
_PID=400571
_AUDIT_SESSION=23
_SOURCE_REALTIME_TIMESTAMP=1733339701432359
SYSLOG_PID=400572
_PID=400572
_SOURCE_REALTIME_TIMESTAMP=1733339701432802
_SOURCE_REALTIME_TIMESTAMP=1733339701434632
SYSLOG_PID=402379
SYSLOG_TIMESTAMP=Dec  4 23:15:42 
MESSAGE=Accepted password for cudok from 192.168.0.104 port 57732 ssh2
_PID=402379
_CMDLINE="sshd: cudok [priv]"
_SOURCE_REALTIME_TIMESTAMP=1733339742994968
MESSAGE=pam_unix(sshd:session): session opened for user cudok(uid=1000) by cudok(uid=0)
_SOURCE_REALTIME_TIMESTAMP=1733339742996387
HaJ2
SESSION_ID=24
LEADER=402379
MESSAGE=New session 24 of user cudok.
_SOURCE_REALTIME_TIMESTAMP=1733339742998592
MESSAGE=Started session-24.scope - Session 24 of User cudok.
JOB_ID=5140
INVOCATION_ID=ddf3454e6cb64cd38b81da0a776ca754
S:AI
UNIT=session-24.scope
_SOURCE_REALTIME_TIMESTAMP=1733339743015083
SYSLOG_PID=406185
SYSLOG_TIMESTAMP=Dec  4 23:17:01 
_PID=406185
_AUDIT_SESSION=25
_SOURCE_REALTIME_TIMESTAMP=1733339821438356
SYSLOG_PID=406186
_PID=406186
_SOURCE_REALTIME_TIMESTAMP=1733339821438739
_SOURCE_REALTIME_TIMESTAMP=1733339821440651
SYSLOG_TIMESTAMP=Dec  4 23:17:16 
_SOURCE_REALTIME_TIMESTAMP=1733339836170025
_SOURCE_REALTIME_TIMESTAMP=1733339836174506
CPU_USAGE_NSEC=1585228000
|O	o
MESSAGE=packagekit.service: Consumed 1.585s CPU time.
_SOURCE_REALTIME_TIMESTAMP=1733339836174754
SYSLOG_TIMESTAMP=Dec  4 23:23:52 
SYSLOG_RAW=<26>Dec  4 23:23:52 smartd[1836]: Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
_SOURCE_REALTIME_TIMESTAMP=1733340232192531
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 58 to 55
SYSLOG_RAW=<30>Dec  4 23:23:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 58 to 55
_SOURCE_REALTIME_TIMESTAMP=1733340232192594
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 42 to 45
SYSLOG_RAW=<30>Dec  4 23:23:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 42 to 45
_SOURCE_REALTIME_TIMESTAMP=1733340232192642
jRP?f
SYSLOG_PID=427800
SYSLOG_TIMESTAMP=Dec  4 23:25:01 
_PID=427800
_AUDIT_SESSION=26
2+$k
_SOURCE_REALTIME_TIMESTAMP=1733340301444207
W,c.
SYSLOG_PID=427801
VoBj
_PID=427801
_SOURCE_REALTIME_TIMESTAMP=1733340301444574
_SOURCE_REALTIME_TIMESTAMP=1733340301446401
ticationAgent, locale ru_RU.UTF-8)
_PID=1833
_UID=989
_GID=989
_COMM=polkitd
_EXE=/usr/lib/polkit-1/polkitd
_CMDLINE=/usr/lib/polkit-1/polkitd --no-debug
_SYSTEMD_CGROUP=/system.slice/polkit.service
_SYSTEMD_UNIT=polkit.service
_SYSTEMD_INVOCATION_ID=2fa82093854b40dbae2f6238d28528b4
_SOURCE_REALTIME_TIMESTAMP=1733331290579835
HKKf
SYSLOG_TIMESTAMP=Dec  4 20:54:51 
j5"Z
MESSAGE=[system] Activating service name='org.kde.kded.smart' requested by ':1.62' (uid=1000 pid=5255 comm="/usr/bin/kded5" label="unconfined") (using servicehelper)
_SOURCE_REALTIME_TIMESTAMP=1733331291162797
MESSAGE=[system] Successfully activated service 'org.kde.kded.smart'
_SOURCE_REALTIME_TIMESTAMP=1733331291173265
SYSLOG_TIMESTAMP=Dec  4 20:54:53 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.hostname1' unit='dbus-org.freedesktop.hostname1.service' requested by ':1.90' (uid=1000 pid=5544 comm="/usr/bin/ksystemstats" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331293507465
MESSAGE=Starting systemd-hostnamed.service - Hostname Service...
JOB_ID=2380
INVOCATION_ID=48d4860b36e94781a38b849ca789e3b3
_SOURCE_REALTIME_TIMESTAMP=1733331293511417
H"]B
MESSAGE=[system] Successfully activated service 'org.freedesktop.hostname1'
_SOURCE_REALTIME_TIMESTAMP=1733331293565335
MESSAGE=Started systemd-hostnamed.service - Hostname Service.
_SOURCE_REALTIME_TIMESTAMP=1733331293565438
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.PackageKit' unit='packagekit.service' requested by ':1.93' (uid=1000 pid=5509 comm="/usr/lib/x86_64-linux-gnu/libexec/DiscoverNotifier" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331293668650
MESSAGE=Starting packagekit.service - PackageKit Daemon...
JOB_ID=2476
INVOCATION_ID=e13161fe2d4e461a9ae95145c5240ff2
UNIT=packagekit.service
_SOURCE_REALTIME_TIMESTAMP=1733331294093133
SYSLOG_IDENTIFIER=PackageKit
SYSLOG_TIMESTAMP=Dec  4 20:54:54 
MESSAGE=daemon start
_PID=5556
_COMM=packagekitd
_EXE=/usr/libexec/packagekitd
_CMDLINE=/usr/libexec/packagekitd
_SYSTEMD_CGROUP=/system.slice/packagekit.service
_SYSTEMD_UNIT=packagekit.service
_SYSTEMD_INVOCATION_ID=e13161fe2d4e461a9ae95145c5240ff2
_SOURCE_REALTIME_TIMESTAMP=1733331294299725
MESSAGE=<info>  [1733331294.4412] audit: op="statistics" interface="enp4s0" ifindex=2 args="500" pid=5544 uid=1000 result="success"
NM_LOG_DOMAINS=AUDIT
CODE_FUNC=_dbus_set_property_auth_cb
CODE_LINE=8373
TIMESTAMP_MONOTONIC=59.276291
TIMESTAMP_BOOTTIME=102.276291
_SOURCE_REALTIME_TIMESTAMP=1733331294441251
MESSAGE=[system] Successfully activated service 'org.freedesktop.PackageKit'
_SOURCE_REALTIME_TIMESTAMP=1733331294645626
MESSAGE=Started packagekit.service - PackageKit Daemon.
_SOURCE_REALTIME_TIMESTAMP=1733331294645785
GLIB_OLD_LOG_API=1
GLIB_OLD_LOG_API
MESSAGE=pk_package_set_update_severity: assertion 'update_severity == PK_INFO_ENUM_UNKNOWN || update_severity == PK_INFO_ENUM_LOW || update_severity == PK_INFO_ENUM_NORMAL || update_severity == PK_INFO_ENUM_IMPORTANT || update_severity == PK_INFO_ENUM_CRITICAL' failed
GLIB_DOMAIN=PackageKit
_SOURCE_REALTIME_TIMESTAMP=1733331295627561
_SOURCE_REALTIME_TIMESTAMP=1733331295639399
SYSLOG_TIMESTAMP=Dec  4 20:54:55 
MESSAGE=get-updates transaction /3412_beecabde from uid 1000 finished with success after 350ms
_SOURCE_REALTIME_TIMESTAMP=1733331295699200
_SOURCE_MONOTONIC_TIMESTAMP=107881501
,xS^
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x413 SErr 0x40000 action 0x0
_SOURCE_MONOTONIC_TIMESTAMP=107881509
bA)?0
MESSAGE=ata1.00: irq_stat 0x40000008
_SOURCE_MONOTONIC_TIMESTAMP=107881513
MESSAGE=ata1: SError: { CommWake }
_SOURCE_MONOTONIC_TIMESTAMP=107881517
MESSAGE=ata1.00: failed command: READ FPDMA QUEUED
_SOURCE_MONOTONIC_TIMESTAMP=107881520
b'!r
MESSAGE=ata1.00: cmd 60/00:00:a0:2e:ae/01:00:1e:00:00/40 tag 0 ncq dma 131072 in
         res 41/40:00:00:00:00/00:01:00:00:00/00 Emask 0x409 (media error) <F>
_SOURCE_MONOTONIC_TIMESTAMP=107881528
MESSAGE=ata1.00: status: { DRDY ERR }
_SOURCE_MONOTONIC_TIMESTAMP=107881531
MESSAGE=ata1.00: error: { UNC }
L"xO
_SOURCE_MONOTONIC_TIMESTAMP=107893255
MESSAGE=ata1.00: configured for UDMA/133
;>.v
_KERNEL_SUBSYSTEM=scsi
_KERNEL_SUBSYSTEM
_KERNEL_DEVICE=+scsi:0:0:0:0
_KERNEL_DEVICE
_UDEV_SYSNAME=0:0:0:0
_UDEV_SYSNAME
_SOURCE_MONOTONIC_TIMESTAMP=107903447
MESSAGE=sd 0:0:0:0: [sda] tag#0 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
_SOURCE_MONOTONIC_TIMESTAMP=107903453
MESSAGE=sd 0:0:0:0: [sda] tag#0 Sense Key : Medium Error [current] 
_SOURCE_MONOTONIC_TIMESTAMP=107903456
MESSAGE=sd 0:0:0:0: [sda] tag#0 Add. Sense: Unrecovered read error - auto reallocate failed
_SOURCE_MONOTONIC_TIMESTAMP=107903460
%X}0#
MESSAGE=sd 0:0:0:0: [sda] tag#0 CDB: Read(10) 28 00 1e ae 2e a0 00 01 00 00
p e/
_SOURCE_MONOTONIC_TIMESTAMP=107903462
MESSAGE=I/O error, dev sda, sector 514731680 op 0x0:(READ) flags 0x80700 phys_seg 2 prio class 0
_SOURCE_MONOTONIC_TIMESTAMP=107903476
vWorK
MESSAGE=ata1: EH complete
_SOURCE_MONOTONIC_TIMESTAMP=108015048
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x60000004 SErr 0x0 action 0x0
_SOURCE_MONOTONIC_TIMESTAMP=108015058
_SOURCE_MONOTONIC_TIMESTAMP=108015062
_SOURCE_MONOTONIC_TIMESTAMP=108015066
MESSAGE=ata1.00: cmd 60/08:10:a0:2e:ae/00:00:1e:00:00/40 tag 2 ncq dma 4096 in
         res 41/40:08:00:00:00/00:00:00:00:00/00 Emask 0x409 (media error) <F>
_SOURCE_MONOTONIC_TIMESTAMP=108015074
_SOURCE_MONOTONIC_TIMESTAMP=108015077
_SOURCE_MONOTONIC_TIMESTAMP=108027268
_SOURCE_MONOTONIC_TIMESTAMP=108037452
MESSAGE=sd 0:0:0:0: [sda] tag#2 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
_SOURCE_MONOTONIC_TIMESTAMP=108037458
MESSAGE=sd 0:0:0:0: [sda] tag#2 Sense Key : Medium Error [current] 
_SOURCE_MONOTONIC_TIMESTAMP=108037462
MESSAGE=sd 0:0:0:0: [sda] tag#2 Add. Sense: Unrecovered read error - auto reallocate failed
_SOURCE_MONOTONIC_TIMESTAMP=108037465
MESSAGE=sd 0:0:0:0: [sda] tag#2 CDB: Read(10) 28 00 1e ae 2e a0 00 00 08 00
_SOURCE_MONOTONIC_TIMESTAMP=108037468
MESSAGE=I/O error, dev sda, sector 514731680 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
_SOURCE_MONOTONIC_TIMESTAMP=108037487
SYSLOG_IDENTIFIER=CRON
SYSLOG_PID=5666
SYSLOG_TIMESTAMP=Dec  4 20:55:01 
MESSAGE=pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
_PID=5666
_COMM=cron
_EXE=/usr/sbin/cron
w&a,
_CMDLINE=/usr/sbin/CRON -f -P
"i- 
_AUDIT_SESSION=5
_AUDIT_LOGINUID=0
_SYSTEMD_CGROUP=/system.slice/cron.service
_SYSTEMD_UNIT=cron.service
_SYSTEMD_INVOCATION_ID=8843db5f56be471890a57acd433665ce
_SOURCE_REALTIME_TIMESTAMP=1733331301285129
SYSLOG_PID=5667
MESSAGE=(root) CMD (command -v debian-sa1 > /dev/null && debian-sa1 1 1)
_PID=5667
_SOURCE_REALTIME_TIMESTAMP=1733331301285475
MESSAGE=pam_unix(cron:session): session closed for user root
_SOURCE_REALTIME_TIMESTAMP=1733331301311396
'u E
_SOURCE_MONOTONIC_TIMESTAMP=124546002
MESSAGE=audit: type=1400 audit(1733331316.392:229): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=6611 comm="snap-confine" capability=12  capname="net_admin"
_SOURCE_MONOTONIC_TIMESTAMP=124546025
MESSAGE=audit: type=1400 audit(1733331316.392:230): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=6611 comm="snap-confine" capability=38  capname="perfmon"
INVOCATION_ID=824fd9e429524e18877bbd6e110ccac3
MESSAGE=tmp-snap.rootfs_ViqJFL.mount: Deactivated successfully.
UNIT=tmp-snap.rootfs_ViqJFL.mount
_SOURCE_REALTIME_TIMESTAMP=1733331316510539
_SOURCE_MONOTONIC_TIMESTAMP=128739896
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x180 SErr 0x40000 action 0x0
\	}VR
_SOURCE_MONOTONIC_TIMESTAMP=128739904
HB9'
_SOURCE_MONOTONIC_TIMESTAMP=128739907
_SOURCE_MONOTONIC_TIMESTAMP=128739912
P?{^
_SOURCE_MONOTONIC_TIMESTAMP=128739915
MESSAGE=ata1.00: cmd 60/40:38:98:a4:6d/00:00:1e:00:00/40 tag 7 ncq dma 32768 in
         res 41/40:40:00:00:00/00:00:00:00:00/00 Emask 0x409 (media error) <F>
_SOURCE_MONOTONIC_TIMESTAMP=128739923
_SOURCE_MONOTONIC_TIMESTAMP=128739925
_SOURCE_MONOTONIC_TIMESTAMP=128774828
_SOURCE_MONOTONIC_TIMESTAMP=128794198
MESSAGE=sd 0:0:0:0: [sda] tag#7 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
:pp\
_SOURCE_MONOTONIC_TIMESTAMP=128794203
MESSAGE=sd 0:0:0:0: [sda] tag#7 Sense Key : Medium Error [current] 
_SOURCE_MONOTONIC_TIMESTAMP=128794207
MESSAGE=sd 0:0:0:0: [sda] tag#7 Add. Sense: Unrecovered read error - auto reallocate failed
_SOURCE_MONOTONIC_TIMESTAMP=128794211
MESSAGE=sd 0:0:0:0: [sda] tag#7 CDB: Read(10) 28 00 1e 6d a4 98 00 00 40 00
_SOURCE_MONOTONIC_TIMESTAMP=128794213
MESSAGE=I/O error, dev sda, sector 510502040 op 0x0:(READ) flags 0x80700 phys_seg 1 prio class 0
_SOURCE_MONOTONIC_TIMESTAMP=128794226
_SOURCE_MONOTONIC_TIMESTAMP=130333700
MESSAGE=audit: type=1400 audit(1733331322.180:231): apparmor="DENIED" operation="open" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/etc/openal/alsoft.conf" pid=6611 comm="telegram-deskto" requested_mask="r" denied_mask="r" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=131523701
MESSAGE=audit: type=1107 audit(1733331323.370:232): pid=1806 uid=101 auid=4294967295 ses=4294967295 subj=unconfined msg='apparmor="DENIED" operation="dbus_method_call"  bus="system" path="/org/freedesktop/NetworkManager" interface="org.freedesktop.DBus.Properties" member="GetAll" mask="send" name="org.freedesktop.NetworkManager" pid=6611 label="snap.telegram-desktop.telegram-desktop" peer_pid=1978 peer_label="unconfined"
 exe="/usr/bin/dbus-daemon" sauid=101 hostname=? addr=? terminal=?'
_SOURCE_REALTIME_TIMESTAMP=1733331323599296
~f[H
_SOURCE_MONOTONIC_TIMESTAMP=132134786
MESSAGE=audit: type=1400 audit(1733331323.981:233): apparmor="DENIED" operation="ptrace" class="ptrace" profile="snap.telegram-desktop.telegram-desktop" pid=6611 comm="telegram-deskto" requested_mask="read" denied_mask="read" peer="unconfined"
_SOURCE_MONOTONIC_TIMESTAMP=132269940
MESSAGE=audit: type=1400 audit(1733331324.116:234): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:255" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=132270176
MESSAGE=audit: type=1400 audit(1733331324.116:235): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:254" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=132270256
E{O2
MESSAGE=audit: type=1400 audit(1733331324.116:236): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:0" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=132270364
MESSAGE=audit: type=1400 audit(1733331324.117:237): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:0" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
_SOURCE_MONOTONIC_TIMESTAMP=132271771
MESSAGE=audit: type=1107 audit(1733331324.118:238): pid=1806 uid=101 auid=4294967295 ses=4294967295 subj=unconfined msg='apparmor="DENIED" operation="dbus_method_call"  bus="system" path="/org/freedesktop/DBus" interface="org.freedesktop.DBus" member="ListNames" mask="send" name="org.freedesktop.DBus" pid=6611 label="snap.telegram-desktop.telegram-desktop" peer_label="unconfined"
 exe="/usr/bin/dbus-daemon" sauid=101 hostname=? addr=? terminal=?'
+>wt
_SOURCE_MONOTONIC_TIMESTAMP=132329933
MESSAGE=audit: type=1400 audit(1733331324.176:239): apparmor="DENIED" operation="unlink" class="file" profile="snap.telegram-desktop.telegram-desktop" name="/dev/char/195:254" pid=6611 comm="telegram-deskto" requested_mask="d" denied_mask="d" fsuid=1000 ouid=0
CODE_FILE=src/resolve/resolved-dns-server.c
CODE_LINE=585
CODE_FUNC=dns_server_possible_feature_level
MESSAGE=Using degraded feature set UDP instead of UDP+EDNS0 for DNS server 192.168.0.1.
_SOURCE_REALTIME_TIMESTAMP=1733331432674205
SYSLOG_IDENTIFIER=anacron
SYSLOG_PID=1801
SYSLOG_TIMESTAMP=Dec  4 20:58:47 
MESSAGE=Job `cron.daily' started
_PID=1801
_COMM=anacron
_EXE=/usr/sbin/anacron
_CMDLINE=/usr/sbin/anacron -d -q -s
_SYSTEMD_CGROUP=/system.slice/anacron.service
_SYSTEMD_UNIT=anacron.service
_SYSTEMD_INVOCATION_ID=04e3b86d102a4439a4cba3a9f4bbcf82
_SOURCE_REALTIME_TIMESTAMP=1733331527712277
X#gY
SYSLOG_PID=17849
MESSAGE=Updated timestamp for job `cron.daily' to 2024-12-04
_PID=17849
_SOURCE_REALTIME_TIMESTAMP=1733331527823479
H]ba
MESSAGE=Starting update-notifier-download.service - Download data for packages that failed at package install time...
JOB_ID=2672
d3W7
INVOCATION_ID=3c97afce5a494818b4c3c36180dd8706
UNIT=update-notifier-download.service
_SOURCE_REALTIME_TIMESTAMP=1733331527867166
SYSLOG_TIMESTAMP=Dec  4 20:58:48 
ZOm7
MESSAGE=Job `cron.daily' terminated
_SOURCE_REALTIME_TIMESTAMP=1733331528079796
>9Z*
MESSAGE=update-notifier-download.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331528262262
h?K1
MESSAGE=Finished update-notifier-download.service - Download data for packages that failed at package install time.
_SOURCE_REALTIME_TIMESTAMP=1733331528262466
SYSLOG_TIMESTAMP=Dec  4 20:59:08 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.timedate1' unit='dbus-org.freedesktop.timedate1.service' requested by ':1.16' (uid=0 pid=1848 comm="/usr/lib/snapd/snapd" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331548018053
MESSAGE=Starting systemd-timedated.service - Time & Date Service...
JOB_ID=2767
INVOCATION_ID=3ee6088e0cbc4d4ea4843b86d3687394
n_n`
_SOURCE_REALTIME_TIMESTAMP=1733331548038148
MESSAGE=[system] Successfully activated service 'org.freedesktop.timedate1'
_SOURCE_REALTIME_TIMESTAMP=1733331548081526
MESSAGE=Started systemd-timedated.service - Time & Date Service.
_SOURCE_REALTIME_TIMESTAMP=1733331548081635
OZ`G
_STREAM_ID=ff92208476c548f494063f457a415a58
SYSLOG_IDENTIFIER=snapd
MESSAGE=storehelpers.go:1044: cannot refresh: snap has no updates available: "bare", "core18", "core20", "core24", "discord", "docker", "firefox", "firmware-updater", "geforcenow", "gnome-3-28-1804", "gnome-3-38-2004", "gnome-42-2204", "gnome-46-2404", "gtk-common-themes", "intellij-idea-community", "mesa-2404", "obsidian", "port", "redisinsight", "snapd", "speedtest", "spotify", "telegram-desktop", "thunderbird"
_PID=1848
_COMM=snapd
_EXE=/snap/snapd/23258/usr/lib/snapd/snapd
_CMDLINE=/usr/lib/snapd/snapd
_SYSTEMD_CGROUP=/system.slice/snapd.service
_SYSTEMD_UNIT=snapd.service
_SYSTEMD_INVOCATION_ID=819a12bf54ec4316ac4abafc7204cabb
CODE_FILE=src/core/dbus-manager.c
CODE_LINE=1597
CODE_FUNC=log_caller
MESSAGE=Reloading requested from client PID 18951 ('systemctl') (unit snapd.service)...
_SOURCE_REALTIME_TIMESTAMP=1733331555523978
CODE_LINE=1961
CODE_FUNC=invoke_main_loop
E'r}m
MESSAGE=Reloading...
_SOURCE_REALTIME_TIMESTAMP=1733331555523988
CODE_FILE=src/basic/fs-util.c
CODE_LINE=356
CODE_FUNC=stat_warn_permissions
MESSAGE=Configuration file /run/systemd/system/netplan-ovs-cleanup.service is marked world-inaccessible. This has no effect as configuration data is accessible via APIs without restrictions. Proceeding anyway.
_SOURCE_REALTIME_TIMESTAMP=1733331555615287
CODE_LINE=1987
MESSAGE=Reloading finished in 258 ms.
_SOURCE_REALTIME_TIMESTAMP=1733331555782737
CODE_LINE=2745
CODE_FUNC=manager_dispatch_notify_fd
MESSAGE=Cannot find unit for notify message of PID 18951, ignoring.
_SOURCE_REALTIME_TIMESTAMP=1733331555833010
MESSAGE=Mounting snap-core22-1722.mount - Mount unit for core22, revision 1722...
JOB_ID=2863
INVOCATION_ID=042145b71fae491f9ba99c843950a830
UNIT=snap-core22-1722.mount
_SOURCE_REALTIME_TIMESTAMP=1733331555860083
_SOURCE_MONOTONIC_TIMESTAMP=364017838
MESSAGE=loop41: detected capacity change from 0 to 151288
MESSAGE=Mounted snap-core22-1722.mount - Mount unit for core22, revision 1722.
_SOURCE_REALTIME_TIMESTAMP=1733331555871216
TID=535
CODE_FILE=src/udev/net/link-config.c
CODE_LINE=281
CODE_FUNC=link_load_one
SYSLOG_IDENTIFIER=systemd-udevd
MESSAGE=/run/systemd/network/10-netplan-NM-d266210c-d854-44fa-bffe-8725a4464598.link: No valid settings found in the [Match] section, ignoring file. To match all interfaces, add OriginalName=* in the [Match] section.
_PID=535
_COMM=systemd-udevd
_EXE=/usr/bin/udevadm
_CMDLINE=/usr/lib/systemd/systemd-udevd
_CAP_EFFECTIVE=1f7fdffffff
_SYSTEMD_CGROUP=/system.slice/systemd-udevd.service/udev
_SYSTEMD_UNIT=systemd-udevd.service
_SYSTEMD_INVOCATION_ID=3ec6f19f09df47ec88024557cede9113
_SOURCE_REALTIME_TIMESTAMP=1733331564021860
INVOCATION_ID=543df6f297624f1abec0e49b37f2a94d
cfO/
MESSAGE=snap-core22-1690.mount: Deactivated successfully.
UNIT=snap-core22-1690.mount
_SOURCE_REALTIME_TIMESTAMP=1733331564023651
MESSAGE=Cannot find unit for notify message of PID 19982, ignoring.
_SOURCE_REALTIME_TIMESTAMP=1733331564034434
MESSAGE=Reloading requested from client PID 19985 ('systemctl') (unit snapd.service)...
_SOURCE_REALTIME_TIMESTAMP=1733331564053546
HNYQ
_SOURCE_REALTIME_TIMESTAMP=1733331564053554
_SOURCE_REALTIME_TIMESTAMP=1733331564134671
MESSAGE=Reloading finished in 245 ms.
_SOURCE_REALTIME_TIMESTAMP=1733331564299310
MESSAGE=Cannot find unit for notify message of PID 19985, ignoring.
_SOURCE_REALTIME_TIMESTAMP=1733331564341246
MESSAGE=storehelpers.go:1044: cannot refresh snap "core22": snap has no updates available
_SOURCE_REALTIME_TIMESTAMP=1733331578112711
SYSLOG_TIMESTAMP=Dec  4 20:59:54 
MESSAGE=uid 1000 is trying to obtain org.freedesktop.packagekit.system-sources-refresh auth (only_trusted:0)
_SOURCE_REALTIME_TIMESTAMP=1733331594229777
MESSAGE=uid 1000 obtained auth for org.freedesktop.packagekit.system-sources-refresh
_SOURCE_REALTIME_TIMESTAMP=1733331594232313
7c?N
MESSAGE=Starting apt-news.service - Update APT News...
JOB_ID=2872
INVOCATION_ID=c595c190a4f84d5fbc61fc8ee589399a
UNIT=apt-news.service
_SOURCE_REALTIME_TIMESTAMP=1733331594497177
MESSAGE=Starting esm-cache.service - Update the local ESM caches...
JOB_ID=2967
INVOCATION_ID=6c2e3ed12b4d4c8c9c4c766bc9e86753
UNIT=esm-cache.service
_SOURCE_REALTIME_TIMESTAMP=1733331594514799
MESSAGE=apt-news.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331595457251
MESSAGE=Finished apt-news.service - Update APT News.
_SOURCE_REALTIME_TIMESTAMP=1733331595457452
MESSAGE=esm-cache.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331596755807
MESSAGE=Finished esm-cache.service - Update the local ESM caches.
_SOURCE_REALTIME_TIMESTAMP=1733331596756053
SYSLOG_TIMESTAMP=Dec  4 21:00:03 
MESSAGE=refresh-cache transaction /3413_baeaaccb from uid 1000 finished with success after 9276ms
_SOURCE_REALTIME_TIMESTAMP=1733331603510092
_SOURCE_REALTIME_TIMESTAMP=1733331604387377
_SOURCE_REALTIME_TIMESTAMP=1733331604388778
SYSLOG_TIMESTAMP=Dec  4 21:00:04 
MESSAGE=get-updates transaction /3414_baddbcab from uid 1000 finished with success after 876ms
_SOURCE_REALTIME_TIMESTAMP=1733331604389977
_SOURCE_REALTIME_TIMESTAMP=1733331604681121
_SOURCE_REALTIME_TIMESTAMP=1733331604682537
MESSAGE=get-updates transaction /3415_cbeddaae from uid 1000 finished with success after 286ms
_SOURCE_REALTIME_TIMESTAMP=1733331604683662
_SOURCE_MONOTONIC_TIMESTAMP=449691426
MESSAGE=audit: type=1400 audit(1733331641.535:240): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=23620 comm="snap-confine" capability=12  capname="net_admin"
_SOURCE_MONOTONIC_TIMESTAMP=449691449
MESSAGE=audit: type=1400 audit(1733331641.535:241): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=23620 comm="snap-confine" capability=38  capname="perfmon"
|stk
INVOCATION_ID=2fc1a11918944573a6add9a7b7c9527a
MESSAGE=tmp-snap.rootfs_3NCuYh.mount: Deactivated successfully.
UNIT=tmp-snap.rootfs_3NCuYh.mount
_SOURCE_REALTIME_TIMESTAMP=1733331641633916
_SOURCE_MONOTONIC_TIMESTAMP=450485750
MESSAGE=audit: type=1400 audit(1733331642.329:242): apparmor="DENIED" operation="open" class="file" profile="snap.firmware-updater.firmware-notifier" name="/proc/sys/vm/max_map_count" pid=23620 comm="firmware-notifi" requested_mask="r" denied_mask="r" fsuid=1000 ouid=0
SYSLOG_TIMESTAMP=Dec  4 21:00:42 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.fwupd' unit='fwupd.service' requested by ':1.112' (uid=1000 pid=23620 comm="/snap/firmware-updater/147/bin/firmware-notifier" label="snap.firmware-updater.firmware-notifier (enforce)")
_SOURCE_REALTIME_TIMESTAMP=1733331642355151
MESSAGE=Starting fwupd.service - Firmware update daemon...
JOB_ID=3062
INVOCATION_ID=35594fb467334a34b6c2a39628aa1bcf
UNIT=fwupd.service
_SOURCE_REALTIME_TIMESTAMP=1733331642376085
MESSAGE=Mounted /dev/sdb2 at /media/root/ESP on behalf of uid 0
GLIB_DOMAIN=udisks
THREAD_ID=24642
mu=l
THREAD_ID
CODE_FUNC=handle_mount
CODE_FILE=udiskslinuxfilesystem.c:1394
_PID=1856
_COMM=udisksd
_EXE=/usr/libexec/udisks2/udisksd
/Q>Y
_CMDLINE=/usr/libexec/udisks2/udisksd
_SYSTEMD_CGROUP=/system.slice/udisks2.service
_SYSTEMD_UNIT=udisks2.service
_SYSTEMD_INVOCATION_ID=7cd3a193136c44e38fcbce2d84548e60
_SOURCE_REALTIME_TIMESTAMP=1733331643784595
_SOURCE_REALTIME_TIMESTAMP=1733331643788509
MESSAGE=Cleaning up mount point /media/root/ESP (device 8:18 is not mounted)
CODE_FUNC=udisks_state_check_mounted_fs_entry
CODE_FILE=udisksstate.c:771
_SOURCE_REALTIME_TIMESTAMP=1733331643842092
INVOCATION_ID=2f6d71578a8740a08fe3bb0d73935a33
MESSAGE=media-root-ESP.mount: Deactivated successfully.
UNIT=media-root-ESP.mount
_SOURCE_REALTIME_TIMESTAMP=1733331643842318
MESSAGE=Unmounted /dev/sdb2 on behalf of uid 0
CODE_FUNC=handle_unmount
CODE_FILE=udiskslinuxfilesystem.c:1692
_SOURCE_REALTIME_TIMESTAMP=1733331643921500
MESSAGE=Mounted /dev/nvme0n1p1 at /media/root/A0B8-A861 on behalf of uid 0
_SOURCE_REALTIME_TIMESTAMP=1733331643962701
MESSAGE=Cleaning up mount point /media/root/A0B8-A861 (device 259:1 is not mounted)
_SOURCE_REALTIME_TIMESTAMP=1733331643993736
,^SP
MESSAGE=Unmounted /dev/nvme0n1p1 on behalf of uid 0
_SOURCE_REALTIME_TIMESTAMP=1733331644038856
_STREAM_ID=d97fb993acae4a9f87b44889fe97ce23
SYSLOG_IDENTIFIER=fwupd
MESSAGE=17:00:44.089 FuPluginUefiCapsule  skipping device that failed coldplug: ESRT GUID '00000000-0000-0000-0000-000000000000' was not valid
_PID=24635
72lx
_COMM=fwupd
_EXE=/usr/libexec/fwupd/fwupd
_CMDLINE=/usr/libexec/fwupd/fwupd
_CAP_EFFECTIVE=1fffffeffff
_SYSTEMD_CGROUP=/system.slice/fwupd.service
_SYSTEMD_UNIT=fwupd.service
_SYSTEMD_INVOCATION_ID=35594fb467334a34b6c2a39628aa1bcf
INVOCATION_ID=0d51c2a37d52429bb395e9528070b2f5
-Ag*
MESSAGE=media-root-A0B8\x2dA861.mount: Deactivated successfully.
UNIT=media-root-A0B8\x2dA861.mount
_SOURCE_REALTIME_TIMESTAMP=1733331644789641
MESSAGE=17:00:45.051 FuMain               Daemon ready for requests (locale ru_RU.UTF-8)
SYSLOG_TIMESTAMP=Dec  4 21:00:45 
MESSAGE=[system] Successfully activated service 'org.freedesktop.fwupd'
_SOURCE_REALTIME_TIMESTAMP=1733331645053670
MESSAGE=Started fwupd.service - Firmware update daemon.
_SOURCE_REALTIME_TIMESTAMP=1733331645053852
SYSLOG_PID=36077
SYSLOG_TIMESTAMP=Dec  4 21:05:01 
_PID=36077
_AUDIT_SESSION=6
_SOURCE_REALTIME_TIMESTAMP=1733331901315071
SYSLOG_PID=36078
_PID=36078
v16+
_SOURCE_REALTIME_TIMESTAMP=1733331901315438
_SOURCE_REALTIME_TIMESTAMP=1733331901317282
SYSLOG_TIMESTAMP=Dec  4 21:05:10 
MESSAGE=daemon quit
_SOURCE_REALTIME_TIMESTAMP=1733331910170040
MESSAGE=packagekit.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331910175394
Hv&'.eEY
:6	E3 
CPU_USAGE_NSEC=5786735000
MEMORY_PEAK=24297472
MEMORY_PEAK
MEMORY_SWAP_PEAK=0
MEMORY_SWAP_PEAK
MESSAGE=packagekit.service: Consumed 5.786s CPU time, 23.1M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733331910175631
MESSAGE=Starting systemd-tmpfiles-clean.service - Cleanup of Temporary Directories...
JOB_ID=3199
h .e
INVOCATION_ID=2667ebcc860747c492d87e679cade3d9
(	"a/6i
UNIT=systemd-tmpfiles-clean.service
_SOURCE_REALTIME_TIMESTAMP=1733332132880151
MESSAGE=systemd-tmpfiles-clean.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733332132943297
MESSAGE=Finished systemd-tmpfiles-clean.service - Cleanup of Temporary Directories.
_SOURCE_REALTIME_TIMESTAMP=1733332132943523
SYSLOG_PID=63617
SYSLOG_TIMESTAMP=Dec  4 21:15:01 
md]\
_PID=63617
_AUDIT_SESSION=7
_SOURCE_REALTIME_TIMESTAMP=1733332501320541
p8<=
SYSLOG_PID=63618
_PID=63618
_SOURCE_REALTIME_TIMESTAMP=1733332501320888
&84T
_SOURCE_REALTIME_TIMESTAMP=1733332501322597
SYSLOG_PID=69133
SYSLOG_TIMESTAMP=Dec  4 21:17:01 
_PID=69133
_AUDIT_SESSION=8
_SOURCE_REALTIME_TIMESTAMP=1733332621326056
SYSLOG_PID=69134
MESSAGE=(root) CMD (cd / && run-parts --report /etc/cron.hourly)
_PID=69134
_SOURCE_REALTIME_TIMESTAMP=1733332621326444
_SOURCE_REALTIME_TIMESTAMP=1733332621348343
SYSLOG_TIMESTAMP=Dec  4 21:23:07 
MESSAGE=Registered Authentication Agent for unix-process:86416:179534 (system bus name :1.129 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733332987529245
MESSAGE=Identity `unix-group:admin' is not valid, ignoring: No UNIX group with name admin: Success
_SOURCE_REALTIME_TIMESTAMP=1733332987578992
SYSLOG_TIMESTAMP=Dec  4 21:23:10 
MESSAGE=Operator of unix-session:3 FAILED to authenticate to gain authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.130 [systemctl stop systemd] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733332990277915
)	u(
MESSAGE=Unregistered Authentication Agent for unix-process:86416:179534 (system bus name :1.129, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733332990279670
)	u(
$S0S
SYSLOG_IDENTIFIER=smartd
SYSLOG_PID=1836
SYSLOG_TIMESTAMP=Dec  4 21:23:52 
MESSAGE=System clock time adjusted to the past. Resetting next wakeup time.
&)SL-
SYSLOG_RAW=<30>Dec  4 21:23:52 smartd[1836]: System clock time adjusted to the past. Resetting next wakeup time.
_PID=1836
_COMM=smartd
_EXE=/usr/sbin/smartd
_CMDLINE=/usr/sbin/smartd -n
_SYSTEMD_CGROUP=/system.slice/smartmontools.service
_SYSTEMD_UNIT=smartmontools.service
_SYSTEMD_INVOCATION_ID=65f896f182bc4619941acd9cb7185039
_SOURCE_REALTIME_TIMESTAMP=1733333032330248
SYSLOG_TIMESTAMP=Dec  4 21:24:34 
MESSAGE=Registered Authentication Agent for unix-process:90081:188221 (system bus name :1.132 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733333074386602
gl0p
_SOURCE_REALTIME_TIMESTAMP=1733333074393725
SYSLOG_TIMESTAMP=Dec  4 21:24:36 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.133 [systemctl stop systemd] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333076084938
H`O%
MESSAGE=Unregistered Authentication Agent for unix-process:unknown (system bus name :1.132, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
%j.0
_SOURCE_REALTIME_TIMESTAMP=1733333076087565
SYSLOG_PID=91017
z"}v
SYSLOG_TIMESTAMP=Dec  4 21:25:01 
_PID=91017
_AUDIT_SESSION=9
VQ=4
_SOURCE_REALTIME_TIMESTAMP=1733333101351738
SYSLOG_PID=91018
_PID=91018
_SOURCE_REALTIME_TIMESTAMP=1733333101352144
_SOURCE_REALTIME_TIMESTAMP=1733333101354075
CODE_LINE=448
MESSAGE=Grace period over, resuming full feature set (UDP+EDNS0) for DNS server 192.168.0.1.
_SOURCE_REALTIME_TIMESTAMP=1733333190457396
)NO:
SYSLOG_TIMESTAMP=Dec  4 21:27:34 
_SOURCE_REALTIME_TIMESTAMP=1733333254896995
05w	X
SYSLOG_TIMESTAMP=Dec  4 21:27:37 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.139 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333257379774
MESSAGE=Stopping redis-server.service - Advanced key-value store...
JOB_ID=3206
INVOCATION_ID=625e22086efc424783169e7653170ece
UNIT=redis-server.service
_SOURCE_REALTIME_TIMESTAMP=1733333257380462
MESSAGE=redis-server.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733333257664987
MESSAGE=Stopped redis-server.service - Advanced key-value store.
_SOURCE_REALTIME_TIMESTAMP=1733333257665203
CPU_USAGE_NSEC=1626506000
MEMORY_PEAK=30429184
MESSAGE=redis-server.service: Consumed 1.626s CPU time, 29.0M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733333257665356
SYSLOG_TIMESTAMP=Dec  4 21:28:14 
MESSAGE=Registered Authentication Agent for unix-process:100101:210281 (system bus name :1.142 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733333294990633
_SOURCE_REALTIME_TIMESTAMP=1733333294997143
SYSLOG_TIMESTAMP=Dec  4 21:28:17 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.143 [systemctl start redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333297911180
MESSAGE=Starting redis-server.service - Advanced key-value store...
JOB_ID=3207
INVOCATION_ID=de1e5192449144da97a26f4ea46becaf
_SOURCE_REALTIME_TIMESTAMP=1733333297929220
MESSAGE=Started redis-server.service - Advanced key-value store.
_SOURCE_REALTIME_TIMESTAMP=1733333298021779
SYSLOG_TIMESTAMP=Dec  4 21:28:18 
MESSAGE=Unregistered Authentication Agent for unix-process:100101:210281 (system bus name :1.142, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733333298023429
SYSLOG_TIMESTAMP=Dec  4 21:28:41 
_SOURCE_REALTIME_TIMESTAMP=1733333321780092
SYSLOG_TIMESTAMP=Dec  4 21:28:49 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.146 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333329945677
JOB_ID=3397
_SOURCE_REALTIME_TIMESTAMP=1733333329946316
_SOURCE_REALTIME_TIMESTAMP=1733333330145319
_SOURCE_REALTIME_TIMESTAMP=1733333330145544
JOB_ID=3398
INVOCATION_ID=354dc30a0e334cc6a851da1faaec884b
_SOURCE_REALTIME_TIMESTAMP=1733333362274162
_A\a27
_SOURCE_REALTIME_TIMESTAMP=1733333362365237
xw;B
SYSLOG_TIMESTAMP=Dec  4 21:29:38 
_SOURCE_REALTIME_TIMESTAMP=1733333378315149
J u(
SYSLOG_TIMESTAMP=Dec  4 21:29:41 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.149 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333381841200
r>T#"
JOB_ID=3493
_SOURCE_REALTIME_TIMESTAMP=1733333381841929
_SOURCE_REALTIME_TIMESTAMP=1733333382071915
_SOURCE_REALTIME_TIMESTAMP=1733333382072142
SYSLOG_PID=104754
p9rW
SYSLOG_TIMESTAMP=Dec  4 21:30:01 
_PID=104754
_AUDIT_SESSION=10
_SOURCE_REALTIME_TIMESTAMP=1733333401357313
SYSLOG_PID=104755
MESSAGE=(root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi)
_PID=104755
_SOURCE_REALTIME_TIMESTAMP=1733333401357774
_SOURCE_REALTIME_TIMESTAMP=1733333401358970
SYSLOG_TIMESTAMP=Dec  4 21:31:00 
_SOURCE_REALTIME_TIMESTAMP=1733333460242648
,%u(
SYSLOG_TIMESTAMP=Dec  4 21:31:04 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.152 [systemctl restart redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333464006653
@f%u(
JOB_ID=3494
INVOCATION_ID=422d54ad4ae24d35a41b36a15e7b1f65
_SOURCE_REALTIME_TIMESTAMP=1733333464020261
8uf%u(
_SOURCE_REALTIME_TIMESTAMP=1733333464111175
g%u(
HX&9
SYSLOG_TIMESTAMP=Dec  4 21:32:48 
_SOURCE_REALTIME_TIMESTAMP=1733333568067692
SYSLOG_TIMESTAMP=Dec  4 21:32:52 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.reload-daemon for system-bus-name::1.155 [systemctl daemon-reload] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333572529146
MESSAGE=Reloading requested from client PID 112972 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333572529509
_SOURCE_REALTIME_TIMESTAMP=1733333572529522
_SOURCE_REALTIME_TIMESTAMP=1733333572618894
MESSAGE=Reloading finished in 260 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333572790509
SYSLOG_TIMESTAMP=Dec  4 21:33:05 
MESSAGE=Registered Authentication Agent for unix-process:113992:239326 (system bus name :1.157 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733333585434177
_SOURCE_REALTIME_TIMESTAMP=1733333585440547
SYSLOG_TIMESTAMP=Dec  4 21:33:07 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.reload-daemon for system-bus-name::1.158 [systemctl daemon-reload] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333587589867
nZ`m&
MESSAGE=Reloading requested from client PID 113992 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333587590246
%xMRn
_SOURCE_REALTIME_TIMESTAMP=1733333587590257
_SOURCE_REALTIME_TIMESTAMP=1733333587689901
MESSAGE=Reloading finished in 266 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333587857249
MESSAGE=Unregistered Authentication Agent for unix-process:113992:239326 (system bus name :1.157, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733333587896532
Jgps
MESSAGE=Starting fwupd-refresh.service - Refresh fwupd metadata and update motd...
JOB_ID=3589
INVOCATION_ID=db7a9c68aa0e46af98cb864b90e5901d
UNIT=fwupd-refresh.service
_SOURCE_REALTIME_TIMESTAMP=1733333587918356
MESSAGE=fwupd-refresh.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733333587975738
MESSAGE=Finished fwupd-refresh.service - Refresh fwupd metadata and update motd.
_SOURCE_REALTIME_TIMESTAMP=1733333587975941
SYSLOG_PID=118633
SYSLOG_TIMESTAMP=Dec  4 21:35:01 
/oAuz
_PID=118633
_AUDIT_SESSION=11
_SOURCE_REALTIME_TIMESTAMP=1733333701361892
SYSLOG_PID=118634
qcc1
_PID=118634
_SOURCE_REALTIME_TIMESTAMP=1733333701362300
_SOURCE_REALTIME_TIMESTAMP=1733333701364022
)cR'
SYSLOG_TIMESTAMP=Dec  4 21:35:12 
_SOURCE_REALTIME_TIMESTAMP=1733333712103555
/4u(
)-t2:Z
SYSLOG_TIMESTAMP=Dec  4 21:35:15 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.reload-daemon for system-bus-name::1.161 [systemctl daemon-reload] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733333715518751
d4u(
MESSAGE=Reloading requested from client PID 119537 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333715519214
d4u(
M@x?7
_SOURCE_REALTIME_TIMESTAMP=1733333715519228
d4u(
_SOURCE_REALTIME_TIMESTAMP=1733333715617235
e4u(
MESSAGE=Reloading finished in 262 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333715782583
h4u(
MESSAGE=Starting plocate-updatedb.service - Update the plocate database...
JOB_ID=3690
INVOCATION_ID=630b5c542540444691c887ca4784fe88
UNIT=plocate-updatedb.service
_SOURCE_REALTIME_TIMESTAMP=1733333715842178
h4u(
MESSAGE=Reloading requested from client PID 120551 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333726370636
	5u(
_SOURCE_REALTIME_TIMESTAMP=1733333726370646
	5u(
_SOURCE_REALTIME_TIMESTAMP=1733333726457188
MESSAGE=Reloading finished in 250 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333726621021
MESSAGE=Reloading requested from client PID 120640 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333726669598
_SOURCE_REALTIME_TIMESTAMP=1733333726669607
_SOURCE_REALTIME_TIMESTAMP=1733333726751749
H!Fy
MESSAGE=Reloading finished in 244 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333726914806
y<Ke
MESSAGE=Reloading requested from client PID 120547 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333726972931
Hib"m
_SOURCE_REALTIME_TIMESTAMP=1733333726972940
Ns1y
_SOURCE_REALTIME_TIMESTAMP=1733333727061689
MESSAGE=Reloading finished in 253 ms.
o>8N/{c
_SOURCE_REALTIME_TIMESTAMP=1733333727226925
_SOURCE_MONOTONIC_TIMESTAMP=2536731995
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x100000 SErr 0x40000 action 0x0
+5u(
RdJ;m
_SOURCE_MONOTONIC_TIMESTAMP=2536732003
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732005
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732009
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732011
MESSAGE=ata1.00: cmd 60/08:a0:d8:6f:92/00:00:32:00:00/40 tag 20 ncq dma 4096 in
         res 41/40:08:00:00:00/00:00:00:00:00/00 Emask 0x409 (media error) <F>
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732017
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536732020
+5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536743737
,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753934
MESSAGE=sd 0:0:0:0: [sda] tag#20 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
7,5u(
2jVg
_SOURCE_MONOTONIC_TIMESTAMP=2536753942
MESSAGE=sd 0:0:0:0: [sda] tag#20 Sense Key : Medium Error [current] 
8,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753947
MESSAGE=sd 0:0:0:0: [sda] tag#20 Add. Sense: Unrecovered read error - auto reallocate failed
}9,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753952
MESSAGE=sd 0:0:0:0: [sda] tag#20 CDB: Read(10) 28 00 32 92 6f d8 00 00 08 00
:,5u(
Ld@P
_SOURCE_MONOTONIC_TIMESTAMP=2536753955
MESSAGE=I/O error, dev sda, sector 848457688 op 0x0:(READ) flags 0x3000 phys_seg 1 prio class 3
:,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753972
:,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536753976
MESSAGE=EXT4-fs warning (device sda3): htree_dirblock_to_tree:1082: inode #26364247: lblock 96: comm updatedb.plocat: error -5 reading directory block
:,5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840310
)~Bh=
MESSAGE=ata1.00: exception Emask 0x0 SAct 0x2000 SErr 0x0 action 0x0
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840318
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840322
-5u(
Ht({
_SOURCE_MONOTONIC_TIMESTAMP=2536840325
MESSAGE=ata1.00: cmd 60/08:68:d8:6f:92/00:00:32:00:00/40 tag 13 ncq dma 4096 in
         res 41/40:08:00:00:00/00:00:00:00:00/00 Emask 0x409 (media error) <F>
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840344
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536840348
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536852029
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862220
MESSAGE=sd 0:0:0:0: [sda] tag#13 FAILED Result: hostbyte=DID_OK driverbyte=DRIVER_OK cmd_age=0s
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862226
m)k#
MESSAGE=sd 0:0:0:0: [sda] tag#13 Sense Key : Medium Error [current] 
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862229
MESSAGE=sd 0:0:0:0: [sda] tag#13 Add. Sense: Unrecovered read error - auto reallocate failed
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862232
MESSAGE=sd 0:0:0:0: [sda] tag#13 CDB: Read(10) 28 00 32 92 6f d8 00 00 08 00
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862234
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862246
-5u(
_SOURCE_MONOTONIC_TIMESTAMP=2536862248
-5u(
MESSAGE=plocate-updatedb.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733333735736319
MESSAGE=Finished plocate-updatedb.service - Update the plocate database.
_SOURCE_REALTIME_TIMESTAMP=1733333735736554
CPU_USAGE_NSEC=4036439000
MEMORY_PEAK=321769472
7<0h
MESSAGE=plocate-updatedb.service: Consumed 4.036s CPU time, 306.8M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733333735736786
MESSAGE=Reloading requested from client PID 124462 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333818066237
_SOURCE_REALTIME_TIMESTAMP=1733333818066246
_SOURCE_REALTIME_TIMESTAMP=1733333818159709
_SOURCE_REALTIME_TIMESTAMP=1733333818324786
MESSAGE=Reloading requested from client PID 124550 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333818375207
_SOURCE_REALTIME_TIMESTAMP=1733333818375218
Z] C
_SOURCE_REALTIME_TIMESTAMP=1733333818460057
MESSAGE=Reloading finished in 248 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333818624404
MESSAGE=Reloading requested from client PID 124458 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333818680403
YC.Q
_SOURCE_REALTIME_TIMESTAMP=1733333818680412
_SOURCE_REALTIME_TIMESTAMP=1733333818767128
MESSAGE=Reloading finished in 252 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333818933380
MESSAGE=Reloading requested from client PID 125634 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333827331237
_SOURCE_REALTIME_TIMESTAMP=1733333827331246
_SOURCE_REALTIME_TIMESTAMP=1733333827414995
_SOURCE_REALTIME_TIMESTAMP=1733333827582264
MESSAGE=Reloading requested from client PID 125721 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333827634039
Pc	v
_SOURCE_REALTIME_TIMESTAMP=1733333827634049
_SOURCE_REALTIME_TIMESTAMP=1733333827727507
_SOURCE_REALTIME_TIMESTAMP=1733333827900749
MESSAGE=Reloading requested from client PID 125630 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333827954723
NNSb
_SOURCE_REALTIME_TIMESTAMP=1733333827954731
FhRN
_SOURCE_REALTIME_TIMESTAMP=1733333828039588
MESSAGE=Reloading finished in 249 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333828204410
MESSAGE=Reloading requested from client PID 125899 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333831803093
`R;u(
_SOURCE_REALTIME_TIMESTAMP=1733333831803102
saR;u(
_SOURCE_REALTIME_TIMESTAMP=1733333831895157
S;u(
MESSAGE=Reloading finished in 259 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333832062378
UV;u(
MESSAGE=Reloading requested from client PID 125986 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333832107757
W;u(
_SOURCE_REALTIME_TIMESTAMP=1733333832107766
W;u(
_SOURCE_REALTIME_TIMESTAMP=1733333832197544
eX;u(
MESSAGE=Reloading finished in 254 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333832362355
Z;u(
H9TQ
MESSAGE=Reloading requested from client PID 125895 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333832425041
[;u(
_SOURCE_REALTIME_TIMESTAMP=1733333832425055
[;u(
_SOURCE_REALTIME_TIMESTAMP=1733333832510495
-,];u(
_SOURCE_REALTIME_TIMESTAMP=1733333832674236
_;u(
MESSAGE=Reloading requested from client PID 131461 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333962176596
_SOURCE_REALTIME_TIMESTAMP=1733333962176607
_SOURCE_REALTIME_TIMESTAMP=1733333962276134
MESSAGE=Reloading finished in 280 ms.
_SOURCE_REALTIME_TIMESTAMP=1733333962457277
MESSAGE=Reloading requested from client PID 132429 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333962506421
_SOURCE_REALTIME_TIMESTAMP=1733333962506431
_SOURCE_REALTIME_TIMESTAMP=1733333962591776
H.d]
_SOURCE_REALTIME_TIMESTAMP=1733333962761652
 Cu(
MESSAGE=Reloading requested from client PID 131457 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733333962812008
yj!Cu(
_SOURCE_REALTIME_TIMESTAMP=1733333962812019
j!Cu(
_SOURCE_REALTIME_TIMESTAMP=1733333962898793
"Cu(
_SOURCE_REALTIME_TIMESTAMP=1733333963074320
>k%Cu(
MESSAGE=Starting apt-daily.service - Daily apt download activities...
JOB_ID=3785
INVOCATION_ID=de05b3103a364ba2bca49b4668c8dd25
UNIT=apt-daily.service
_SOURCE_REALTIME_TIMESTAMP=1733333963137105
&Cu(
6b0\
MESSAGE=apt-daily.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733333963552108
,Cu(
MESSAGE=Finished apt-daily.service - Daily apt download activities.
[\s0A4H
_SOURCE_REALTIME_TIMESTAMP=1733333963552345
,Cu(
f9ln
SYSLOG_TIMESTAMP=Dec  4 21:42:22 
_SOURCE_REALTIME_TIMESTAMP=1733334142086452
SYSLOG_TIMESTAMP=Dec  4 21:42:25 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.191 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733334145009851
JOB_ID=3880
_SOURCE_REALTIME_TIMESTAMP=1733334145010743
_SOURCE_REALTIME_TIMESTAMP=1733334145194543
_SOURCE_REALTIME_TIMESTAMP=1733334145194766
SYSLOG_TIMESTAMP=Dec  4 21:42:27 
_SOURCE_REALTIME_TIMESTAMP=1733334147893849
)Nu(
SYSLOG_TIMESTAMP=Dec  4 21:42:30 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.194 [systemctl restart redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733334150009757
INu(
JOB_ID=3881
INVOCATION_ID=87b3cf40b45c4c649b00d3e2c64446c2
_SOURCE_REALTIME_TIMESTAMP=1733334150022144
JNu(
_SOURCE_REALTIME_TIMESTAMP=1733334150113556
!iKNu(
SYSLOG_PID=147449
SYSLOG_TIMESTAMP=Dec  4 21:45:01 
_PID=147449
_AUDIT_SESSION=12
_SOURCE_REALTIME_TIMESTAMP=1733334301368216
_OWu(
SYSLOG_PID=147450
_PID=147450
_SOURCE_REALTIME_TIMESTAMP=1733334301368594
OWu(
_SOURCE_REALTIME_TIMESTAMP=1733334301370304
OWu(
PRIORITY=2
SYSLOG_TIMESTAMP=Dec  4 21:53:52 
MESSAGE=Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
SYSLOG_RAW=<26>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
_SOURCE_REALTIME_TIMESTAMP=1733334832473529
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 59 to 58
SYSLOG_RAW=<30>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 59 to 58
_SOURCE_REALTIME_TIMESTAMP=1733334832473579
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 41 to 42
SYSLOG_RAW=<30>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 41 to 42
jxu1
_SOURCE_REALTIME_TIMESTAMP=1733334832473617
4=;S
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 195 Hardware_ECC_Recovered changed from 4 to 3
"=0!"
SYSLOG_RAW=<30>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 195 Hardware_ECC_Recovered changed from 4 to 3
%Oa}
_SOURCE_REALTIME_TIMESTAMP=1733334832473653
H_(s
MESSAGE=Device: /dev/sda [SAT], ATA error count increased from 9627 to 9633
SYSLOG_RAW=<26>Dec  4 21:53:52 smartd[1836]: Device: /dev/sda [SAT], ATA error count increased from 9627 to 9633
_SOURCE_REALTIME_TIMESTAMP=1733334832606442
`r2A,
MESSAGE=<info>  [1733334845.5994] dhcp4 (enp4s0): state changed new lease, address=192.168.0.104
NM_LOG_DOMAINS=DHCP4
CODE_FILE=src/core/dhcp/nm-dhcp-client.c
CODE_LINE=837
TIMESTAMP_MONOTONIC=3610.434504
TIMESTAMP_BOOTTIME=3653.434504
NM_DEVICE=enp4s0
_SOURCE_REALTIME_TIMESTAMP=1733334845599470
SYSLOG_TIMESTAMP=Dec  4 21:54:05 
_SOURCE_REALTIME_TIMESTAMP=1733334845600057
JOB_ID=3976
INVOCATION_ID=dea69bb791324061aec28cc172642393
_SOURCE_REALTIME_TIMESTAMP=1733334845617153
_SOURCE_REALTIME_TIMESTAMP=1733334845621271
_SOURCE_REALTIME_TIMESTAMP=1733334845621358
_SOURCE_REALTIME_TIMESTAMP=1733334855646081
Xxu(
SYSLOG_PID=175156
SYSLOG_TIMESTAMP=Dec  4 21:55:01 
_PID=175156
_AUDIT_SESSION=13
_SOURCE_REALTIME_TIMESTAMP=1733334901373944
SYSLOG_PID=175157
_PID=175157
_SOURCE_REALTIME_TIMESTAMP=1733334901374484
_SOURCE_REALTIME_TIMESTAMP=1733334901376414
SYSLOG_PID=202914
SYSLOG_TIMESTAMP=Dec  4 22:05:01 
_PID=202914
{[">
_AUDIT_SESSION=14
_SOURCE_REALTIME_TIMESTAMP=1733335501379737
SYSLOG_PID=202915
_PID=202915
_SOURCE_REALTIME_TIMESTAMP=1733335501380142
_SOURCE_REALTIME_TIMESTAMP=1733335501381931
SYSLOG_TIMESTAMP=Dec  4 22:10:38 
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/ldac
_SOURCE_REALTIME_TIMESTAMP=1733335838524149
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733335838524435
VgWd
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733335838524641
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733335838524833
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733335838525022
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733335838525197
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/sbc
_SOURCE_REALTIME_TIMESTAMP=1733335838525393
7h*x
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733335838525575
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733335838525745
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733335838525917
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733335838526097
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733335838526269
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733335838526447
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/faststream
_SOURCE_REALTIME_TIMESTAMP=1733335838526626
$([J
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/faststream_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335838526800
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733335838526980
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733335838527155
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSink/opus_05_duplex
I]_(
_SOURCE_REALTIME_TIMESTAMP=1733335838527333
MESSAGE=Endpoint unregistered: sender=:1.53 path=/MediaEndpoint/A2DPSource/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335838527501
SYSLOG_TIMESTAMP=Dec  4 22:11:44 
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/ldac
_SOURCE_REALTIME_TIMESTAMP=1733335904469809
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733335904469895
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733335904469973
HQCeO
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733335904470046
Bf((j
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733335904470117
=glNe
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733335904470204
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/sbc
_SOURCE_REALTIME_TIMESTAMP=1733335904470279
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733335904470344
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733335904470414
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733335904470482
7&2:S
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733335904470554
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733335904470623
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733335904470692
:>c4$!u
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/faststream
_SOURCE_REALTIME_TIMESTAMP=1733335904470761
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/faststream_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335904470830
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733335904470899
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733335904470977
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSink/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335904471050
MESSAGE=Endpoint registered: sender=:1.203 path=/MediaEndpoint/A2DPSource/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733335904471120
SYSLOG_PID=230917
SYSLOG_TIMESTAMP=Dec  4 22:15:01 
_PID=230917
_AUDIT_SESSION=15
_SOURCE_REALTIME_TIMESTAMP=1733336101385489
SYSLOG_PID=230918
_PID=230918
_SOURCE_REALTIME_TIMESTAMP=1733336101385863
_SOURCE_REALTIME_TIMESTAMP=1733336101387842
Wrb,
_SOURCE_REALTIME_TIMESTAMP=1733336158736104
SYSLOG_PID=236563
SYSLOG_TIMESTAMP=Dec  4 22:17:01 
_PID=236563
_AUDIT_SESSION=16
_SOURCE_REALTIME_TIMESTAMP=1733336221390869
SYSLOG_PID=236564
_PID=236564
_SOURCE_REALTIME_TIMESTAMP=1733336221391242
_SOURCE_REALTIME_TIMESTAMP=1733336221393179
SYSLOG_TIMESTAMP=Dec  4 22:23:52 
SYSLOG_RAW=<26>Dec  4 22:23:52 smartd[1836]: Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
_SOURCE_REALTIME_TIMESTAMP=1733336632749322
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 58 to 59
SYSLOG_RAW=<30>Dec  4 22:23:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 58 to 59
_SOURCE_REALTIME_TIMESTAMP=1733336632749379
MESSAGE=Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 42 to 41
SYSLOG_RAW=<30>Dec  4 22:23:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 42 to 41
_SOURCE_REALTIME_TIMESTAMP=1733336632749419
JOB_ID=4072
INVOCATION_ID=2136253d38ea4b4cab7b07a7ffb38150
_SOURCE_REALTIME_TIMESTAMP=1733336633066182
JOB_ID=4167
INVOCATION_ID=527d5e57d4d14993b47872a9d2221e5e
_SOURCE_REALTIME_TIMESTAMP=1733336633068894
_SOURCE_REALTIME_TIMESTAMP=1733336633152976
H4tb
_SOURCE_REALTIME_TIMESTAMP=1733336633153178
_SOURCE_REALTIME_TIMESTAMP=1733336633773096
_SOURCE_REALTIME_TIMESTAMP=1733336633773319
SYSLOG_TIMESTAMP=Dec  4 22:23:54 
)]0Y
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.PackageKit' unit='packagekit.service' requested by ':1.215' (uid=0 pid=256755 comm="/usr/bin/gdbus call --system --dest org.freedeskto" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733336634632027
HYH6
rnjy
JOB_ID=4262
INVOCATION_ID=c68483a1212d4b1696d46ee76f737ee7
_SOURCE_REALTIME_TIMESTAMP=1733336634655190
_PID=256759
_SYSTEMD_INVOCATION_ID=c68483a1212d4b1696d46ee76f737ee7
_SOURCE_REALTIME_TIMESTAMP=1733336634658327
_SOURCE_REALTIME_TIMESTAMP=1733336634671699
_SOURCE_REALTIME_TIMESTAMP=1733336634671809
u~w.z
_SOURCE_REALTIME_TIMESTAMP=1733336636770574
_SOURCE_REALTIME_TIMESTAMP=1733336636772520
SYSLOG_TIMESTAMP=Dec  4 22:23:56 
MESSAGE=get-updates transaction /3416_edbcddbd from uid 1000 finished with success after 1781ms
_SOURCE_REALTIME_TIMESTAMP=1733336636773624
_SOURCE_REALTIME_TIMESTAMP=1733336639171829
_SOURCE_REALTIME_TIMESTAMP=1733336639173233
SYSLOG_TIMESTAMP=Dec  4 22:23:59 
MESSAGE=get-updates transaction /3417_bacddcbe from uid 1000 finished with success after 1689ms
_SOURCE_REALTIME_TIMESTAMP=1733336639174269
SYSLOG_IDENTIFIER=adduser
SYSLOG_PID=258958
SYSLOG_TIMESTAMP=Dec  4 22:24:24 
MESSAGE=The home dir /run/sshd you specified can't be accessed: No such file or directory
SYSLOG_RAW=<14>Dec  4 22:24:24 adduser[258958]: The home dir /run/sshd you specified can't be accessed: No such file or directory
_PID=258958
_COMM=adduser
_EXE=/usr/bin/perl
_CMDLINE=adduser
_SYSTEMD_CGROUP=/user.slice/user-1000.slice/user@1000.service/app.slice/app-konsole-466a5e6cabb04878a12d0b83094a5a54.scope
_SYSTEMD_USER_UNIT=app-konsole-466a5e6cabb04878a12d0b83094a5a54.scope
_SYSTEMD_INVOCATION_ID=42b2f9d9467d476abf5e3454b2e9df50
_SOURCE_REALTIME_TIMESTAMP=1733336664120011
MESSAGE=Selecting UID from range 100 to 999 ...
SYSLOG_RAW=<14>Dec  4 22:24:24 adduser[258958]: Selecting UID from range 100 to 999 ...
_SOURCE_REALTIME_TIMESTAMP=1733336664123513
/v'F
MESSAGE=Adding system user `sshd' (UID 124) ...
_SOURCE_REALTIME_TIMESTAMP=1733336664125799
@l;-
MESSAGE=Adding new user `sshd' (UID 124) with group `nogroup' ...
_SOURCE_REALTIME_TIMESTAMP=1733336664127612
SYSLOG_IDENTIFIER=useradd
SYSLOG_PID=258963
MESSAGE=new user: name=sshd, UID=124, GID=65534, home=/run/sshd, shell=/usr/sbin/nologin, from=none
_PID=258963
_COMM=useradd
_EXE=/usr/sbin/useradd
<pAN.
_CMDLINE=/usr/sbin/useradd -r -K SYS_UID_MIN 100 -K SYS_UID_MAX 999 -d /run/sshd -g nogroup -s /usr/sbin/nologin -u 124 sshd
_SOURCE_REALTIME_TIMESTAMP=1733336664707130
MESSAGE=Not creating home directory `/run/sshd'.
_SOURCE_REALTIME_TIMESTAMP=1733336664864103
MESSAGE=Reloading requested from client PID 258977 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336664877766
_SOURCE_REALTIME_TIMESTAMP=1733336664877776
_SOURCE_REALTIME_TIMESTAMP=1733336664975136
s1nQ"
MESSAGE=Reloading finished in 265 ms.
_SOURCE_REALTIME_TIMESTAMP=1733336665143269
JOB_ID=4363
INVOCATION_ID=040248e4425e4eef96f4d47ad2ea8f97
_SOURCE_REALTIME_TIMESTAMP=1733336665208108
_SOURCE_REALTIME_TIMESTAMP=1733336665239720
a~8F
_SOURCE_REALTIME_TIMESTAMP=1733336665239914
MESSAGE=Reloading requested from client PID 259085 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336665388193
_SOURCE_REALTIME_TIMESTAMP=1733336665388204
_SOURCE_REALTIME_TIMESTAMP=1733336665480719
MESSAGE=Reloading finished in 256 ms.
_SOURCE_REALTIME_TIMESTAMP=1733336665644660
MESSAGE=Listening on ssh.socket - OpenBSD Secure Shell server socket.
JOB_ID=4464
INVOCATION_ID=fc8b46c47d6940e5906fb1ec6596d1d3
UNIT=ssh.socket
_SOURCE_REALTIME_TIMESTAMP=1733336665770595
_SOURCE_REALTIME_TIMESTAMP=1733336676764705
_SOURCE_REALTIME_TIMESTAMP=1733336676766161
SYSLOG_TIMESTAMP=Dec  4 22:24:36 
MESSAGE=get-updates transaction /3418_cbebeedd from uid 1000 finished with success after 351ms
_SOURCE_REALTIME_TIMESTAMP=1733336676767255
MESSAGE=Reloading requested from client PID 259283 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336678308832
_SOURCE_REALTIME_TIMESTAMP=1733336678308842
_SOURCE_REALTIME_TIMESTAMP=1733336678401723
Hm97
MESSAGE=Reloading finished in 257 ms.
_SOURCE_REALTIME_TIMESTAMP=1733336678566407
73+P
MESSAGE=Reloading requested from client PID 259372 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336678607209
m8bG
_SOURCE_REALTIME_TIMESTAMP=1733336678607217
_SOURCE_REALTIME_TIMESTAMP=1733336678693068
_SOURCE_REALTIME_TIMESTAMP=1733336678859984
MESSAGE=Reloading requested from client PID 259279 ('systemctl') (unit user@1000.service)...
_SOURCE_REALTIME_TIMESTAMP=1733336678913077
_SOURCE_REALTIME_TIMESTAMP=1733336678913086
I"	G
_SOURCE_REALTIME_TIMESTAMP=1733336679002856
MESSAGE=Reloading finished in 261 ms.
_SOURCE_REALTIME_TIMESTAMP=1733336679174708
MESSAGE=Starting ssh.service - OpenBSD Secure Shell server...
JOB_ID=4559
INVOCATION_ID=df43183ae48442cabeb42214b032f6aa
UNIT=ssh.service
_SOURCE_REALTIME_TIMESTAMP=1733336682831164
SYSLOG_IDENTIFIER=sshd
SYSLOG_PID=260446
SYSLOG_TIMESTAMP=Dec  4 22:24:42 
u/^7T
MESSAGE=Server listening on :: port 22.
_PID=260446
_COMM=sshd
_EXE=/usr/sbin/sshd
_CMDLINE="sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"
_SYSTEMD_CGROUP=/system.slice/ssh.service
_SYSTEMD_UNIT=ssh.service
_SYSTEMD_INVOCATION_ID=df43183ae48442cabeb42214b032f6aa
_SOURCE_REALTIME_TIMESTAMP=1733336682846889
^(EG
MESSAGE=Started ssh.service - OpenBSD Secure Shell server.
_SOURCE_REALTIME_TIMESTAMP=1733336682846966
I)EG
2,(S
SYSLOG_PID=260468
SYSLOG_TIMESTAMP=Dec  4 22:25:01 
_PID=260468
_AUDIT_SESSION=17
_SOURCE_REALTIME_TIMESTAMP=1733336701396622
p4`H
SYSLOG_PID=260469
_PID=260469
_SOURCE_REALTIME_TIMESTAMP=1733336701397027
_SOURCE_REALTIME_TIMESTAMP=1733336701398743
SYSLOG_TIMESTAMP=Dec  4 22:29:40 
_SOURCE_REALTIME_TIMESTAMP=1733336980170116
_SOURCE_REALTIME_TIMESTAMP=1733336980175156
CPU_USAGE_NSEC=2565860000
MEMORY_PEAK=207220736
MESSAGE=packagekit.service: Consumed 2.565s CPU time, 197.6M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733336980175383
SYSLOG_PID=274907
SYSLOG_TIMESTAMP=Dec  4 22:30:01 
_PID=274907
_AUDIT_SESSION=18
_SOURCE_REALTIME_TIMESTAMP=1733337001401704
SYSLOG_PID=274910
_PID=274910
_SOURCE_REALTIME_TIMESTAMP=1733337001402102
_SOURCE_REALTIME_TIMESTAMP=1733337001403396
SYSLOG_TIMESTAMP=Dec  4 22:31:32 
MESSAGE=Registered Authentication Agent for unix-process:279550:589991 (system bus name :1.221 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733337092086039
_SOURCE_REALTIME_TIMESTAMP=1733337092092935
H<\g
SYSLOG_TIMESTAMP=Dec  4 22:31:34 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.222 [systemctl stop redis-server.service] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733337094608312
JOB_ID=4655
_SOURCE_REALTIME_TIMESTAMP=1733337094608971
_SOURCE_REALTIME_TIMESTAMP=1733337094815146
_SOURCE_REALTIME_TIMESTAMP=1733337094815380
CPU_USAGE_NSEC=2971027000
MEMORY_PEAK=19800064
MESSAGE=redis-server.service: Consumed 2.971s CPU time, 18.8M memory peak, 0B memory swap peak.
_SOURCE_REALTIME_TIMESTAMP=1733337094815569
MESSAGE=Unregistered Authentication Agent for unix-process:279550:589991 (system bus name :1.221, object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8) (disconnected from bus)
_SOURCE_REALTIME_TIMESTAMP=1733337094818177
SYSLOG_PID=288904
SYSLOG_TIMESTAMP=Dec  4 22:35:01 
_PID=288904
_AUDIT_SESSION=19
_SOURCE_REALTIME_TIMESTAMP=1733337301406844
Hn1Qa.
SYSLOG_PID=288907
_PID=288907
_SOURCE_REALTIME_TIMESTAMP=1733337301407283
Hs/9
_SOURCE_REALTIME_TIMESTAMP=1733337301409625
SYSLOG_PID=316867
SYSLOG_TIMESTAMP=Dec  4 22:45:01 
_PID=316867
_AUDIT_SESSION=20
_SOURCE_REALTIME_TIMESTAMP=1733337901413253
SYSLOG_PID=316868
_PID=316868
_SOURCE_REALTIME_TIMESTAMP=1733337901413692
_SOURCE_REALTIME_TIMESTAMP=1733337901415581
H~d~
_SOURCE_MONOTONIC_TIMESTAMP=7209533845
MESSAGE=audit: type=1400 audit(1733338401.542:243): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=340103 comm="snap-confine" capability=12  capname="net_admin"
_SOURCE_MONOTONIC_TIMESTAMP=7209533859
MESSAGE=audit: type=1400 audit(1733338401.542:244): apparmor="DENIED" operation="capable" class="cap" profile="/snap/snapd/23258/usr/lib/snapd/snap-confine" pid=340103 comm="snap-confine" capability=38  capname="perfmon"
SYSLOG_TIMESTAMP=Dec  4 22:53:52 
SYSLOG_RAW=<26>Dec  4 22:53:52 smartd[1836]: Device: /dev/sda [SAT], Failed SMART usage Attribute: 184 End-to-End_Error.
_SOURCE_REALTIME_TIMESTAMP=1733338432987049
SYSLOG_RAW=<30>Dec  4 22:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 190 Airflow_Temperature_Cel changed from 59 to 58
_SOURCE_REALTIME_TIMESTAMP=1733338432987098
SYSLOG_RAW=<30>Dec  4 22:53:52 smartd[1836]: Device: /dev/sda [SAT], SMART Usage Attribute: 194 Temperature_Celsius changed from 41 to 42
_SOURCE_REALTIME_TIMESTAMP=1733338432987135
MESSAGE=<info>  [1733338445.5506] dhcp4 (enp4s0): state changed new lease, address=192.168.0.104
TIMESTAMP_MONOTONIC=7210.385692
TIMESTAMP_BOOTTIME=7253.385692
_SOURCE_REALTIME_TIMESTAMP=1733338445550662
RNv(
SYSLOG_TIMESTAMP=Dec  4 22:54:05 
_SOURCE_REALTIME_TIMESTAMP=1733338445551544
RNv(
JOB_ID=4656
INVOCATION_ID=770ba025a05b4ff6bc09e88fb5dfd2c0
_SOURCE_REALTIME_TIMESTAMP=1733338445572173
RNv(
_BI5O
_SOURCE_REALTIME_TIMESTAMP=1733338445576640
RNv(
_SOURCE_REALTIME_TIMESTAMP=1733338445576730
RNv(
_SOURCE_REALTIME_TIMESTAMP=1733338455599072
SYSLOG_PID=344864
}@Is
SYSLOG_TIMESTAMP=Dec  4 22:55:01 
kA[B
_PID=344864
_AUDIT_SESSION=21
_SOURCE_REALTIME_TIMESTAMP=1733338501419384
SYSLOG_PID=344865
_PID=344865
_SOURCE_REALTIME_TIMESTAMP=1733338501419875
_SOURCE_REALTIME_TIMESTAMP=1733338501422494
_SOURCE_REALTIME_TIMESTAMP=1733338569650088
SYSLOG_PID=372311
^x~3
SYSLOG_TIMESTAMP=Dec  4 23:05:01 
_PID=372311
_AUDIT_SESSION=22
_SOURCE_REALTIME_TIMESTAMP=1733339101425981
Lqjuv(
SYSLOG_PID=372312
_PID=372312
_SOURCE_REALTIME_TIMESTAMP=1733339101426378
kuv(
_SOURCE_REALTIME_TIMESTAMP=1733339101428221
kuv(
SYSLOG_TIMESTAMP=Dec  4 23:08:04 
MESSAGE=Registered Authentication Agent for unix-process:381535:809212 (system bus name :1.229 [/usr/bin/pkttyagent --notify-fd 5 --fallback], object path /org/freedesktop/PolicyKit1/AuthenticationAgent, locale ru_RU.UTF-8)
_SOURCE_REALTIME_TIMESTAMP=1733339284298252
_SOURCE_REALTIME_TIMESTAMP=1733339284305560
SYSLOG_TIMESTAMP=Dec  4 23:08:06 
MESSAGE=Operator of unix-session:3 successfully authenticated as unix-user:cudok to gain TEMPORARY authorization for action org.freedesktop.systemd1.manage-units for system-bus-name::1.230 [systemctl start sshd] (owned by unix-user:cudok)
_SOURCE_REALTIME_TIMESTAMP=1733339286396289
MESSAGE=Unregistered Authentication Agent for unix-processID 112.
JOB_ID=1693
INVOCATION_ID=c1d8b50ae5e3406ba97f6600012c099b
UNIT=user-112.slice
%cl#
_SOURCE_REALTIME_TIMESTAMP=1733331259612425
MESSAGE=Starting user-runtime-dir@112.service - User Runtime Directory /run/user/112...
JOB_ID=1789
INVOCATION_ID=1412049a6ab94e88a57ddb6b3c6cbcc4
UNIT=user-runtime-dir@112.service
_SOURCE_REALTIME_TIMESTAMP=1733331259625147
SYSLOG_FACILITY=4
TID=1854
CODE_FILE=src/login/logind-session.c
CODE_LINE=789
CODE_FUNC=session_start
SYSLOG_IDENTIFIER=systemd-logind
MESSAGE_ID=8d45620c1a4348dbb17410da57c60c66
SESSION_ID=1
SESSION_ID
USER_ID=sddm
USER_ID
LEADER=2980
LEADER
MESSAGE=New session 1 of user sddm.
_PID=1854
_COMM=systemd-logind
_EXE=/usr/lib/systemd/systemd-logind
_CMDLINE=/usr/lib/systemd/systemd-logind
_CAP_EFFECTIVE=24420020f
_SYSTEMD_CGROUP=/system.slice/systemd-logind.service
_SYSTEMD_UNIT=systemd-logind.service
_SYSTEMD_INVOCATION_ID=9c2c700d0f264b4bb9940798c8bfaa59
_SOURCE_REALTIME_TIMESTAMP=1733331259626767
MESSAGE=Finished user-runtime-dir@112.service - User Runtime Directory /run/user/112.
_SOURCE_REALTIME_TIMESTAMP=1733331259668015
MESSAGE=Starting user@112.service - User Manager for UID 112...
JOB_ID=1692
INVOCATION_ID=3e26f39b4618494892f3743376714e77
UNIT=user@112.service
_SOURCE_REALTIME_TIMESTAMP=1733331259678174
SYSLOG_IDENTIFIER=(systemd)
MESSAGE=pam_unix(systemd-user:session): session opened for user sddm(uid=112) by sddm(uid=0)
_PID=3173
%c:y
_COMM=(systemd)
_EXE=/usr/lib/systemd/systemd-executor
_CMDLINE="(systemd)"
2eHI
_AUDIT_SESSION=2
_AUDIT_SESSION
_AUDIT_LOGINUID=112
_AUDIT_LOGINUID
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/init.scope
_SYSTEMD_OWNER_UID=112
_SYSTEMD_OWNER_UID
_SYSTEMD_UNIT=user@112.service
:Vjh
_SYSTEMD_USER_UNIT=init.scope
_SYSTEMD_USER_UNIT
_SYSTEMD_SLICE=user-112.slice
_SYSTEMD_USER_SLICE=-.slice
_SYSTEMD_USER_SLICE
_SOURCE_REALTIME_TIMESTAMP=1733331259785162
TID=3173
CODE_FILE=src/core/main.c
CODE_LINE=2382
CODE_FUNC=do_queue_default_job
MESSAGE=Queued start job for default target default.target.
_UID=112
_GID=115
c x$
_CMDLINE=/usr/lib/systemd/systemd --user
_CAP_EFFECTIVE=0
_SOURCE_REALTIME_TIMESTAMP=1733331261113120
MESSAGE=Created slice app.slice - User Application Slice.
JOB_ID=13
USER_INVOCATION_ID=2a776bea65eb4d16806435c042230128
USER_INVOCATION_ID
USER_UNIT=app.slice
USER_UNIT
_SOURCE_REALTIME_TIMESTAMP=1733331261127334
MESSAGE=Created slice session.slice - User Core Session Slice.
JOB_ID=37
USER_INVOCATION_ID=2aacfdfc4b6c4586a23049a0733448da
USER_UNIT=session.slice
_SOURCE_REALTIME_TIMESTAMP=1733331261127924
CODE_LINE=779
MESSAGE=drkonqi-coredump-cleanup.timer - Cleanup lingering KCrash metadata was skipped because of an unmet condition check (ConditionPathExistsGlob=/var/lib/sddm/.cache/kcrash-metadata/*.ini).
JOB_ID=33
USER_INVOCATION_ID=
USER_UNIT=drkonqi-coredump-cleanup.timer
_SOURCE_REALTIME_TIMESTAMP=1733331261128225
MESSAGE=Started launchpadlib-cache-clean.timer - Clean up old files in the Launchpadlib cache.
JOB_ID=34
USER_INVOCATION_ID=8345e961a6144f0185579a2908441373
USER_UNIT=launchpadlib-cache-clean.timer
_SOURCE_REALTIME_TIMESTAMP=1733331261128257
MESSAGE=Started snap.firmware-updater.firmware-notifier.timer - Timer firmware-notifier for snap application firmware-updater.firmware-notifier.
'o+V
JOB_ID=32
USER_INVOCATION_ID=6420abd9b8f64490b95ce8f091caeb8b
USER_UNIT=snap.firmware-updater.firmware-notifier.timer
_SOURCE_REALTIME_TIMESTAMP=1733331261128609
MESSAGE=Reached target paths.target - Paths.
JOB_ID=35
USER_INVOCATION_ID=62e340ecaecd4f83bc405d1045b8d9b5
USER_UNIT=paths.target
_SOURCE_REALTIME_TIMESTAMP=1733331261128635
MESSAGE=Reached target timers.target - Timers.
s,N ^\h
JOB_ID=31
,1mN
USER_INVOCATION_ID=7de0ea0b89f64c18a2bf43ed234b6b66
USER_UNIT=timers.target
_SOURCE_REALTIME_TIMESTAMP=1733331261128658
MESSAGE=Starting dbus.socket - D-Bus User Message Bus Socket...
JOB_ID=16
USER_INVOCATION_ID=ca88912310de45e9b1925d69da8dc2a2
USER_UNIT=dbus.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261129774
MESSAGE=Listening on dirmngr.socket - GnuPG network certificate management daemon.
JOB_ID=21
USER_INVOCATION_ID=5870aa8b97914c16bfdbd833a00b82f8
USER_UNIT=dirmngr.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261129967
MESSAGE=Listening on drkonqi-coredump-launcher.socket - Socket to launch DrKonqi for a systemd-coredump crash.
JOB_ID=30
USER_INVOCATION_ID=34c8beb5512543799680dc911957cc30
USER_UNIT=drkonqi-coredump-launcher.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131283
MESSAGE=Listening on gcr-ssh-agent.socket - GCR ssh-agent wrapper.
JOB_ID=19
USER_INVOCATION_ID=6115ddff9cb24226916009af49e70470
USER_UNIT=gcr-ssh-agent.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131387
MESSAGE=Listening on gnome-keyring-daemon.socket - GNOME Keyring daemon.
e9a<
JOB_ID=28
USER_INVOCATION_ID=b397cfe682264bc08829725812b4710c
USER_UNIT=gnome-keyring-daemon.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131478
MESSAGE=Listening on gpg-agent-browser.socket - GnuPG cryptographic agent and passphrase cache (access for web browsers).
JOB_ID=29
lNUP
USER_INVOCATION_ID=44079c1f43634d0f9eb721c6f02e1dc2
USER_UNIT=gpg-agent-browser.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131559
MESSAGE=Listening on gpg-agent-extra.socket - GnuPG cryptographic agent and passphrase cache (restricted).
JOB_ID=27
USER_INVOCATION_ID=e1c14ac381b44d149dc7caa7e646c5cd
USER_UNIT=gpg-agent-extra.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261131637
MESSAGE=Starting gpg-agent-ssh.socket - GnuPG cryptographic agent (ssh-agent emulation)...
JOB_ID=22
USER_INVOCATION_ID=a559c74da901425f85f2cec97871fad3
USER_UNIT=gpg-agent-ssh.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261132223
MESSAGE=Listening on gpg-agent.socket - GnuPG cryptographic agent and passphrase cache.
JOB_ID=12
b,;?
USER_INVOCATION_ID=668bb3e3aa5b40608951730c8b4c3125
USER_UNIT=gpg-agent.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261132310
MESSAGE=Listening on keyboxd.socket - GnuPG public key management service.
JOB_ID=26
USER_INVOCATION_ID=c93ef3bdc24d4c2a86a5d6a291488411
USER_UNIT=keyboxd.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177123
MESSAGE=Listening on pipewire-pulse.socket - PipeWire PulseAudio.
JOB_ID=23
USER_INVOCATION_ID=fd636aa9816547f08a99ea8d95457299
USER_UNIT=pipewire-pulse.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177280
MESSAGE=Listening on pipewire.socket - PipeWire Multimedia System Sockets.
JOB_ID=25
USER_INVOCATION_ID=7d3f4a6710be4ce0abd75d8061f4f420
USER_UNIT=pipewire.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177402
H M'
"BoZ
MESSAGE=Listening on pk-debconf-helper.socket - debconf communication socket.
JOB_ID=17
USER_INVOCATION_ID=756ee36c02024273a63efe653dfe6efd
USER_UNIT=pk-debconf-helper.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177502
MESSAGE=Listening on snapd.session-agent.socket - REST API socket for snapd user session agent.
JOB_ID=20
USER_INVOCATION_ID=4772f021c8254d9b8b6aa97456487df7
USER_UNIT=snapd.session-agent.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177594
7*v,j~
MESSAGE=Listening on speech-dispatcher.socket - Speech Dispatcher Socket.
JOB_ID=18
USER_INVOCATION_ID=ce319513b216497f98ec8bed94566ad0
USER_UNIT=speech-dispatcher.socket
_SOURCE_REALTIME_TIMESTAMP=1733331261177718
MESSAGE=Listening on dbus.socket - D-Bus User Message Bus Socket.
_SOURCE_REALTIME_TIMESTAMP=1733331261181330
MESSAGE=Listening on gpg-agent-ssh.socket - GnuPG cryptographic agent (ssh-agent emulation).
_SOURCE_REALTIME_TIMESTAMP=1733331261206506
MESSAGE=Reached target sockets.target - Sockets.
JOB_ID=11
USER_INVOCATION_ID=db5f0583d6b54c4aa41c18a3d9bbe8bc
USER_UNIT=sockets.target
_SOURCE_REALTIME_TIMESTAMP=1733331261206562
MESSAGE=Reached target basic.target - Basic System.
JOB_ID=10
USER_INVOCATION_ID=f0fdba571ced4e9db271ba30cff715cd
USER_UNIT=basic.target
_SOURCE_REALTIME_TIMESTAMP=1733331261206578
MESSAGE=drkonqi-coredump-cleanup.service - Cleanup lingering KCrash metadata was skipped because of an unmet condition check (ConditionPathExistsGlob=/var/lib/sddm/.cache/kcrash-metadata/*.ini).
JOB_ID=41
USER_UNIT=drkonqi-coredump-cleanup.service
_SOURCE_REALTIME_TIMESTAMP=1733331261206621
W_oxPC3
MESSAGE=Started user@112.service - User Manager for UID 112.
_SOURCE_REALTIME_TIMESTAMP=1733331261206832
MESSAGE=Started pipewire.service - PipeWire Multimedia Service.
JOB_ID=36
USER_INVOCATION_ID=a8efb9779ac349968384d376f0dbea4e
USER_UNIT=pipewire.service
S!pX{.S
_SOURCE_REALTIME_TIMESTAMP=1733331261207477
UUmC
MESSAGE=Started session-1.scope - Session 1 of User sddm.
JOB_ID=1790
INVOCATION_ID=b653b46ed00a4c418d0840905527f0a4
UNIT=session-1.scope
_SOURCE_REALTIME_TIMESTAMP=1733331261207967
MESSAGE=Started filter-chain.service - PipeWire filter chain daemon.
JOB_ID=40
USER_INVOCATION_ID=788f9375ea1241279f475dc2d8086193
USER_UNIT=filter-chain.service
_SOURCE_REALTIME_TIMESTAMP=1733331261208232
MESSAGE=Starting fluidsynth.service - FluidSynth Daemon...
JOB_ID=42
USER_INVOCATION_ID=0b9ce58154094342b7d680c414bc0a1a
USER_UNIT=fluidsynth.service
_SOURCE_REALTIME_TIMESTAMP=1733331261210011
MESSAGE=Started wireplumber.service - Multimedia Service Session Manager.
JOB_ID=38
USER_INVOCATION_ID=78766027e44147d590a8f7ab5533d31f
USER_UNIT=wireplumber.service
_SOURCE_REALTIME_TIMESTAMP=1733331261210739
MESSAGE=Started pipewire-pulse.service - PipeWire PulseAudio.
BPRl
JOB_ID=43
USER_INVOCATION_ID=794bbfec30b1467492fa3d17a0cabc67
USER_UNIT=pipewire-pulse.service
_SOURCE_REALTIME_TIMESTAMP=1733331261211513
PRIORITY=4
TID=3197
CODE_FILE=src/core/exec-invoke.c
CODE_LINE=1760
CODE_FUNC=apply_protect_hostname
SYSLOG_IDENTIFIER=(uidsynth)
MESSAGE=fluidsynth.service: ProtectHostname=yes is configured, but UTS namespace setup is prohibited (container manager?), ignoring namespace setup.
_PID=3197
_COMM=(uidsynth)
_CMDLINE="(uidsynth)"
_SELINUX_CONTEXT=unprivileged_userns (enforce)
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/app.slice/fluidsynth.service
_SYSTEMD_USER_UNIT=fluidsynth.service
_SYSTEMD_USER_SLICE=app.slice
_SYSTEMD_INVOCATION_ID=0b9ce58154094342b7d680c414bc0a1a
_SOURCE_REALTIME_TIMESTAMP=1733331261213430
PRIORITY=3
CODE_LINE=4875
CODE_FUNC=exec_invoke
MESSAGE=fluidsynth.service: Failed to drop capabilities: Operation not permitted
_SOURCE_REALTIME_TIMESTAMP=1733331261213521
S,P(
_SOURCE_MONOTONIC_TIMESTAMP=69372318
SYSLOG_FACILITY=0
SYSLOG_IDENTIFIER=kernel
MESSAGE=kauditd_printk_skb: 16 callbacks suppressed
_SOURCE_MONOTONIC_TIMESTAMP=69372322
MESSAGE=audit: type=1400 audit(1733331261.212:219): apparmor="AUDIT" operation="userns_create" class="namespace" info="Userns create - transitioning profile" profile="unconfined" pid=3197 comm="(uidsynth)" requested="userns_create" target="unprivileged_userns"
_SOURCE_MONOTONIC_TIMESTAMP=69372728
MESSAGE=audit: type=1400 audit(1733331261.212:220): apparmor="DENIED" operation="capable" class="cap" profile="unprivileged_userns" pid=3197 comm="(uidsynth)" capability=21  capname="sys_admin"
_SOURCE_MONOTONIC_TIMESTAMP=69372842
MESSAGE=audit: type=1400 audit(1733331261.212:221): apparmor="DENIED" operation="capable" class="cap" profile="unprivileged_userns" pid=3197 comm="(uidsynth)" capability=8  capname="setpcap"
CODE_LINE=6066
CODE_FUNC=unit_log_process_exit
MESSAGE_ID=98e322203f7a4ed290d09fe03c09fe15
MESSAGE=fluidsynth.service: Main process exited, code=exited, status=218/CAPABILITIES
EXIT_CODE=exited
EXIT_CODE
EXIT_STATUS=218
EXIT_STATUS
COMMAND=ExecStart
COMMAND
_SOURCE_REALTIME_TIMESTAMP=1733331261213966
CODE_LINE=6024
CODE_FUNC=unit_log_failure
MESSAGE_ID=d9b373ed55a64feb8242e02dbe79a49c
MESSAGE=fluidsynth.service: Failed with result 'exit-code'.
UNIT_RESULT=exit-code
UNIT_RESULT
^,u	
_SOURCE_REALTIME_TIMESTAMP=1733331261214113
MESSAGE=Failed to start fluidsynth.service - FluidSynth Daemon.
JOB_RESULT=failed
MESSAGE_ID=be02cf6855d2428ba40df7e9d022f03d
_SOURCE_REALTIME_TIMESTAMP=1733331261214272
MESSAGE=Reached target default.target - Main User Target.
JOB_ID=9
USER_INVOCATION_ID=2a1c40caf88e4cf0a4f0ff0b65bc7bee
USER_UNIT=default.target
_SOURCE_REALTIME_TIMESTAMP=1733331261214443
CODE_LINE=3732
MESSAGE_ID=eed00a68ffd84e31882105fd973abdd1
USERSPACE_USEC=1424689
MESSAGE=Startup finished in 1.424s.
_SOURCE_REALTIME_TIMESTAMP=1733331261214475
MESSAGE=Writing cookie to "/tmp/xauth_BGfmwu"
_AUDIT_SESSION=1
_SYSTEMD_CGROUP=/user.slice/user-112.slice/session-1.scope
_SYSTEMD_SESSION=1
_SYSTEMD_SESSION
u-U]2
_SYSTEMD_UNIT=session-1.scope
_SYSTEMD_INVOCATION_ID=b653b46ed00a4c418d0840905527f0a4
_SOURCE_REALTIME_TIMESTAMP=1733331261226217
MESSAGE=Starting X11 session: "" "/usr/bin/sddm-greeter --socket /tmp/sddm-:0-QDCqOq --theme /usr/share/sddm/themes/LyraS-dark"
_SOURCE_REALTIME_TIMESTAMP=1733331261226296
MESSAGE=Greeter session started successfully
_SOURCE_REALTIME_TIMESTAMP=1733331261268115
MESSAGE=Starting dbus.service - D-Bus User Message Bus...
JOB_ID=47
brWL
USER_INVOCATION_ID=517ebe1d3ebb4f89a81346e7acdf73b8
USER_UNIT=dbus.service
_SOURCE_REALTIME_TIMESTAMP=1733331261486033
SYSLOG_IDENTIFIER=dbus-daemon
SYSLOG_PID=3203
SYSLOG_TIMESTAMP=Dec  4 20:54:21 
MESSAGE=[session uid=112 pid=3203] AppArmor D-Bus mediation is enabled
SYSLOG_RAW=<30>Dec  4 20:54:21 dbus-daemon[3203]: [session uid=112 pid=3203] AppArmor D-Bus mediation is enabled
SYSLOG_RAW
MD&}
_PID=3203
_COMM=dbus-daemon
_EXE=/usr/bin/dbus-daemon
_CMDLINE=/usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/session.slice/dbus.service
_SYSTEMD_USER_UNIT=dbus.service
_SYSTEMD_USER_SLICE=session.slice
_SYSTEMD_INVOCATION_ID=517ebe1d3ebb4f89a81346e7acdf73b8
_SOURCE_REALTIME_TIMESTAMP=1733331261927762
MESSAGE=Started dbus.service - D-Bus User Message Bus.
_SOURCE_REALTIME_TIMESTAMP=1733331261928179
SYSLOG_PID=1806
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.RealtimeKit1' unit='rtkit-daemon.service' requested by ':1.33' (uid=112 pid=3195 comm="/usr/bin/pipewire" label="unconfined")
_PID=1806
_UID=101
-1Po
_GID=101
_CMDLINE=@dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
_CAP_EFFECTIVE=20000000
_SYSTEMD_CGROUP=/system.slice/dbus.service
_SYSTEMD_UNIT=dbus.service
_SYSTEMD_INVOCATION_ID=845fc590c8ac471ebd6c589cfcb77488
_SOURCE_REALTIME_TIMESTAMP=1733331261929260
MESSAGE=Starting rtkit-daemon.service - RealtimeKit Scheduling Policy Service...
JOB_ID=1889
INVOCATION_ID=21682ebddd26445fabb9c6d1a9bc888d
UNIT=rtkit-daemon.service
M!C.
_SOURCE_REALTIME_TIMESTAMP=1733331261982124
CODE_FILE=../src/modules/module-jackdbus-detect.c
CODE_LINE=216
CODE_FUNC=on_is_started_received
MESSAGE=mod.jackdbus-detect: Failed to receive jackdbus reply: org.freedesktop.DBus.Error.ServiceUnknown: The name org.jackaudio.service was not provided by any .service files
TID=3195
SYSLOG_IDENTIFIER=pipewire
_PID=3195
_COMM=pipewire
_EXE=/usr/bin/pipewire
_CMDLINE=/usr/bin/pipewire
+'hC
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/session.slice/pipewire.service
_SYSTEMD_USER_UNIT=pipewire.service
_SYSTEMD_INVOCATION_ID=a8efb9779ac349968384d376f0dbea4e
MnjK
_SOURCE_REALTIME_TIMESTAMP=1733331262082220
SYSLOG_TIMESTAMP=Dec  4 20:54:22 
MESSAGE=[system] Successfully activated service 'org.freedesktop.RealtimeKit1'
_SOURCE_REALTIME_TIMESTAMP=1733331262173374
MESSAGE=Started rtkit-daemon.service - RealtimeKit Scheduling Policy Service.
_SOURCE_REALTIME_TIMESTAMP=1733331262173510
SYSLOG_IDENTIFIER=rtkit-daemon
E@=2Vg
SYSLOG_PID=3213
_%,A@
SYSLOG_TIMESTAMP=Dec  4 16:54:22 
MESSAGE=Successfully called chroot.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Successfully called chroot.
_PID=3213
_COMM=rtkit-daemon
_EXE=/usr/libexec/rtkit-daemon
_CMDLINE=/usr/libexec/rtkit-daemon
_CAP_EFFECTIVE=800004
_SYSTEMD_CGROUP=/system.slice/rtkit-daemon.service
T41P_f
_SYSTEMD_UNIT=rtkit-daemon.service
_SYSTEMD_INVOCATION_ID=21682ebddd26445fabb9c6d1a9bc888d
_SOURCE_REALTIME_TIMESTAMP=1733331262173613
MESSAGE=Successfully dropped privileges.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Successfully dropped privileges.
_UID=117
$\&G\	g
_GID=120
_SOURCE_REALTIME_TIMESTAMP=1733331262173658
MESSAGE=Successfully limited resources.
6hf_W
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Successfully limited resources.
_SOURCE_REALTIME_TIMESTAMP=1733331262173667
MESSAGE=Canary thread running.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Canary thread running.
G9#>sO
_SOURCE_REALTIME_TIMESTAMP=1733331262173734
@u-dn{
MESSAGE=Running.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Running.
_SOURCE_REALTIME_TIMESTAMP=1733331262173750
MESSAGE=Watchdog thread running.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Watchdog thread running.
_SOURCE_REALTIME_TIMESTAMP=1733331262173771
MESSAGE=Supervising 0 threads of 0 processes of 0 users.
SYSLOG_RAW=<31>Dec  4 16:54:22 rtkit-daemon[3213]: Supervising 0 threads of 0 processes of 0 users.
_SOURCE_REALTIME_TIMESTAMP=1733331262173806
Ht=K
_SOURCE_REALTIME_TIMESTAMP=1733331262173841
_SOURCE_REALTIME_TIMESTAMP=1733331262173874
_SOURCE_REALTIME_TIMESTAMP=1733331262173912
_SOURCE_REALTIME_TIMESTAMP=1733331262173995
_SOURCE_REALTIME_TIMESTAMP=1733331262174060
_SOURCE_REALTIME_TIMESTAMP=1733331262174131
_SOURCE_REALTIME_TIMESTAMP=1733331262174174
_SOURCE_REALTIME_TIMESTAMP=1733331262174234
_SOURCE_REALTIME_TIMESTAMP=1733331262174303
_SOURCE_REALTIME_TIMESTAMP=1733331262174345
_SOURCE_REALTIME_TIMESTAMP=1733331262174401
CODE_FILE=../lib/wp/device.c
CODE_LINE=619
CODE_FUNC=wp_spa_device_new_from_spa_factory
MESSAGE=SPA handle 'api.libcamera.enum.manager' could not be loaded; is it installed?
GLIB_DOMAIN=wp-device
GLIB_DOMAIN
_PID=3198
_COMM=wireplumber
_EXE=/usr/bin/wireplumber
_CMDLINE=/usr/bin/wireplumber
_SYSTEMD_CGROUP=/user.slice/user-112.slice/user@112.service/session.slice/wireplumber.service
_SYSTEMD_USER_UNIT=wireplumber.service
_SYSTEMD_INVOCATION_ID=78766027e44147d590a8f7ab5533d31f
#:mr
_SOURCE_REALTIME_TIMESTAMP=1733331263132969
Kl1P
CODE_FILE=libcamera.lua
CODE_LINE=173
CODE_FUNC=chunk
MESSAGE=PipeWire's libcamera SPA missing or broken. libcamera not supported.
GLIB_DOMAIN=script/libcamera
_SOURCE_REALTIME_TIMESTAMP=1733331263132984
MESSAGE=High-DPI autoscaling Enabled
SYSLOG_IDENTIFIER=sddm-greeter
_PID=3202
_COMM=sddm-greeter
_EXE=/usr/bin/sddm-greeter
_CMDLINE=/usr/bin/sddm-greeter --socket /tmp/sddm-:0-QDCqOq --theme /usr/share/sddm/themes/LyraS-dark
_SOURCE_REALTIME_TIMESTAMP=1733331263586975
CODE_FILE=../spa/plugins/bluez5/upower.c
CODE_LINE=54
CODE_FUNC=upower_get_percentage_properties_reply
MESSAGE=Failed to get percentage from UPower: org.freedesktop.DBus.Error.NameHasNoOwner
GLIB_DOMAIN=pw
_SOURCE_REALTIME_TIMESTAMP=1733331263857168
SYSLOG_TIMESTAMP=Dec  4 16:54:24 
MESSAGE=Successfully made thread 3195 of process 3195 owned by '112' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3195 of process 3195 owned by '112' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331264025587
MESSAGE=Supervising 1 threads of 1 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 1 threads of 1 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264025606
MESSAGE=Successfully made thread 3217 of process 3195 owned by '112' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3217 of process 3195 owned by '112' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331264027151
MESSAGE=Supervising 2 threads of 1 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 2 threads of 1 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264027163
MESSAGE=Successfully made thread 3199 of process 3199 owned by '112' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3199 of process 3199 owned by '112' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331264028322
MESSAGE=Supervising 3 threads of 2 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 3 threads of 2 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264028333
MESSAGE=Successfully made thread 3218 of process 3199 owned by '112' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3218 of process 3199 owned by '112' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331264029482
MESSAGE=Supervising 4 threads of 2 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 4 threads of 2 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264029493
MESSAGE=Successfully made thread 3198 of process 3198 owned by '112' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3198 of process 3198 owned by '112' high priority at nice level -11.
\jOQ
_SOURCE_REALTIME_TIMESTAMP=1733331264030635
MESSAGE=Supervising 5 threads of 3 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 5 threads of 3 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264030647
MESSAGE=Successfully made thread 3215 of process 3198 owned by '112' RT at priority 20.
w6U#
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3215 of process 3198 owned by '112' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331264031826
MESSAGE=Supervising 6 threads of 3 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 6 threads of 3 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264031837
MESSAGE=Successfully made thread 3214 of process 3196 owned by '112' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:24 rtkit-daemon[3213]: Successfully made thread 3214 of process 3196 owned by '112' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331264033036
MESSAGE=Supervising 7 threads of 4 processes of 1 users.
SYSLOG_RAW=<31>Dec  4 16:54:24 rtkit-daemon[3213]: Supervising 7 threads of 4 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331264033048
MESSAGE=Reading from "/usr/local/share/xsessions/plasma.desktop"
_SOURCE_REALTIME_TIMESTAMP=1733331265399593
MESSAGE=Reading from "/usr/share/xsessions/plasma.desktop"
_SOURCE_REALTIME_TIMESTAMP=1733331265399614
_SOURCE_REALTIME_TIMESTAMP=1733331265444743
MESSAGE=Connected to the daemon.
_SOURCE_REALTIME_TIMESTAMP=1733331265537449
MESSAGE=Message received from greeter: Connect
_SOURCE_REALTIME_TIMESTAMP=1733331265537525
MESSAGE=Loading file:///usr/share/sddm/themes/LyraS-dark/Main.qml...
_SOURCE_REALTIME_TIMESTAMP=1733331266744074
INVOCATION_ID=d6f25d8454a24f14be92785a8115105f
MESSAGE=systemd-hostnamed.service: Deactivated successfully.
UNIT=systemd-hostnamed.service
H]3j
_SOURCE_REALTIME_TIMESTAMP=1733331267207691
_SOURCE_MONOTONIC_TIMESTAMP=75560436
MESSAGE=audit: type=1400 audit(1733331267.400:222): apparmor="DENIED" operation="ptrace" class="ptrace" profile="snap.docker.dockerd" pid=3272 comm="ps" requested_mask="read" denied_mask="read" peer="rsyslogd"
_SOURCE_MONOTONIC_TIMESTAMP=75561439
MESSAGE=audit: type=1400 audit(1733331267.401:223): apparmor="DENIED" operation="ptrace" class="ptrace" profile="snap.docker.dockerd" pid=3272 comm="ps" requested_mask="read" denied_mask="read" peer="/usr/sbin/cupsd"
_SOURCE_MONOTONIC_TIMESTAMP=75562002
MESSAGE=audit: type=1400 audit(1733331267.401:224): apparmor="DENIED" operation="ptrace" class="ptrace" profile="snap.docker.dockerd" pid=3272 comm="ps" requested_mask="read" denied_mask="read" peer="/usr/sbin/cups-browsed"
_SOURCE_MONOTONIC_TIMESTAMP=75725880
]*;	
MESSAGE=audit: type=1400 audit(1733331267.565:225): apparmor="STATUS" operation="profile_load" profile="snap.docker.dockerd" name="docker-default" pid=3274 comm="apparmor_parser"
_SOURCE_MONOTONIC_TIMESTAMP=76548068
MESSAGE=evm: overlay not supported
_SOURCE_MONOTONIC_TIMESTAMP=77290884
MESSAGE=Initializing XFRM netlink socket
3XbU
MESSAGE=<info>  [1733331269.1874] manager: (docker0): new Bridge device (/org/freedesktop/NetworkManager/Devices/3)
SYSLOG_IDENTIFIER=NetworkManager
SYSLOG_PID=1978
NM_LOG_DOMAINS=DEVICE
up.Jf
NM_LOG_DOMAINS
NM_LOG_LEVEL=INFO
NM_LOG_LEVEL
CODE_FILE=src/core/nm-manager.c
CODE_LINE=4116
TIMESTAMP_MONOTONIC=34.022461
TIMESTAMP_MONOTONIC
TIMESTAMP_BOOTTIME=77.022461
TIMESTAMP_BOOTTIME
`wF}
NM_DEVICE=docker0
NM_DEVICE
_PID=1978
_COMM=NetworkManager
_EXE=/usr/sbin/NetworkManager
_CMDLINE=/usr/sbin/NetworkManager --no-daemon
_CAP_EFFECTIVE=200534e2
wjBe
_SYSTEMD_CGROUP=/system.slice/NetworkManager.service
_SYSTEMD_UNIT=NetworkManager.service
_SYSTEMD_INVOCATION_ID=8ee386a6646d40839f68affde1e78925
_SOURCE_REALTIME_TIMESTAMP=1733331269187423
SYSLOG_IDENTIFIER=avahi-daemon
SYSLOG_PID=1803
SYSLOG_TIMESTAMP=Dec  4 20:54:29 
MESSAGE=Joining mDNS multicast group on interface docker0.IPv4 with address 172.17.0.1.
_PID=1803
_UID=108
_GID=112
_COMM=avahi-daemon
_EXE=/usr/sbin/avahi-daemon
_CMDLINE="avahi-daemon: running [syscudo.local]"
_SYSTEMD_CGROUP=/system.slice/avahi-daemon.service
_SYSTEMD_UNIT=avahi-daemon.service
x@1`
_SYSTEMD_INVOCATION_ID=6ef65da17ace4bdb955216b176541a5b
_SOURCE_REALTIME_TIMESTAMP=1733331269317971
B]zT
MESSAGE=New relevant interface docker0.IPv4 for mDNS.
_SOURCE_REALTIME_TIMESTAMP=1733331269317993
MESSAGE=Registering new address record for 172.17.0.1 on docker0.IPv4.
_SOURCE_REALTIME_TIMESTAMP=1733331269318008
MESSAGE=<info>  [1733331269.3419] device (docker0): state change: unmanaged -> unavailable (reason 'connection-assumed', sys-iface-state: 'external')
CODE_FILE=src/core/devices/nm-device.c
CODE_LINE=16513
TIMESTAMP_MONOTONIC=34.177036
TIMESTAMP_BOOTTIME=77.177036
_SOURCE_REALTIME_TIMESTAMP=1733331269341996
MESSAGE=<info>  [1733331269.3422] device (docker0): state change: unavailable -> disconnected (reason 'connection-assumed', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177317
TIMESTAMP_BOOTTIME=77.177317
_SOURCE_REALTIME_TIMESTAMP=1733331269342273
MESSAGE=<info>  [1733331269.3426] device (docker0): Activation: starting connection 'docker0' (6ee355da-5ba3-463a-b1f1-4e70e5b1f61c)
CODE_LINE=14146
TIMESTAMP_MONOTONIC=34.177679
TIMESTAMP_BOOTTIME=77.177679
_SOURCE_REALTIME_TIMESTAMP=1733331269342633
MESSAGE=<info>  [1733331269.3426] device (docker0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177723
TIMESTAMP_BOOTTIME=77.177723
_SOURCE_REALTIME_TIMESTAMP=1733331269342675
HM%R9
MESSAGE=<info>  [1733331269.3427] device (docker0): state change: prepare -> config (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177821
TIMESTAMP_BOOTTIME=77.177821
_SOURCE_REALTIME_TIMESTAMP=1733331269342773
MESSAGE=<info>  [1733331269.3428] device (docker0): state change: config -> ip-config (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177897
TIMESTAMP_BOOTTIME=77.177897
_SOURCE_REALTIME_TIMESTAMP=1733331269342849
HXY/
MESSAGE=<info>  [1733331269.3429] device (docker0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.177971
TIMESTAMP_BOOTTIME=77.177971
_SOURCE_REALTIME_TIMESTAMP=1733331269342923
f?T2
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.nm_dispatcher' unit='dbus-org.freedesktop.nm-dispatcher.service' requested by ':1.12' (uid=0 pid=1978 comm="/usr/sbin/NetworkManager --no-daemon" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331269343184
MESSAGE=Starting NetworkManager-dispatcher.service - Network Manager Script Dispatcher Service...
JOB_ID=1985
INVOCATION_ID=0a704a1e7c5e406c8c5a7939ad340bae
_SOURCE_REALTIME_TIMESTAMP=1733331269364117
MESSAGE=[system] Successfully activated service 'org.freedesktop.nm_dispatcher'
_SOURCE_REALTIME_TIMESTAMP=1733331269367839
MESSAGE=Started NetworkManager-dispatcher.service - Network Manager Script Dispatcher Service.
_SOURCE_REALTIME_TIMESTAMP=1733331269367909
MESSAGE=<info>  [1733331269.3682] device (docker0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.203327
TIMESTAMP_BOOTTIME=77.203327
_SOURCE_REALTIME_TIMESTAMP=1733331269368282
MESSAGE=<info>  [1733331269.3683] device (docker0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'external')
TIMESTAMP_MONOTONIC=34.203403
TIMESTAMP_BOOTTIME=77.203403
_SOURCE_REALTIME_TIMESTAMP=1733331269368355
MESSAGE=<info>  [1733331269.3685] device (docker0): Activation: successful, device activated.
CODE_LINE=16759
TIMESTAMP_MONOTONIC=34.203609
TIMESTAMP_BOOTTIME=77.203609
_SOURCE_REALTIME_TIMESTAMP=1733331269368562
q;~8
CODE_FILE=../modules/module-lua-scripting/api/api.c
Ik"[
CODE_LINE=387
CODE_FUNC=object_activate_done
MESSAGE=<WpSiAudioAdapter:0x5c7117efac10> Object activation aborted: proxy destroyed
GLIB_DOMAIN=m-lua-scripting
WP_OBJECT_TYPE=
WP_OBJECT_TYPE
p$M.
WP_OBJECT=
WP_OBJECT
_SOURCE_REALTIME_TIMESTAMP=1733331270565363
CODE_FILE=create-item.lua
CODE_LINE=81
MESSAGE=<WpSiAudioAdapter:0x5c7117efac10> failed to activate item: Object activation aborted: proxy destroyed
GLIB_DOMAIN=script/create-item
_SOURCE_REALTIME_TIMESTAMP=1733331270565377
?"KZ
_SOURCE_MONOTONIC_TIMESTAMP=78755270
MESSAGE=Bluetooth: RFCOMM TTY layer initialized
_SOURCE_MONOTONIC_TIMESTAMP=78755296
I]`R
MESSAGE=Bluetooth: RFCOMM socket layer initialized
_SOURCE_MONOTONIC_TIMESTAMP=78755306
MESSAGE=Bluetooth: RFCOMM ver 1.11
SYSLOG_IDENTIFIER=bluetoothd
SYSLOG_PID=1804
Qhkr:a
SYSLOG_TIMESTAMP=Dec  4 20:54:30 
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/ldac
_PID=1804
_COMM=bluetoothd
_EXE=/usr/libexec/bluetooth/bluetoothd
_CMDLINE=/usr/libexec/bluetooth/bluetoothd
_CAP_EFFECTIVE=1400
_SYSTEMD_CGROUP=/system.slice/bluetooth.service
_SYSTEMD_UNIT=bluetooth.service
_SYSTEMD_INVOCATION_ID=1d13adfe5d0246a19e1756beba5d8f5f
_SOURCE_REALTIME_TIMESTAMP=1733331270597444
ieUalI$
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331270597546
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331270597645
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331270597753
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331270597856
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331270597960
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331270598054
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331270598147
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331270598239
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733331270598329
C.({Q
Y%U)
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733331270598416
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733331270598507
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733331270598597
l~m,N
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/faststream
_SOURCE_REALTIME_TIMESTAMP=1733331270598689
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/faststream_duplex
bi"cY
_SOURCE_REALTIME_TIMESTAMP=1733331270598775
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331270598872
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331270598975
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSink/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331270599071
MESSAGE=Endpoint registered: sender=:1.38 path=/MediaEndpoint/A2DPSource/opus_05_duplex
Tk~gj
_SOURCE_REALTIME_TIMESTAMP=1733331270599164
MESSAGE=QObject: Cannot create children for a parent that is in a different thread.
(Parent is QGuiApplication(0x7ffceef566c0), parent's thread is QThread(0x5c6cbe464e00), current thread is QThread(0x5c6cbe567520)
_SOURCE_REALTIME_TIMESTAMP=1733331271040155
_SOURCE_REALTIME_TIMESTAMP=1733331271057986
_SOURCE_REALTIME_TIMESTAMP=1733331271190909
($/z
MESSAGE=QObject::installEventFilter(): Cannot filter events for objects in a different thread.
_SOURCE_REALTIME_TIMESTAMP=1733331271190919
SYSLOG_TIMESTAMP=Dec  4 20:54:33 
MESSAGE=[system] Activating via systemd: service name='org.freedesktop.UPower' unit='upower.service' requested by ':1.42' (uid=112 pid=3202 comm="/usr/bin/sddm-greeter --socket /tmp/sddm-:0-QDCqOq" label="unconfined")
_SOURCE_REALTIME_TIMESTAMP=1733331273371715
MESSAGE=Starting upower.service - Daemon for power management...
JOB_ID=2081
INVOCATION_ID=a030ad3282d54e3b86912c1e890dabd5
UNIT=upower.service
_SOURCE_REALTIME_TIMESTAMP=1733331273406145
MESSAGE=[system] Successfully activated service 'org.freedesktop.UPower'
_SOURCE_REALTIME_TIMESTAMP=1733331273619084
MESSAGE=Started upower.service - Daemon for power management.
_SOURCE_REALTIME_TIMESTAMP=1733331273619182
MESSAGE=QFont::setPointSizeF: Point size <= 0 (0.000000), must be greater than 0
_SOURCE_REALTIME_TIMESTAMP=1733331273889703
_SOURCE_REALTIME_TIMESTAMP=1733331273890383
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:453:5: QML Connections: Implicitly defined onFoo properties in Connections are deprecated. Use this syntax instead: function onFoo(<arguments>) { ... }
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml
CODE_LINE=453
?LX=
_SOURCE_REALTIME_TIMESTAMP=1733331273944336
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml:116:9: QML Connections: Implicitly defined onFoo properties in Connections are deprecated. Use this syntax instead: function onFoo(<arguments>) { ... }
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml
CODE_LINE=116
_SOURCE_REALTIME_TIMESTAMP=1733331274264364
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml:125:5: QML Image: Detected anchors on an item that is managed by a layout. This is undefined behavior; use Layout.alignment instead.
CODE_LINE=125
_SOURCE_REALTIME_TIMESTAMP=1733331274290729
_SOURCE_REALTIME_TIMESTAMP=1733331274291251
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml:83:13: Unable to assign [undefined] to QString
CODE_LINE=83
_SOURCE_REALTIME_TIMESTAMP=1733331274363109
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:75: TypeError: Cannot read property 'text' of undefined
CODE_LINE=75
_SOURCE_REALTIME_TIMESTAMP=1733331274363121
0*~P
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Login.qml:74:9: Unable to assign [undefined] to QString
CODE_LINE=74
_SOURCE_REALTIME_TIMESTAMP=1733331274363130
H2O#[
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:179:13: Unable to assign [undefined] to QString
CODE_LINE=179
_SOURCE_REALTIME_TIMESTAMP=1733331274363138
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:178:13: Unable to assign [undefined] to int
CODE_LINE=178
_SOURCE_REALTIME_TIMESTAMP=1733331274363146
_SOURCE_REALTIME_TIMESTAMP=1733331274365745
MESSAGE=Adding view for "HDMI-0" QRect(0,0 1920x1080)
_SOURCE_REALTIME_TIMESTAMP=1733331274365932
_SOURCE_REALTIME_TIMESTAMP=1733331274393936
MESSAGE=QDBusConnection: name 'org.freedesktop.UPower' had owner '' but we thought it was ':1.43'
_SOURCE_REALTIME_TIMESTAMP=1733331274940865
NN.P
MESSAGE=Message received from daemon: Capabilities
_SOURCE_REALTIME_TIMESTAMP=1733331274961414
MESSAGE=Message received from daemon: HostName
_SOURCE_REALTIME_TIMESTAMP=1733331274961434
_SOURCE_REALTIME_TIMESTAMP=1733331277541831
_SOURCE_REALTIME_TIMESTAMP=1733331277652037
INVOCATION_ID=a9952a7443244b8da5de6bfc1dc004b2
MESSAGE=systemd-timedated.service: Deactivated successfully.
UNIT=systemd-timedated.service
_SOURCE_REALTIME_TIMESTAMP=1733331278048670
_SOURCE_REALTIME_TIMESTAMP=1733331278647785
MESSAGE=Message received from greeter: Login
_SOURCE_REALTIME_TIMESTAMP=1733331278647965
\naP
_SOURCE_REALTIME_TIMESTAMP=1733331278647982
MESSAGE=Session "/usr/share/xsessions/plasma.desktop" selected, command: "/usr/bin/startplasma-x11" for VT 2
_SOURCE_REALTIME_TIMESTAMP=1733331278648543
_PID=4294
_CMDLINE=/usr/lib/x86_64-linux-gnu/sddm/sddm-helper --socket /tmp/sddm-auth-8f4222ad-4051-4912-bf30-593de56e32d6 --id 1 --start /usr/bin/startplasma-x11 --user cudok
_SOURCE_REALTIME_TIMESTAMP=1733331278908910
_SOURCE_REALTIME_TIMESTAMP=1733331278908924
MESSAGE=[PAM] Preparing to converse...
_SOURCE_REALTIME_TIMESTAMP=1733331278923771
MESSAGE=[PAM] Conversation with 1 messages
_SOURCE_REALTIME_TIMESTAMP=1733331278923785
SYSLOG_TIMESTAMP=Dec  4 20:54:38 
MESSAGE=gkr-pam: unable to locate daemon control file
_SOURCE_REALTIME_TIMESTAMP=1733331278967118
MESSAGE=gkr-pam: stashed password to try later in open session
_SOURCE_REALTIME_TIMESTAMP=1733331278967122
b<U%6k
MESSAGE=pam_kwallet5(sddm:auth): pam_kwallet5: pam_sm_authenticate
)(WWO
SYSLOG_RAW=<87>Dec  4 20:54:38 sddm-helper: pam_kwallet5(sddm:auth): pam_kwallet5: pam_sm_authenticate
_SOURCE_REALTIME_TIMESTAMP=1733331278967126
_SOURCE_REALTIME_TIMESTAMP=1733331278967183
Hk2^v
-qIx
MESSAGE=Authentication for user  "cudok"  successful
_SOURCE_REALTIME_TIMESTAMP=1733331278967298
MESSAGE=Message received from daemon: LoginSucceeded
_SOURCE_REALTIME_TIMESTAMP=1733331278967434
MESSAGE=pam_kwallet5(sddm:setcred): pam_kwallet5: pam_sm_setcred
_SOURCE_REALTIME_TIMESTAMP=1733331278967660
MESSAGE=pam_unix(sddm:session): session opened for user cudok(uid=1000) by cudok(uid=0)
_SOURCE_REALTIME_TIMESTAMP=1733331278968594
MESSAGE=Created slice user-1000.slice - User Slice of UID 1000.
JOB_ID=2272
INVOCATION_ID=6f46dcb07ed64b79888b47ff82c5d3e9
UNIT=user-1000.slice
_SOURCE_REALTIME_TIMESTAMP=1733331278971977
MESSAGE=Starting user-runtime-dir@1000.service - User Runtime Directory /run/user/1000...
JOB_ID=2274
@.tF
INVOCATION_ID=543fdf01f8394c2283d1c5e8f0e6951e
UNIT=user-runtime-dir@1000.service
_SOURCE_REALTIME_TIMESTAMP=1733331278988122
SESSION_ID=3
USER_ID=cudok
LEADER=4294
MESSAGE=New session 3 of user cudok.
_SOURCE_REALTIME_TIMESTAMP=1733331278989020
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/ldac
_SOURCE_REALTIME_TIMESTAMP=1733331278996048
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331278996321
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331278996538
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331278996743
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331278996956
MESSAGE=Finished user-runtime-dir@1000.service - User Runtime Directory /run/user/1000.
_SOURCE_REALTIME_TIMESTAMP=1733331278997243
TW.%
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331278997346
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/sbc
nor0
_SOURCE_REALTIME_TIMESTAMP=1733331278997804
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331278998020
\8Ft
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331278998225
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733331278998431
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733331278998633
MESSAGE=Starting user@1000.service - User Manager for UID 1000...
JOB_ID=2177
INVOCATION_ID=b7c0ba44429b449081e80ad855bb7341
UNIT=user@1000.service
_SOURCE_REALTIME_TIMESTAMP=1733331278998683
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733331278998862
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733331278999131
I&'6
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/faststream
_SOURCE_REALTIME_TIMESTAMP=1733331278999355
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/faststream_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331278999560
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331278999761
[.B6.
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331278999972
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSink/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331279000187
MESSAGE=Endpoint unregistered: sender=:1.38 path=/MediaEndpoint/A2DPSource/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331279000392
SYSLOG_TIMESTAMP=Dec  4 20:54:39 
MESSAGE=pam_unix(systemd-user:session): session opened for user cudok(uid=1000) by cudok(uid=0)
_PID=4417
_AUDIT_SESSION=4
_AUDIT_LOGINUID=1000
_SYSTEMD_CGROUP=/user.slice/user-1000.slice/user@1000.service/init.scope
_SYSTEMD_OWNER_UID=1000
_SYSTEMD_UNIT=user@1000.service
_SYSTEMD_SLICE=user-1000.slice
_SOURCE_REALTIME_TIMESTAMP=1733331279004122
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:421: TypeError: Cannot read property 'smallSpacing' of null
CODE_LINE=421
_SOURCE_REALTIME_TIMESTAMP=1733331279037017
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/Battery.qml:27: TypeError: Cannot read property 'smallSpacing' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/Battery.qml
CODE_LINE=27
_SOURCE_REALTIME_TIMESTAMP=1733331279037031
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:157: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=157
_SOURCE_REALTIME_TIMESTAMP=1733331279037042
[J~Q
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:102: TypeError: Cannot read property 'smallSpacing' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml
CODE_LINE=102
_SOURCE_REALTIME_TIMESTAMP=1733331279037055
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:39: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=39
0`(#3v
_SOURCE_REALTIME_TIMESTAMP=1733331279037063
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:55: TypeError: Cannot read property 'smallSpacing' of null
CODE_LINE=55
]v?+X
_SOURCE_REALTIME_TIMESTAMP=1733331279037072
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:41: TypeError: Cannot read property 'largeSpacing' of null
CODE_LINE=41
_SOURCE_REALTIME_TIMESTAMP=1733331279037083
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/ActionButton.qml:42: TypeError: Cannot read property 'smallSpacing' of null
CODE_LINE=42
_SOURCE_REALTIME_TIMESTAMP=1733331279037093
_SOURCE_REALTIME_TIMESTAMP=1733331279037102
_SOURCE_REALTIME_TIMESTAMP=1733331279037109
_SOURCE_REALTIME_TIMESTAMP=1733331279037134
_SOURCE_REALTIME_TIMESTAMP=1733331279037141
_SOURCE_REALTIME_TIMESTAMP=1733331279037155
_SOURCE_REALTIME_TIMESTAMP=1733331279037163
_SOURCE_REALTIME_TIMESTAMP=1733331279037170
_SOURCE_REALTIME_TIMESTAMP=1733331279037177
_SOURCE_REALTIME_TIMESTAMP=1733331279037184
o= P
+o/h\
_SOURCE_REALTIME_TIMESTAMP=1733331279037191
_SOURCE_REALTIME_TIMESTAMP=1733331279037209
_SOURCE_REALTIME_TIMESTAMP=1733331279037215
_SOURCE_REALTIME_TIMESTAMP=1733331279037222
_SOURCE_REALTIME_TIMESTAMP=1733331279037228
_SOURCE_REALTIME_TIMESTAMP=1733331279037235
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:84: TypeError: Cannot read property 'gridUnit' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml
CODE_LINE=84
_SOURCE_REALTIME_TIMESTAMP=1733331279037244
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:114: TypeError: Cannot read property 'largeSpacing' of null
CODE_LINE=114
&uDr
_SOURCE_REALTIME_TIMESTAMP=1733331279037253
G5']P
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:100: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=100
_SOURCE_REALTIME_TIMESTAMP=1733331279037260
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:101: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=101
_SOURCE_REALTIME_TIMESTAMP=1733331279037266
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/SessionManagementScreen.qml:91: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=91
_SOURCE_REALTIME_TIMESTAMP=1733331279037273
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserList.qml:25: TypeError: Cannot read property 'gridUnit' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/UserList.qml
CODE_LINE=25
_SOURCE_REALTIME_TIMESTAMP=1733331279037295
Hy	);
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserList.qml:26: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=26
_SOURCE_REALTIME_TIMESTAMP=1733331279037315
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:103: TypeError: Cannot read property 'largeSpacing' of null
CODE_FILE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml
CODE_LINE=103
_SOURCE_REALTIME_TIMESTAMP=1733331279037332
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:44: TypeError: Cannot read property 'smallSpacing' of null
CODE_LINE=44
_SOURCE_REALTIME_TIMESTAMP=1733331279037342
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:69: TypeError: Cannot read property 'largeSpacing' of null
CODE_LINE=69
_SOURCE_REALTIME_TIMESTAMP=1733331279037350
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:95: TypeError: Cannot read property 'gridUnit' of null
CODE_LINE=95
_SOURCE_REALTIME_TIMESTAMP=1733331279037357
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:75: TypeError: Cannot read property 'longDuration' of null
_SOURCE_REALTIME_TIMESTAMP=1733331279037367
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/components/UserDelegate.qml:50: TypeError: Cannot read property 'longDuration' of null
CODE_LINE=50
_SOURCE_REALTIME_TIMESTAMP=1733331279037378
HXz8o
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:241: TypeError: Cannot read property 'longDuration' of null
CODE_LINE=241
_SOURCE_REALTIME_TIMESTAMP=1733331279037386
MESSAGE=file:///usr/share/sddm/themes/LyraS-dark/Main.qml:426: TypeError: Cannot read property 'longDuration' of null
CODE_LINE=426
_SOURCE_REALTIME_TIMESTAMP=1733331279037392
_SOURCE_REALTIME_TIMESTAMP=1733331279395748
_SOURCE_MONOTONIC_TIMESTAMP=87998393
MESSAGE=audit: type=1400 audit(1733331279.838:226): apparmor="AUDIT" operation="userns_create" class="namespace" info="Userns create - transitioning profile" profile="unconfined" pid=4672 comm="(uidsynth)" requested="userns_create" target="unprivileged_userns"
_SOURCE_MONOTONIC_TIMESTAMP=87998742
MESSAGE=audit: type=1400 audit(1733331279.838:227): apparmor="DENIED" operation="capable" class="cap" profile="unprivileged_userns" pid=4672 comm="(uidsynth)" capability=21  capname="sys_admin"
_SOURCE_MONOTONIC_TIMESTAMP=87998841
MESSAGE=audit: type=1400 audit(1733331279.838:228): apparmor="DENIED" operation="capable" class="cap" profile="unprivileged_userns" pid=4672 comm="(uidsynth)" capability=8  capname="setpcap"
MESSAGE=pam_unix(sddm-greeter:session): session closed for user sddm
_SOURCE_REALTIME_TIMESTAMP=1733331279793175
SYSLOG_TIMESTAMP=Dec  4 16:54:40 
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 7 threads of 4 processes of 1 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280077309
MESSAGE=[PAM] Closing session
_SOURCE_REALTIME_TIMESTAMP=1733331279793111
_SOURCE_REALTIME_TIMESTAMP=1733331280077466
MESSAGE=[PAM] Ended.
_SOURCE_REALTIME_TIMESTAMP=1733331279794086
_SOURCE_REALTIME_TIMESTAMP=1733331280077596
MESSAGE=Auth: sddm-helper exited successfully
wW}c1
_SOURCE_REALTIME_TIMESTAMP=1733331279794923
_SOURCE_REALTIME_TIMESTAMP=1733331280077748
MESSAGE=Greeter stopped. SDDM::Auth::HELPER_SUCCESS
_SOURCE_REALTIME_TIMESTAMP=1733331279794934
_SOURCE_REALTIME_TIMESTAMP=1733331280077876
MESSAGE=session-1.scope: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331279794992
_SOURCE_REALTIME_TIMESTAMP=1733331280078025
CODE_LINE=860
CODE_FUNC=session_stop_scope
3~s)
MESSAGE=Session 1 logged out. Waiting for processes to exit.
_SOURCE_REALTIME_TIMESTAMP=1733331279795462
_SOURCE_REALTIME_TIMESTAMP=1733331280078177
CODE_LINE=918
CODE_FUNC=session_finalize
MESSAGE_ID=3354939424b4456d9802ca8333ed424a
MESSAGE=Removed session 1.
_SOURCE_REALTIME_TIMESTAMP=1733331279795976
cQo:
_SOURCE_REALTIME_TIMESTAMP=1733331280078306
_SOURCE_REALTIME_TIMESTAMP=1733331280078433
_SOURCE_REALTIME_TIMESTAMP=1733331280078586
_SOURCE_REALTIME_TIMESTAMP=1733331280078715
_SOURCE_REALTIME_TIMESTAMP=1733331280078841
@N[;
MESSAGE=Successfully made thread 4674 of process 4674 owned by '1000' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4674 of process 4674 owned by '1000' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331280080515
MESSAGE=Supervising 8 threads of 5 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 8 threads of 5 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280080525
MESSAGE=Successfully made thread 4669 of process 4669 owned by '1000' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4669 of process 4669 owned by '1000' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331280081882
MESSAGE=Supervising 9 threads of 6 processes of 2 users.
tbj0
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 9 threads of 6 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280081890
MESSAGE=Successfully made thread 4673 of process 4673 owned by '1000' high priority at nice level -11.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4673 of process 4673 owned by '1000' high priority at nice level -11.
_SOURCE_REALTIME_TIMESTAMP=1733331280083111
MESSAGE=Supervising 10 threads of 7 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 10 threads of 7 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280083118
MESSAGE=Successfully made thread 4714 of process 4673 owned by '1000' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4714 of process 4673 owned by '1000' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331280084363
H<2d
MESSAGE=Supervising 11 threads of 7 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 11 threads of 7 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280084371
MESSAGE=Successfully made thread 4713 of process 4671 owned by '1000' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4713 of process 4671 owned by '1000' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331280085622
MESSAGE=Supervising 12 threads of 8 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 12 threads of 8 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280085630
HX$;
MESSAGE=Successfully made thread 4716 of process 4669 owned by '1000' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4716 of process 4669 owned by '1000' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331280086860
MESSAGE=Supervising 13 threads of 8 processes of 2 users.
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 13 threads of 8 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280086868
MESSAGE=Successfully made thread 4718 of process 4674 owned by '1000' RT at priority 20.
SYSLOG_RAW=<30>Dec  4 16:54:40 rtkit-daemon[3213]: Successfully made thread 4718 of process 4674 owned by '1000' RT at priority 20.
_SOURCE_REALTIME_TIMESTAMP=1733331280088104
MESSAGE=Supervising 14 threads of 8 processes of 2 users.
u;)6
SYSLOG_RAW=<31>Dec  4 16:54:40 rtkit-daemon[3213]: Supervising 14 threads of 8 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331280088111
MESSAGE=Started user@1000.service - User Manager for UID 1000.
b`W&
_SOURCE_REALTIME_TIMESTAMP=1733331279833898
MESSAGE=Started session-3.scope - Session 3 of User cudok.
JOB_ID=2275
INVOCATION_ID=a9d20cd9b34146508aa77d22a5defc57
UNIT=session-3.scope
_SOURCE_REALTIME_TIMESTAMP=1733331279834570
SYSLOG_TIMESTAMP=Dec  4 20:54:41 
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/ldac
_SOURCE_REALTIME_TIMESTAMP=1733331281279395
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331281279501
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_hd
_SOURCE_REALTIME_TIMESTAMP=1733331281279592
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331281279677
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx
_SOURCE_REALTIME_TIMESTAMP=1733331281279764
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331281279846
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/sbc
_SOURCE_REALTIME_TIMESTAMP=1733331281279929
MYO;
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331281280021
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/sbc_xq
_SOURCE_REALTIME_TIMESTAMP=1733331281280136
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_1
_SOURCE_REALTIME_TIMESTAMP=1733331281280249
HXYr
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_0
_SOURCE_REALTIME_TIMESTAMP=1733331281280367
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_1
_SOURCE_REALTIME_TIMESTAMP=1733331281280483
HIuE
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/aptx_ll_duplex_0
_SOURCE_REALTIME_TIMESTAMP=1733331281280594
5 fU|N
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/faststream
C%5m
_SOURCE_REALTIME_TIMESTAMP=1733331281280706
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/faststream_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331281280824
nt<ER
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331281280943
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/opus_05
_SOURCE_REALTIME_TIMESTAMP=1733331281281098
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSink/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331281281219
MESSAGE=Endpoint registered: sender=:1.53 path=/MediaEndpoint/A2DPSource/opus_05_duplex
_SOURCE_REALTIME_TIMESTAMP=1733331281281340
MESSAGE=gkr-pam: unlocked login keyring
_AUDIT_SESSION=3
_SYSTEMD_CGROUP=/user.slice/user-1000.slice/session-3.scope
_SYSTEMD_SESSION=3
_SYSTEMD_UNIT=session-3.scope
_SYSTEMD_INVOCATION_ID=a9d20cd9b34146508aa77d22a5defc57
_SOURCE_REALTIME_TIMESTAMP=1733331281373592
MESSAGE=pam_kwallet5(sddm:session): pam_kwallet5: pam_sm_open_session
SYSLOG_RAW=<87>Dec  4 20:54:41 sddm-helper: pam_kwallet5(sddm:session): pam_kwallet5: pam_sm_open_session
_SOURCE_REALTIME_TIMESTAMP=1733331281373607
0_Ws
hKp#
MESSAGE=Writing cookie to "/tmp/xauth_OvXkIG"
_SOURCE_REALTIME_TIMESTAMP=1733331281592426
MESSAGE=Starting X11 session: "" "/etc/sddm/Xsession \"/usr/bin/startplasma-x11\""
_SOURCE_REALTIME_TIMESTAMP=1733331281592511
MESSAGE=Session started true
_SOURCE_REALTIME_TIMESTAMP=1733331281784091
SYSLOG_TIMESTAMP=Dec  4 16:54:46 
SYSLOG_RAW=<31>Dec  4 16:54:46 rtkit-daemon[3213]: Supervising 14 threads of 8 processes of 2 users.
_SOURCE_REALTIME_TIMESTAMP=1733331286518312
_SOURCE_REALTIME_TIMESTAMP=1733331286518599
_SOURCE_REALTIME_TIMESTAMP=1733331286518917
MESSAGE=<info>  [1733331288.4930] agent-manager: agent[099ea03d7b356af8,:1.62/org.kde.plasma.networkmanagement/1000]: agent registered
NM_LOG_DOMAINS=AGENTS
BKBk
CODE_FILE=src/core/settings/nm-agent-manager.c
CODE_LINE=388
TIMESTAMP_MONOTONIC=53.328132
TIMESTAMP_BOOTTIME=96.328132
_SOURCE_REALTIME_TIMESTAMP=1733331288493097
MESSAGE=Stopping user@112.service - User Manager for UID 112...
JOB_ID=2375
JOB_TYPE=stop
MESSAGE_ID=de5b426a63be47a7b6ac3eaac82e2f6f
_SOURCE_REALTIME_TIMESTAMP=1733331289846520
*gLq
CODE_LINE=2880
CODE_FUNC=manager_start_special
MESSAGE=Activating special unit exit.target...
_SOURCE_REALTIME_TIMESTAMP=1733331289931750
MESSAGE=Stopped target default.target - Main User Target.
JOB_ID=121
MESSAGE_ID=9d1aaa27d60140bd96365438aad20286
_SOURCE_REALTIME_TIMESTAMP=1733331289931809
"{la
MESSAGE=Closed drkonqi-coredump-launcher.socket - Socket to launch DrKonqi for a systemd-coredump crash.
JOB_ID=134
_SOURCE_REALTIME_TIMESTAMP=1733331289931964
MESSAGE=Stopping dbus.service - D-Bus User Message Bus...
JOB_ID=87
_SOURCE_REALTIME_TIMESTAMP=1733331289932977
MESSAGE=Stopping filter-chain.service - PipeWire filter chain daemon...
JOB_ID=90
_SOURCE_REALTIME_TIMESTAMP=1733331289933311
#*=8
MESSAGE=Stopping pipewire-pulse.service - PipeWire PulseAudio...
JOB_ID=88
_SOURCE_REALTIME_TIMESTAMP=1733331289933488
MESSAGE=Stopped dbus.service - D-Bus User Message Bus.
_SOURCE_REALTIME_TIMESTAMP=1733331289934084
MESSAGE=Stopped filter-chain.service - PipeWire filter chain daemon.
_SOURCE_REALTIME_TIMESTAMP=1733331289934582
MESSAGE=Stopped pipewire-pulse.service - PipeWire PulseAudio.
_SOURCE_REALTIME_TIMESTAMP=1733331290009143
MESSAGE=Stopping wireplumber.service - Multimedia Service Session Manager...
JOB_ID=86
_SOURCE_REALTIME_TIMESTAMP=1733331290009504
HTS"
CODE_FILE=../src/main.c
CODE_LINE=372
CODE_FUNC=signal_handler
MESSAGE=stopped by signal: 
GLIB_DOMAIN=wireplumber
_SOURCE_REALTIME_TIMESTAMP=1733331290009555
CODE_LINE=364
CODE_FUNC=on_disconnected
MESSAGE=disconnected from pipewire
_SOURCE_REALTIME_TIMESTAMP=1733331290010251
MESSAGE=Stopped wireplumber.service - Multimedia Service Session Manager.
_SOURCE_REALTIME_TIMESTAMP=1733331290011936
MESSAGE=Stopping pipewire.service - PipeWire Multimedia Service...
JOB_ID=89
_SOURCE_REALTIME_TIMESTAMP=1733331290012137
MESSAGE=Stopped pipewire.service - PipeWire Multimedia Service.
_SOURCE_REALTIME_TIMESTAMP=1733331290013409
9}8w
MESSAGE=Removed slice session.slice - User Core Session Slice.
JOB_ID=80
_SOURCE_REALTIME_TIMESTAMP=1733331290013704
MESSAGE=Stopped target basic.target - Basic System.
 B'{
JOB_ID=119
_SOURCE_REALTIME_TIMESTAMP=1733331290013719
MESSAGE=Stopped target paths.target - Paths.
JOB_ID=118
_SOURCE_REALTIME_TIMESTAMP=1733331290013729
MESSAGE=Stopped target sockets.target - Sockets.
JOB_ID=106
_SOURCE_REALTIME_TIMESTAMP=1733331290013738
CaHK,8
MESSAGE=Stopped target timers.target - Timers.
JOB_ID=103
_SOURCE_REALTIME_TIMESTAMP=1733331290013754
MESSAGE=Stopped launchpadlib-cache-clean.timer - Clean up old files in the Launchpadlib cache.
JOB_ID=79
_SOURCE_REALTIME_TIMESTAMP=1733331290013764
MESSAGE=Stopped snap.firmware-updater.firmware-notifier.timer - Timer firmware-notifier for snap application firmware-updater.firmware-notifier.
Cq$?
JOB_ID=114
_SOURCE_REALTIME_TIMESTAMP=1733331290013773
HVIR
MESSAGE=Closed dbus.socket - D-Bus User Message Bus Socket.
JOB_ID=129
_SOURCE_REALTIME_TIMESTAMP=1733331290014042
MESSAGE=Closed dirmngr.socket - GnuPG network certificate management daemon.
JOB_ID=112
_SOURCE_REALTIME_TIMESTAMP=1733331290014128
H>a\"{q
MESSAGE=Closed gcr-ssh-agent.socket - GCR ssh-agent wrapper.
JOB_ID=110
_SOURCE_REALTIME_TIMESTAMP=1733331290014208
D'M	
MESSAGE=Closed gnome-keyring-daemon.socket - GNOME Keyring daemon.
JOB_ID=107
hM+Y
_SOURCE_REALTIME_TIMESTAMP=1733331290014282
MESSAGE=Closed gpg-agent-browser.socket - GnuPG cryptographic agent and passphrase cache (access for web browsers).
	1w-
JOB_ID=109
_SOURCE_REALTIME_TIMESTAMP=1733331290014356
MESSAGE=Closed gpg-agent-extra.socket - GnuPG cryptographic agent and passphrase cache (restricted).
$-AY
JOB_ID=125
5*(R
_SOURCE_REALTIME_TIMESTAMP=1733331290014430
$My#
MESSAGE=Stopping gpg-agent-ssh.socket - GnuPG cryptographic agent (ssh-agent emulation)...
JOB_ID=135
_SOURCE_REALTIME_TIMESTAMP=1733331290024181
MESSAGE=Closed gpg-agent.socket - GnuPG cryptographic agent and passphrase cache.
#vgh
JOB_ID=132
_SOURCE_REALTIME_TIMESTAMP=1733331290024242
MESSAGE=Closed keyboxd.socket - GnuPG public key management service.
JOB_ID=94
_SOURCE_REALTIME_TIMESTAMP=1733331290024314
MESSAGE=Closed pipewire-pulse.socket - PipeWire PulseAudio.
JOB_ID=115
_SOURCE_REALTIME_TIMESTAMP=1733331290024375
MESSAGE=Closed pipewire.socket - PipeWire Multimedia System Sockets.
JOB_ID=126
_SOURCE_REALTIME_TIMESTAMP=1733331290024437
MESSAGE=Closed pk-debconf-helper.socket - debconf communication socket.
JOB_ID=127
_SOURCE_REALTIME_TIMESTAMP=1733331290024495
MESSAGE=Closed snapd.session-agent.socket - REST API socket for snapd user session agent.
JOB_ID=116
_SOURCE_REALTIME_TIMESTAMP=1733331290024553
LG A
MESSAGE=Closed speech-dispatcher.socket - Speech Dispatcher Socket.
JOB_ID=98
_SOURCE_REALTIME_TIMESTAMP=1733331290024610
MESSAGE=Closed gpg-agent-ssh.socket - GnuPG cryptographic agent (ssh-agent emulation).
_SOURCE_REALTIME_TIMESTAMP=1733331290033558
MESSAGE=Removed slice app.slice - User Application Slice.
JOB_ID=133
_SOURCE_REALTIME_TIMESTAMP=1733331290033774
MESSAGE=Reached target shutdown.target - Shutdown.
JOB_ID=77
USER_INVOCATION_ID=59bf69b55f2249948bd3cc8ecb96295b
USER_UNIT=shutdown.target
_SOURCE_REALTIME_TIMESTAMP=1733331290033795
MESSAGE=Finished systemd-exit.service - Exit the Session.
JOB_ID=76
USER_INVOCATION_ID=33bfee1377174d06a54d0255826fe8b2
t>'0
USER_UNIT=systemd-exit.service
_SOURCE_REALTIME_TIMESTAMP=1733331290033911
MESSAGE=Reached target exit.target - Exit the Session.
JOB_ID=75
USER_INVOCATION_ID=2097daaad92d46c8bafcfe4021d3c27d
USER_UNIT=exit.target
_SOURCE_REALTIME_TIMESTAMP=1733331290033936
SYSLOG_IDENTIFIER=(sd-pam)
SYSLOG_TIMESTAMP=Dec  4 20:54:50 
MESSAGE=pam_unix(systemd-user:session): session closed for user sddm
_PID=3174
_COMM=(sd-pam)
_CMDLINE="(sd-pam)"
_SOURCE_REALTIME_TIMESTAMP=1733331290056837
MESSAGE=user@112.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331290057867
MESSAGE=Stopped user@112.service - User Manager for UID 112.
KS>/
_SOURCE_REALTIME_TIMESTAMP=1733331290058148
MESSAGE=Stopping user-runtime-dir@112.service - User Runtime Directory /run/user/112...
JOB_ID=2376
_SOURCE_REALTIME_TIMESTAMP=1733331290059415
=!yJ
INVOCATION_ID=8b17449adde24cf49e3a6388d74706f0
MESSAGE=run-user-112.mount: Deactivated successfully.
H!Am
UNIT=run-user-112.mount
_SOURCE_REALTIME_TIMESTAMP=1733331290067973
MESSAGE=user-runtime-dir@112.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331290068463
MESSAGE=Stopped user-runtime-dir@112.service - User Runtime Directory /run/user/112.
_SOURCE_REALTIME_TIMESTAMP=1733331290068597
MESSAGE=Removed slice user-112.slice - User Slice of UID 112.
JOB_ID=2378
_SOURCE_REALTIME_TIMESTAMP=1733331290069503
CODE_LINE=2577
CODE_FUNC=unit_log_resources
CPU_USAGE_NSEC=1371813000
CPU_USAGE_NSEC
MESSAGE=user-112.slice: Consumed 1.371s CPU time.
MESSAGE_ID=ae8f7b866b0347b9af31fe1c80b127c0
_SOURCE_REALTIME_TIMESTAMP=1733331290069550
MESSAGE=[system] Activating service name='org.kde.powerdevil.discretegpuhelper' requested by ':1.67' (uid=1000 pid=5339 comm="/usr/lib/x86_64-linux-gnu/libexec/org_kde_powerdev" label="unconfined") (using servicehelper)
_SOURCE_REALTIME_TIMESTAMP=1733331290329404
HMgq<(+
MESSAGE=[system] Successfully activated service 'org.kde.powerdevil.discretegpuhelper'
_SOURCE_REALTIME_TIMESTAMP=1733331290532322
MESSAGE=[system] Activating service name='org.kde.powerdevil.chargethresholdhelper' requested by ':1.67' (uid=1000 pid=5339 comm="/usr/lib/x86_64-linux-gnu/libexec/org_kde_powerdev" label="unconfined") (using servicehelper)
_SOURCE_REALTIME_TIMESTAMP=1733331290532886
MESSAGE=[system] Successfully activated service 'org.kde.powerdevil.chargethresholdhelper'
_SOURCE_REALTIME_TIMESTAMP=1733331290543006
MESSAGE=[system] Activating service name='org.kde.powerdevil.backlighthelper' requested by ':1.67' (uid=1000 pid=5339 comm="/usr/lib/x86_64-linux-gnu/libexec/org_kde_powerdev" label="unconfined") (using servicehelper)
_SOURCE_REALTIME_TIMESTAMP=1733331290543465
_STREAM_ID=de8e315b7c5f4338b6a37461b5323b4a
SYSLOG_IDENTIFIER=org.kde.powerdevil.backlighthelper
MESSAGE=org.kde.powerdevil: no kernel backlight interface found
_PID=5372
Z7$9
_COMM=backlighthelper
4k;#s
_EXE=/usr/lib/kauth/libexec/backlighthelper
_CMDLINE=/usr/lib/kauth/libexec/backlighthelper
MESSAGE=[system] Successfully activated service 'org.kde.powerdevil.backlighthelper'
_SOURCE_REALTIME_TIMESTAMP=1733331290553367
SYSLOG_IDENTIFIER=polkitd
SYSLOG_PID=1833
Kt.Nk
MESSAGE=Registered Authentication Agent for unix-session:3 (system bus name :1.81 [/usr/lib/x86_64-linux-gnu/libexec/polkit-kde-authentication-agent-1], object path /org/kde/PolicyKit1/AuthenLPKSHHRH
PRIORITY=6
PRIORITY
SYSLOG_FACILITY=3
SYSLOG_FACILITY
TID=1728
CODE_FILE=src/resolve/resolved-manager.c
CODE_FILE
CODE_LINE=330
CODE_LINE
CODE_FUNC=on_clock_change
CODE_FUNC
SYSLOG_IDENTIFIER=systemd-resolved
SYSLOG_IDENTIFIER
MESSAGE=Clock change detected. Flushing caches.
MESSAGE
_TRANSPORT=journal
	bp#u
_TRANSPORT
_PID=1728
_PID
_UID=991
_UID
_GID=991
_GID
_COMM=systemd-resolve
_COMM
_EXE=/usr/lib/systemd/systemd-resolved
_EXE
_CMDLINE=/usr/lib/systemd/systemd-resolved
_CMDLINE
_CAP_EFFECTIVE=2000
_CAP_EFFECTIVE
_SELINUX_CONTEXT=unconfined
_SELINUX_CONTEXT
_SYSTEMD_CGROUP=/system.slice/systemd-resolved.service
_SYSTEMD_CGROUP
_SYSTEMD_UNIT=systemd-resolved.service
_SYSTEMD_UNIT
-+W0
_SYSTEMD_SLICE=system.slice
_SYSTEMD_SLICE
_SYSTEMD_INVOCATION_ID=6970ce0bfa2143a7acd10d1b9b6bc745
_SYSTEMD_INVOCATION_ID
Kya$
_SOURCE_REALTIME_TIMESTAMP=1733331256776895
_SOURCE_REALTIME_TIMESTAMP
_BOOT_ID=4022fd76afe548c0b907708243500648
_BOOT_ID
_MACHINE_ID=c97b1fa3e1774360ab3a0bf70ca62eeb
_MACHINE_ID
_HOSTNAME=syscudo
_HOSTNAME
_RUNTIME_SCOPE=system
_RUNTIME_SCOPE
_SOURCE_MONOTONIC_TIMESTAMP=64936400
_SOURCE_MONOTONIC_TIMESTAMP
1G{1
_TRANSPORT=kernel
RHy<
SYSLOG_FACILITY=5
SYSLOG_IDENTIFIER=systemd-journald
SYSLOG_PID=470
SYSLOG_PID
MESSAGE=Time jumped backwards, rotating.
_PID=470
_UID=0
_GID=0
_COMM=systemd-journal
_EXE=/usr/lib/systemd/systemd-journald
oUc5
_CMDLINE=/usr/lib/systemd/systemd-journald
_CAP_EFFECTIVE=25402800cf
_SYSTEMD_CGROUP=/system.slice/systemd-journald.service
_SYSTEMD_UNIT=systemd-journald.service
_SYSTEMD_INVOCATION_ID=fa1246bb0c044c18a6173e3dc1a4ea41
SYSLOG_FACILITY=9
TID=1729
CODE_FILE=src/timesync/timesyncd-manager.c
CODE_LINE=607
CODE_FUNC=manager_receive_response
SYSLOG_IDENTIFIER=systemd-timesyncd
MESSAGE=Contacted time server 185.125.190.58:123 (ntp.ubuntu.com).
_PID=1729
_UID=996
_GID=996
_COMM=systemd-timesyn
_EXE=/usr/lib/systemd/systemd-timesyncd
_CMDLINE=/usr/lib/systemd/systemd-timesyncd
_CAP_EFFECTIVE=2000000
v!Eq
_SYSTEMD_CGROUP=/system.slice/systemd-timesyncd.service
^%&N
_SYSTEMD_UNIT=systemd-timesyncd.service
_SYSTEMD_INVOCATION_ID=cc56a595320e4d639e0d248be91669b8
_SOURCE_REALTIME_TIMESTAMP=1733331256776957
CODE_LINE=614
MESSAGE=Initial clock synchronization to Wed 2024-12-04 20:54:16.776868 +04.
MESSAGE_ID=7c8a41f37b764941a0e1780b1be2f037
MESSAGE_ID
MONOTONIC_USEC=64611923
Y+AKF
MONOTONIC_USEC
fW~|
REALTIME_USEC=1733331256776868
REALTIME_USEC
BOOTTIME_USEC=64611923
BOOTTIME_USEC
_SOURCE_REALTIME_TIMESTAMP=1733331256777003
MESSAGE=Display server started.
PRIORITY=7
CODE_FILE=unknown
CODE_LINE=0
CODE_FUNC=unknown
SYSLOG_IDENTIFIER=sddm
_PID=2304
_COMM=sddm
[w7.
_EXE=/usr/bin/sddm
_CMDLINE=/usr/bin/sddm
_CAP_EFFECTIVE=1ffffffffff
_SYSTEMD_CGROUP=/system.slice/sddm.service
_SYSTEMD_UNIT=sddm.service
FtVR
_SYSTEMD_INVOCATION_ID=18130ded412c4c99bb26824efe54ca6f
_SOURCE_REALTIME_TIMESTAMP=1733331257251429
H6f{
MESSAGE=Socket server starting...
_SOURCE_REALTIME_TIMESTAMP=1733331257251440
MESSAGE=Socket server started.
_SOURCE_REALTIME_TIMESTAMP=1733331257251611
MESSAGE=Loading theme configuration from "/usr/share/sddm/themes/LyraS-dark/theme.conf"
_SOURCE_REALTIME_TIMESTAMP=1733331257400179
MESSAGE=Greeter starting...
_SOURCE_REALTIME_TIMESTAMP=1733331257445232
_TRANSPORT=syslog
PRIORITY=5
SYSLOG_FACILITY=1
SYSLOG_IDENTIFIER=vboxdrv.sh
SYSLOG_TIMESTAMP=Dec  4 20:54:17 
SYSLOG_TIMESTAMP
MESSAGE=VirtualBox services started.
_PID=2981
_COMM=logger
_SYSTEMD_CGROUP=/system.slice/vboxdrv.service
_SYSTEMD_UNIT=vboxdrv.service
<x7)
_SYSTEMD_INVOCATION_ID=d79ee1df17f74d1d8cbbc2aefbf8a7cd
_SOURCE_REALTIME_TIMESTAMP=1733331257566208
TID=1
 "*wo
CODE_FILE=src/core/job.c
?r>!B
CODE_LINE=796
CODE_FUNC=job_emit_done_message
=wA6
SYSLOG_IDENTIFIER=systemd
MESSAGE=Started vboxdrv.service - VirtualBox Linux kernel module.
JOB_ID=221
JOB_ID
JOB_TYPE=start
JOB_TYPE
eaMvO
JOB_RESULT=done
JOB_RESULT
INVOCATION_ID=d79ee1df17f74d1d8cbbc2aefbf8a7cd
INVOCATION_ID
MESSAGE_ID=39f53479d3a045ac8e11786248231fbf
UNIT=vboxdrv.service
UNIT
_PID=1
_COMM=systemd
_EXE=/usr/lib/systemd/systemd
_CMDLINE=/sbin/init splash
_SYSTEMD_CGROUP=/init.scope
_SYSTEMD_UNIT=init.scope
_SYSTEMD_SLICE=-.slice
_SOURCE_REALTIME_TIMESTAMP=1733331257566974
ED5v
CODE_LINE=609
CODE_FUNC=job_emit_start_message
MESSAGE=Starting vboxautostart-service.service...
JOB_ID=142
INVOCATION_ID=55df50c52e144ac6a15bba0b17483a2d
+<;k
MESSAGE_ID=7d4958e842da4a758f6c1cdc7b36dcc5
UNIT=vboxautostart-service.service
_SOURCE_REALTIME_TIMESTAMP=1733331257580079
MESSAGE=Starting vboxballoonctrl-service.service...
JOB_ID=226
INVOCATION_ID=db7df623057a4090b888193f43542386
UNIT=vboxballoonctrl-service.service
_SOURCE_REALTIME_TIMESTAMP=1733331257580941
MESSAGE=Starting vboxweb-service.service...
JOB_ID=124
INVOCATION_ID=33d0e77145d4422e810087b639106702
UNIT=vboxweb-service.service
_SOURCE_REALTIME_TIMESTAMP=1733331257581807
MESSAGE=Started vboxautostart-service.service.
_SOURCE_REALTIME_TIMESTAMP=1733331257608082
CODE_FILE=src/core/unit.c
CODE_LINE=6013
CODE_FUNC=unit_log_success
MESSAGE_ID=7ad2d189f7e94e70a38c781354912448
INVOCATION_ID=ebc446a1a5db413f99af18eb31f8c74d
MESSAGE=NetworkManager-dispatcher.service: Deactivated successfully.
UNIT=NetworkManager-dispatcher.service
QgTI
_SOURCE_REALTIME_TIMESTAMP=1733331257955121
MESSAGE=Started vboxballoonctrl-service.service.
_SOURCE_REALTIME_TIMESTAMP=1733331258058309
_DO$
MESSAGE=Started vboxweb-service.service.
_SOURCE_REALTIME_TIMESTAMP=1733331258058789
MESSAGE=Reached target multi-user.target - Multi-User System.
JOB_ID=2
INVOCATION_ID=e4a0643d5b1b42d1b6092be7a1f6f879
UNIT=multi-user.target
_SOURCE_REALTIME_TIMESTAMP=1733331258059858
MESSAGE=Reached target graphical.target - Graphical Interface.
JOB_ID=1
INVOCATION_ID=c964b09fd84e46f39d88769f0373e64f
UNIT=graphical.target
_SOURCE_REALTIME_TIMESTAMP=1733331258060006
H9(h
MESSAGE=Starting systemd-update-utmp-runlevel.service - Record Runlevel Change in UTMP...
JOB_ID=164
INVOCATION_ID=cec11b2acf5f427296c3e97c14ed5f80
UNIT=systemd-update-utmp-runlevel.service
_SOURCE_REALTIME_TIMESTAMP=1733331258067257
HJP@tN
MESSAGE=Starting tlp.service - TLP system startup/shutdown...
JOB_ID=150
INVOCATION_ID=cb9231135f2d4d94b67e26be3faef384
UNIT=tlp.service
_SOURCE_REALTIME_TIMESTAMP=1733331258068201
MESSAGE=systemd-update-utmp-runlevel.service: Deactivated successfully.
_SOURCE_REALTIME_TIMESTAMP=1733331258071112
MESSAGE=Finished systemd-update-utmp-runlevel.service - Record Runlevel Change in UTMP.
_SOURCE_REALTIME_TIMESTAMP=1733331258071258
yRnGQ{c
_TRANSPORT=stdout
_STREAM_ID=f51165ff18d24999b642e02fbe6e9376
_STREAM_ID
SYSLOG_IDENTIFIER=tlp
MESSAGE=Applying power save settings...done.
_PID=2999
_COMM=tlp
_EXE=/usr/bin/dash
_CMDLINE=/bin/sh /usr/sbin/tlp init start
_SYSTEMD_CGROUP=/system.slice/tlp.service
_SYSTEMD_UNIT=tlp.service
_SYSTEMD_INVOCATION_ID=cb9231135f2d4d94b67e26be3faef384
MESSAGE=[PAM] Starting...
SYSLOG_IDENTIFIER=sddm-helper
_PID=2980
_COMM=sddm-helper
_EXE=/usr/lib/x86_64-linux-gnu/sddm/sddm-helper
_CMDLINE=/usr/lib/x86_64-linux-gnu/sddm/sddm-helper --socket /tmp/sddm-auth-8f4222ad-4051-4912-bf30-593de56e32d6 --id 2 --start "/usr/bin/sddm-greeter --socket /tmp/sddm-:0-QDCqOq --theme /usr/share/sddm/themes/LyraS-dark" --user sddm --greeter
_SOURCE_REALTIME_TIMESTAMP=1733331259242326
MESSAGE=[PAM] Authenticating...
_SOURCE_REALTIME_TIMESTAMP=1733331259242336
MESSAGE=[PAM] returning.
_SOURCE_REALTIME_TIMESTAMP=1733331259242401
MESSAGE=Setting battery charge thresholds...done.
NlVY
MESSAGE=Finished tlp.service - TLP system startup/shutdown.
_SOURCE_REALTIME_TIMESTAMP=1733331259339458
CODE_FILE=src/core/manager.c
CODE_LINE=3717
CODE_FUNC=manager_notify_finished
MESSAGE_ID=b07a249cd024414a82dd00cd181378ff
KERNEL_USEC=7346134
KERNEL_USEC
USERSPACE_USEC=59828577
USERSPACE_USEC
MESSAGE=Startup finished in 18.589s (firmware) + 8.217s (loader) + 7.346s (kernel) + 59.828s (userspace) = 1min 33.982s.
_SOURCE_REALTIME_TIMESTAMP=1733331259339664
	X	A
SYSLOG_FACILITY=10
A0H%~
SYSLOG_TIMESTAMP=Dec  4 20:54:19 
MESSAGE=pam_unix(sddm-greeter:session): session opened for user sddm(uid=112) by sddm(uid=0)
zYjS
_SOURCE_REALTIME_TIMESTAMP=1733331259576344
MESSAGE=Created slice user-112.slice - User Slice of U
```

## **5. Сколько будет 2-2?**
```bash
expr 2 - 2
```
```output
0
```


