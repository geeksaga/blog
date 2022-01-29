---
comments: true
date: "2020-03-01T00:00:00Z"
description: Straw Agent 프로젝트 시작.
published: true
tags:
- Electron
- JavaScript
- TypeScript
- Go
title: Straw Agent init
toc: true
toc_labe: Straw Agent 환경 설정
---

토이 프로젝트(Toy or Side Project)를 여럿 만들어 보지만 항상 프로젝트의 재미있는 부분이 끝나면 그대로 마무리된다.

조금 부족하겠지만 프로젝트의 완성을 위해 초기 설정부터 배포까지 진행하도록 한다.

이것 역시 이대로 끝날 수도 있겠지...

# STRAW
STRAW의 목표는 데이터를 수집하는 에이전트 프로그램이다.

전부 처음 사용하는 기술셋으로 작업을 하기 때문에 [Telegraf](https://github.com/influxdata/telegraf "Telegraf"){:target="blank"}라는 오픈소스를 참고 하기로 했다.

Telegraf는 시계열 DB인 [InfluxDB](https://github.com/influxdata/influxdb "InfluxDB"){:target="blank"}를 만든 [influxdata](https://www.influxdata.com/ "influxdata"){:target="blank"}에서 만든 오픈소스 프로그램이다.

Telegraf를 선택한 이유는 시스템 모니터링과 메트릭스 수집 에이전트 이기도 하지만 언어가 [Go](https://golang.org/ "Go"){:target="blank"}로 되어 있어서다.

## 프로젝트 준비

1. 먼저 프로젝트 디렉토리를 생성한다.
```shell
$> mkdir straw
```

2. 버전관리를 위해 git 초기화를 한다.
```shell
$> cd straw
$> git init
```

3. 프로젝트 구조를 만든다.(여기서는 Go 프로젝트 구조)

  구글 검색을 통해서 다음 두 내용을 기준으로 프로젝트 구조를 만들었다.
  - [How to structure a Go project?](https://vsupalov.com/go-folder-structure/ "How to structure a Go project?"){:target="blank"}
  - [Standard Go Project Layout](https://github.com/golang-standards/project-layout "Standard Go Project Layout"){:target="blank"}

## 편집기 선택
### VisualStudioCode 
### VIM
### GoLand 


## 코딩 스타일 가이드
https://github.com/uber-go/guide/blob/master/style.md
https://github.com/TangoEnSkai/uber-go-style-guide-kr

## GitHub 저장소

내용을 일일이 다 기록하지는 못했지만 1차 작업 내용을 아래 주소로 공개한다.

[Straw Agent](https://github.com/geekflow/straw "Straw Agent")

중간에 귀찮아서 빼먹은 내용들은 계속 업데이트 예정이다.
