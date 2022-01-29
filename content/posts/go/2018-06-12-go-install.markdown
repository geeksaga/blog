---
categories:
- go
date: "2018-06-12T00:00:00Z"
description: Go 프로그래밍 언어 설치
published: true
tags:
- go
- programming
title: Go lang install
---

# Go lang 다운로드 및 설치하기. 
먼저 [Download Go](https://golang.org/dl/ "Download Go"){:target="blank"} 에서 해당 환경에 맞는 Go 버전을 다운로드하여 설치한다. 

현재 기준으로 최신 Stable version은 1.10.3 버전이다. 

Linux를 기준으로 설치 방법은 다운받은 Go 파일의 압축을 해제하기만 하면 된다.
시작하기 가이드에 있는 경로에 설치 하기 위해 다음 명령어를 이용하여 압축을 해지한다.

{{< highlight shell >}}
sudo tar -C /usr/local -xzf go1.10.3.linux-amd64.tar.gz
chown -R [OWNER]:[GROUP] go
{{< / highlight >}}

설치후 환경변수에 패스를 등록해준다.

{{< highlight shell >}}
export GOROOT="/usr/local/go"
export PATH=$PATH:$GOROOT/bin 
{{< / highlight >}}

설정 및 설치가 잘되었는지 확인 해본다.
{{< highlight shell >}}
$ go version 
go version go1.10.3 linux/amd64
{{< / highlight >}}


첫 번째 go 프로그램인 hello world를 작성해서 설치 및 설정을 확인해 보자.
go 소스를 작성하기 전에 workspace 디렉토리를 생성한다.
기본 workspace는 $HOME/go를 인식한다.
기본 workspace를 변경하려면 환경변수에 GOPATH를 등록해주면 된다.

{{< highlight ruby >}}
export GOPATH=/home/go
{{< / highlight >}}

$GOPATH로 이동하여 src/hello.go 파일을 작성한다.

{{< highlight go >}}
package main

import "fmt"

func main() {
    fmt.Printf("hello, world\n")

}
{{< / highlight >}}

go build 명령어를 이용하여 빌드 할 경우 빌드 파일 이름은 소스 파일이 있는 현재 디렉토리 이름으로 만들어진다.

{{< highlight shell >}}
$ pwd 
/home/go/src
$ go build
$ ls -al
-rw-rw-r-- 1 go go      82 Jun 11 11:00 hello.go
-rwxrwxr-x 1 go go 2020012 Jun 11 11:01 src 
{{< / highlight >}}

빌드할 파일을 직접 입력하거나 -o 옵션을 이용해서 output 파일 이름을 지정하면
파일 이름과 같은 실행 파일 또는 원하는 실행 파일 이름으로 빌드가 된다.  
{{< highlight shell >}}
$ go build hello.go
$ ls -al
-rwxrwxr-x 1 go go 2020012 Jun 11 11:01 hello 
-rw-rw-r-- 1 go go      82 Jun 11 11:00 hello.go
$ go build -o hell
$ ls -al
-rwxrwxr-x 1 go go 2020012 Jun 11 11:01 hell 
-rw-rw-r-- 1 go go      82 Jun 11 11:00 hello.go
{{< / highlight >}}

생성된 실행 파일을 실행하면 결과를 볼 수 있다.

{{< highlight shell >}}
$ ./hello
hello, world
{{< / highlight >}}

## 참고 링크

* [Getting Started][1]
* [Setting GOPATH][2]

[1]: https://golang.org/doc/install "Getting Started"
{:target="blank"}
[2]: https://github.com/golang/go/wiki/SettingGOPATH "Setting GOPATH"
{:target="blank"}
