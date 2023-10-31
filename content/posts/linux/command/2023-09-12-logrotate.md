---
date: "2023-09-12T00:00:00Z"
description: logrotate command description
published: true
tags:
- command
- linux
- logrotate
title: logrotate command
toc: true
toc_label: 차례
---

linux의 `logrotate` 명령어(CLI)는 시스템 로그를 회전(rotates), *압축(compresses)하여
메일로 전달 할 수 있는 명령어입니다.

## 기본 사용법

### logrotate LifeCyle

crontab -> cron.daily -> logrotate -> logrotate.conf -> logrotate.d

logrotate 프로그램 파일 : /usr/bin/logrotate
logrotate 설정 파일 : /etc/logrotate.conf
logrotate 프로세스 설정파일 : /etc/logrotate.d/
logrotate 로그 : /etc/cron.daily/logrotate

### logrotate.conf 설정

```text
# see "man logrotate" for details
# rotate log files weekly
# yearly
# monthly
# daily
weekly

# keep 4 weeks worth of backlogs
rotate 4

# restrict maximum size of log files
#size 20M

# create new (empty) log files after rotating old ones
create

# use date as a suffix of the rotated file
dateext

# uncomment this if you want your log files compressed
#compress

# Logs are moved into directory for rotation
# olddir /var/log/archive

# Ignore pacman saved files
tabooext + .pacorig .pacnew .pacsave

# Arch packages drop log rotation information into this directory
include /etc/logrotate.d

/var/log/wtmp {
    monthly
    create 0664 root utmp
    minsize 1M
    rotate 1
}

/var/log/btmp {
    missingok
    monthly
    create 0600 root utmp
    rotate 1
}
```
### logrotate.d

logrotate.d 에는 원하는 프로그램 로그 설정을 할 수 있습니다.

snort 설정을 참고하면 다음과 같습니다.

```text
/var/log/snort/*.log {
	sharedscripts
	missingok
	notifempty
	postrotate
		/usr/bin/systemctl try-restart snort.service > /dev/null 2>&1 || true
	endscript
}

/var/log/snort/alert_*.txt /var/log/snort/*.log.* {
	nocompress
	nocreate
        olddir /var/log/snort/old
	sharedscripts
	missingok
	notifempty
	postrotate
		/usr/bin/find /var/log/snort/old -maxdepth 1 -name 'alert_*' -type f -mtime +60 -exec /usr/bin/rm '{}' ';' > /dev/null 2>&1 || true
		/usr/bin/find /var/log/snort/old -maxdepth 1 -name '*.log*' -type f -mtime +60 -exec /usr/bin/rm '{}' ';' > /dev/null 2>&1 || true
		/usr/bin/systemctl try-restart snort.service > /dev/null 2>&1 || true
	endscript
}
$> 
```

### logrotate 상태 확인

`/var/lib/logrotate.status` 파일을 통해서 설정된 logrotate 상태를 확인 할 수 있습니다.

```shell
$> sudo cat /var/lib/logrotate.status
logrotate state -- version 2
"/var/log/account/pacct" 2023-9-14-0:0:37
"/var/log/cups/page_log" 2023-9-10-0:0:7
"/var/log/cups/error_log" 2023-9-13-0:0:17
"/var/log/snort/alert_*.txt" 2023-8-3-0:0:0
"/var/log/samba/log.smbd" 2023-1-9-0:0:0
"/var/log/lircd" 2023-1-9-0:0:0
"/var/log/cups/access_log" 2023-9-13-0:0:17
"/var/log/wtmp" 2023-1-27-0:0:41
"/var/log/samba/*.log" 2023-1-9-0:0:0
"/var/log/btmp" 2023-9-1-0:0:11
"/var/log/samba/log.nmbd" 2023-1-9-0:0:0
"/var/log/snort/*.log.*" 2023-8-3-0:0:0
"/var/log/rabbitmq/*.log" 2022-10-19-0:0:0
"/var/log/snort/*.log" 2023-8-3-0:0:0
```

logrotate.status의 날짜를 변경하여 logrotate를 실행하면 적용된 내용을 로그를 통해 확인 할 수 있습니다.


## help logrotate
logrotate 옵션은 하이픈 하나(-)로 시작하는 short 형식과 하이픈 두개(--)로 시작하는 long 형식의 옵션이 있습니다. 

```shell
$> logrotate --help
logrotate --help
Usage: logrotate [OPTION...] <configfile>
  -d, --debug                   Don't do anything, just test and print debug messages
  -f, --force                   Force file rotation
  -m, --mail=command            Command to send mail (instead of `/usr/bin/mail')
  -s, --state=statefile         Path of state file
      --skip-state-lock         Do not lock the state file
      --wait-for-state-lock     Wait for lock on the state file
  -v, --verbose                 Display messages during rotation
  -l, --log=logfile             Log file or 'syslog' to log to syslog
      --version                 Display version information

Help options:
  -?, --help                    Show this help message
      --usage                   Display brief usage message
```

## TLDR
```shell
$> tldr logrotate

  logrotate

  Rotates, compresses, and mails system logs.
  More information: https://manned.org/logrotate.

  - Trigger a run manually:
    logrotate path/to/logrotate.conf --force

  - Run using a specific command to mail reports:
    logrotate path/to/logrotate.conf --mail /usr/bin/mail_command

  - Run without using a state (lock) file:
    logrotate path/to/logrotate.conf --state /dev/null

  - Run and skip the state (lock) file check:
    logrotate path/to/logrotate.conf --skip-state-lock

  - Tell `logrotate` to log verbose output into the log file:
    logrotate path/to/logrotate.conf --log path/to/log_file
```

## 참고링크

* [man logrotate][1]

[1]: https://man.archlinux.org/man/logrotate.8 "man logrotate"
