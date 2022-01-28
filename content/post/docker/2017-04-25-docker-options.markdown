---
categories:
- index
date: "2017-04-25T00:00:00Z"
description: Docker 옵션
published: true
tags:
- docker
- 개발환경
title: Docker 옵션
---

### Docker 옵션

{{< highlight ruby >}}
$> docker docker info
Containers: 1
Images: 3
Storage Driver: aufs
 Root Dir: /var/lib/docker/aufs
 Backing Filesystem: extfs
 Dirs: 5
 Dirperm1 Supported: false
Execution Driver: native-0.2
Kernel Version: 3.13.0-24-generic
Operating System: Ubuntu 14.04.3 LTS
CPUs: 8
Total Memory: 15.56 GiB
Name: geeksaga
ID: LABC:D6KO:QT4K:WOXZ:YLE4:CPBY:DFM2:2SKJ:A6ZG:MTLJ:M6NC:ANFW
WARNING: No swap limit support
{{< / highlight >}}


### Docker 설정 파일

/etc/default/docker 

{{< highlight ruby >}}
$> cat /etc/default/docker 
# Docker Upstart and SysVinit configuration file

# Customize location of Docker binary (especially for development testing).
#DOCKER="/usr/local/bin/docker"

# Use DOCKER_OPTS to modify the daemon startup options.
#DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4"

# If you need Docker to use an HTTP proxy, it can also be specified here.
#export http_proxy="http://127.0.0.1:3128/"

# This is also a handy place to tweak where Docker's temporary files go.
#export TMPDIR="/mnt/bigdrive/docker-tmp"
{{< / highlight >}}


### Docker Image 경로 수정

Docker 설정 파일에 추가 다음 옵션 추가.

DOCKER_OPTS="-g /home/docker"

{{< highlight ruby >}}
$> sudo stop docker
docker stop/waiting
$>  sudo start docker
docker start/running, process 5832
{{< / highlight >}}


{{< highlight ruby >}}
$> docker docker info
Containers: 1
Images: 3
Storage Driver: aufs
 Root Dir: /home/docker/aufs
 Backing Filesystem: extfs
 Dirs: 5
 Dirperm1 Supported: false
Execution Driver: native-0.2
Kernel Version: 3.13.0-24-generic
Operating System: Ubuntu 14.04.3 LTS
CPUs: 8
Total Memory: 15.56 GiB
Name: geeksaga
ID: LABC:D6KO:QT4K:WOXZ:YLE4:CPBY:DFM2:2SKJ:A6ZG:MTLJ:M6NC:ANFW
WARNING: No swap limit support
{{< / highlight >}}
