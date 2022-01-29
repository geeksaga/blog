---
categories:
- python
date: "2016-12-15T00:00:00Z"
description: 파이썬 설치 및 설정 예제.
published: true
tags:
- python
- 개발환경
title: 파이썬 설치 및 설정
---

python3 install for ubunto linux

apt-get install build-essential libbz2-dev libsqlite3-dev sqlite3

wget http://python.org/ftp/python/3.4.1/Python-3.4.1.tgz
tar -xvzf Python-3.4.1.tgz
cd Python-3.4.1


sudo apt-get install build-essential
sudo apt-get install libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev



./configure -with-zlib=/usr/include --prefix=/opt/python3.4.1 --enable-shared

vi Modules/Setup.dist  213/SSL


wget https://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11-py2.7.egg#md5=fe1f997bc722265116870bc7919059ea
sudo sh setuptools-0.6c11-py2.7.egg

curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py


./configure --prefix=$PYTHON_HOME
make
make test
make install
