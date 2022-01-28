---
categories:
- python
date: "2016-12-16T00:00:00Z"
description: 파이썬3 가상환경(venv) 설정.
published: true
tags:
- python
- venv
- 개발환경
title: 파이썬3 가상환경(venv) 설정
---

Python virtualenv 를 사용하는 기본적인 목적은 프로젝트 별로 필요한 환경을 만들기 위해 사용한다.


### virtualenv 설정 하기

Linux 계열 환경에서 Python3 이 설치 되어있을 경우 가상환경 설정은 다음과 같은 순서로 진행한다.
설정은 사용자 홈 디렉토리 밑에 설정하는 것으로 한다.

{{< highlight ruby >}}
$> cd ~
$> mkdir dev_env
$> python3 -m venv dev_env
{{< / highlight >}}

설치된 가상환경을 이용하려면 해당 가상환경을 활성화해야 한다. 

{{< highlight ruby >}}
$> source ~/dev_env/bin/activate
{{< / highlight >}}

가상환경을 종료하려면 가상머신을 비활성화 한다.

{{< highlight ruby >}}
$> source ~/dev_env/bin/deactivate
{{< / highlight >}}


### vritualenv 활용
 - virtualenv 환경에 설치된 package 목록 가져오기

{{< highlight ruby >}}
$> pip freeze > requirements.txt 
{{< / highlight >}}

  freeze 옵션을 사용하면 현재 가상환경에 설치된 package 이름과 버전이 출력된다.

{{< highlight ruby >}}
click==6.6
Flask==0.11.1
itsdangerous==0.24
Jinja2==2.8
MarkupSafe==0.23
newrelic==2.76.0.55
Werkzeug==0.11.11
wheel==0.24.0
{{< / highlight >}}

 - 새로운 virtualenv 환경에 필요한 package 설치하기 

{{< highlight ruby >}}
$> pip install -r requirements.txt
{{< / highlight >}}
