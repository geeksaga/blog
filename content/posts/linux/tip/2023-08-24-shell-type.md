---
categories:
- linux
- shell
date: "2023-08-24T14:12:45Z"
description: Shell Type
published: true
tags:
- command
- linux
- shell
title: shell의 종류
toc: true
toc_label: 목록
toc_sticky: true
---

## 사용중인 Shell

```shell
$> echo $SHELL
/usr/bin/zsh
```

### Shell 종류
```shell
$> 
/usr/bin/sh # Bourne shell.
/usr/bin/ksh93 # Korn shell.
/usr/bin/bash # Bash shell.
/usr/bin/zsh # Z shell.
/usr/bin/csh # C Shell.
/usr/bin/tcsh # TC Shell.
/usr/bin/fish # Fish Shell.
...
```

### Shell 변경
Shell을 변경하는 것은 Shell을 실행 해 주는 것으로 사용 가능합니다.
(물론 $PATH에 등록되어 있고 해당 Shell이 설치되어 있는 경우)
```shell
$> bash
$> zsh
```

기본 Shell을 변경하고 싶을 경우에는 `chsh` 명령어를 사용하면 됩니다.

대화식 방법을 통해 설정하는 방법은 다음과 같습니다.
```shell
$> chsh
Password:
Changing the login shell for geeksaga
Enter the new value, or press ENTER for the default
        Login Shell [/usr/bin/bash]: /usr/bin/zsh
```

또 다른 방법으로는 `-s`옵션을 통해 직접 설정하는 방법은 다음과 같습니다.
```shell
$> chsh -s /usr/bin/zsh
```

