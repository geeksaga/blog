---
date: "2020-09-11T00:00:00Z"
description: dmidecode command description
published: true
tags:
- command
- linux
- dmidecode
title: dmidecode command
toc: true
toc_label: 차례
---

linux의 `dmidecode` 명령어를 통해 DMI(SMBIOS) 정보를 출력해 줍니다.


## 기본 사용법

`dmidecode` 명령을 사용하려면 `root` 권한이 있어야 합니다.

```shell
$> sudo dmidecode | more
# dmidecode 3.0
Getting SMBIOS data from sysfs.
SMBIOS 2.7 present.
76 structures occupying 3048 bytes.
Table at 0x000EB530.
...
```

## 응용

```shell
$> sudo dmidecode -t 0
# dmidecode 3.0
Getting SMBIOS data from sysfs.
SMBIOS 2.7 present.

Handle 0x0000, DMI type 0, 24 bytes
BIOS Information
	Vendor: American Megatrends Inc.
	Version: F6
	Release Date: 08/03/2013
	Address: 0xF0000
	Runtime Size: 64 kB
	ROM Size: 8192 kB
	Characteristics:
		PCI is supported
		BIOS is upgradeable
		BIOS shadowing is allowed
		Boot from CD is supported
		Selectable boot is supported
		BIOS ROM is socketed
		EDD is supported
		5.25"/1.2 MB floppy services are supported (int 13h)
		3.5"/720 kB floppy services are supported (int 13h)
		3.5"/2.88 MB floppy services are supported (int 13h)
		Print screen service is supported (int 5h)
		8042 keyboard services are supported (int 9h)
		Serial services are supported (int 14h)
		Printer services are supported (int 17h)
		ACPI is supported
		USB legacy is supported
		BIOS boot specification is supported
		Targeted content distribution is supported
		UEFI is supported
	BIOS Revision: 4.6
```

## TLDR

```shell
$> tldr dmidecode

  dmidecode

  Display the DMI (alternatively known as SMBIOS) table contents in a human-readable format.
  Requires root privileges.

  - Show all DMI table contents:
    sudo dmidecode

  - Show the BIOS version:
    sudo dmidecode -s bios-version

  - Show the system's serial number:
    sudo dmidecode -s system-serial-number

  - Show BIOS information:
    sudo dmidecode -t bios

  - Show CPU information:
    sudo dmidecode -t processor

  - Show memory information:
    sudo dmidecode -t memory
```

## Help

```shell
$> dmidecode --help
Usage: dmidecode [OPTIONS]
Options are:
 -d, --dev-mem FILE     Read memory from device FILE (default: /dev/mem)
 -h, --help             Display this help text and exit
 -q, --quiet            Less verbose output
 -s, --string KEYWORD   Only display the value of the given DMI string
 -t, --type TYPE        Only display the entries of given type
 -u, --dump             Do not decode the entries
     --dump-bin FILE    Dump the DMI data to a binary file
     --from-dump FILE   Read the DMI data from a binary file
 -V, --version          Display the version and exit
```
