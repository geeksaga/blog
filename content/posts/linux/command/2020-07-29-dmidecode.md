---
date: "2020-07-29T00:00:00Z"
description: dmidecode command description
published: true
tags:
- command
- linux
- dmidecode
title: dmidecode command
---

linux의 dmidecode은 DMI(alternatively known as SMBIOS) 테이블 내용을 사람이 읽을 수 형태로 보여주는 명령어 입니다. 

이 명령어를 사용하려면 `root` 권한이 필요 합니다.

한번에 많은 정보를 보여주기 때문에 `more`를 이용하여 화면 단위로 내용을 보면 유용합니다.


```shell
$> sudo dmidecode | more
# dmidecode 3.0
Getting SMBIOS data from sysfs.
SMBIOS 2.7 present.
76 structures occupying 3048 bytes.
Table at 0x000EB530.

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
...
```

## 유용한 옵션
 - `-s` : DMI 문자열에 관련된 정보를 보여주는 옵션

```shell
$> sudo dmidecode -s
String keyword expected
Valid string keywords are:
  bios-vendor
  bios-version
  bios-release-date
  system-manufacturer
  system-product-name
  system-version
  system-serial-number
  system-uuid
  baseboard-manufacturer
  baseboard-product-name
  baseboard-version
  baseboard-serial-number
  baseboard-asset-tag
  chassis-manufacturer
  chassis-type
  chassis-version
  chassis-serial-number
  chassis-asset-tag
  processor-family
  processor-manufacturer
  processor-version
  processor-frequency

$>sudo dmidecode -s processor-version

Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz
```
 - `-t` : 타입에 관련된 정보를 보여주는 옵션

```shell
$> sudo dmidecode -t
dmidecode: option requires an argument -- 't'
Type number or keyword expected
Valid type keywords are:
  bios
  system
  baseboard
  chassis
  processor
  memory
  cache
  connector
  slot

$> sudo dmidecode -t processor
# dmidecode 3.0
Getting SMBIOS data from sysfs.
SMBIOS 2.7 present.

Handle 0x0041, DMI type 4, 42 bytes
Processor Information
	Socket Designation: SOCKET 0
	Type: Central Processor
	Family: Core i7
	Manufacturer: Intel
	ID: C3 06 03 00 FF FB EB BF
	Signature: Type 0, Family 6, Model 60, Stepping 3
	Flags:
		FPU (Floating-point unit on-chip)
		VME (Virtual mode extension)
		DE (Debugging extension)
		PSE (Page size extension)
		TSC (Time stamp counter)
		MSR (Model specific registers)
		PAE (Physical address extension)
		MCE (Machine check exception)
		CX8 (CMPXCHG8 instruction supported)
		APIC (On-chip APIC hardware supported)
		SEP (Fast system call)
		MTRR (Memory type range registers)
		PGE (Page global enable)
		MCA (Machine check architecture)
		CMOV (Conditional move instruction supported)
		PAT (Page attribute table)
		PSE-36 (36-bit page size extension)
		CLFSH (CLFLUSH instruction supported)
		DS (Debug store)
		ACPI (ACPI supported)
		MMX (MMX technology supported)
		FXSR (FXSAVE and FXSTOR instructions supported)
		SSE (Streaming SIMD extensions)
		SSE2 (Streaming SIMD extensions 2)
		SS (Self-snoop)
		HTT (Multi-threading)
		TM (Thermal monitor supported)
		PBE (Pending break enabled)
	Version: Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz
	Voltage: 1.0 V
	External Clock: 100 MHz
	Max Speed: 7000 MHz
	Current Speed: 3700 MHz
	Status: Populated, Enabled
	Upgrade: Other
	L1 Cache Handle: 0x0004
	L2 Cache Handle: 0x0005
	L3 Cache Handle: 0x0006
	Serial Number: Not Specified
	Asset Tag: Fill By OEM
	Part Number: Fill By OEM
	Core Count: 4
	Core Enabled: 1
	Thread Count: 2
	Characteristics:
		64-bit capable
```

## dmidecode --help

```shell
$>dmidecode --help
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

## 링크

 - [dmidecode Man page](https://linux.die.net/man/8/dmidecode "dmidecode")
