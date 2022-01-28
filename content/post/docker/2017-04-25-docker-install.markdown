---
categories:
- index
date: "2017-04-25T00:00:00Z"
description: Docker 설치
published: true
tags:
- docker
- 개발환경
title: Docker 설치
---

### Docker 설치
설치 환경 : Mint 17 (Ubuntu) 

{{< highlight ruby >}}
$> sudo apt-get install docker.io
{{< / highlight >}}

{{< highlight ruby >}}
$> sudo apt-get install docker.io
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following package was automatically installed and is no longer required:
  python3-pyqt4
Use 'apt-get autoremove' to remove it.
Suggested packages:
  btrfs-tools debootstrap lxc rinse
Recommended packages:
  aufs-tools
The following packages will be REMOVED:
  docker-engine
The following NEW packages will be installed:
  docker.io
0 upgraded, 1 newly installed, 1 to remove and 32 not upgraded.
Need to get 0 B/4,749 kB of archives.
After this operation, 55.3 MB disk space will be freed.
Do you want to continue? [Y/n] 
(Reading database ... 184935 files and directories currently installed.)
Removing docker-engine (17.04.0~ce-0~ubuntu-trusty) ...
docker stop/waiting
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
Selecting previously unselected package docker.io.
(Reading database ... 184733 files and directories currently installed.)
Preparing to unpack .../docker.io_1.6.2~dfsg1-1ubuntu4~14.04.1_amd64.deb ...
Unpacking docker.io (1.6.2~dfsg1-1ubuntu4~14.04.1) ...
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
Processing triggers for ureadahead (0.100.0-16) ...
Setting up docker.io (1.6.2~dfsg1-1ubuntu4~14.04.1) ...
Installing new version of config file /etc/init.d/docker ...
Installing new version of config file /etc/bash_completion.d/docker ...
Installing new version of config file /etc/default/docker ...
Installing new version of config file /etc/init/docker.conf ...
docker start/running, process 2405
Processing triggers for ureadahead (0.100.0-16) ...
{{< / highlight >}}


https://docs.docker.com/engine/installation/
