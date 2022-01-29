---
comments: true
date: "2020-02-24T17:39:30Z"
description: Visual Studio Code 환경에서 TypeScript 개발하기.
published: true
tags:
- IDE
- VisualStudioCode
- TypeScript
- Debugging
title: Visual Studio Code for TypeScript
toc: true
toc_label: Code for TypeScript
update: Wed Feb 26 18:09:47 KST 2020
---

프로그래밍을 할 때 개발 환경 구성은 매우 중요하다.

특히나 처음 접하는 언어를 이용해서 프로그래밍을 할 때 도움이 되는 툴을 선택하는 건 쉽지(?) 않은 문제이다.

여기에서는 마이크로소프트에서 만든 개발 환경으로 윈도우, 리눅스, 맥에서 동작하며, 많이 사용되고 무료로 사용할 수 있는 [Visual Studio Code](https://code.visualstudio.com/ "Visual Studio Code"){:target="blank"}를 이용하여 TypeScript개발 환경을 구성해 본다.

## 준비사항 

  다음 프로그램들이 설치되어 있어야 한다.
  - [Visual Studio Code](https://code.visual studio.com/ "Visual Studio Code"){:target="blank"}
  - [Node](https://nodejs.org/·"NodeJs.org"){:target="blank"}
  - [TypeScript](/typescript/typescript-install/ "TypeScript"){:target="blank"}

## 비주얼 스튜디오 코드 둘러보기

![VisualStudioCode](/assets/images/20200224001.png)

소스 코드를 저장할 디렉터리를 만들고 비주얼 스튜디어 코드를 실행하면 명령 줄에서 코드를 실행 할 수 있다.

Ctrl + N으로 파일을 생성해 다음을 입력한다.

```typescript
console.log("hello vscode")
```

Ctrl + S로 파일을 *hello.ts*로 저장한다.

프로젝트를 빌드 하는 메뉴는 Terminal -> Run Build Task (Ctrl + Shift + B)이다.

![HelloVisualStudioCode](/assets/images/20200224002.png)

프로젝트를 빌드하면 비주얼 스튜디오 코드는 정의된 빌드 작업이 없다는 메시지를 보여준다. [Learn More](https://code.visualstudio.com/docs/editor/tasks "Learn More"){:target="blank"}

hello.ts파일을 저장한 디렉터리에 타입스크립트 설정파일(tsconfig.json)이 없는 경우에는 다음 명령어를 통해 만들어 준다.

```shell
❯ tsc --init
message TS6071: Successfully created a tsconfig.json file.

❯ ll
total 12K
-rw-rw-r-- 1 geeksaga geeksaga   27 Feb 24 16:27 hello.ts
-rw-rw-r-- 1 geeksaga geeksaga 5.8K Feb 24 16:10 tsconfig.json
```

tsc --init 명령을 통해 tsconfig.json 파일을 만들어 주면 현재 디렉터리에 두개의 파일이 있을 것이다.

이제 다시 프로젝트를 빌드하면 빌드 작업 구성을 위한 옵션이 제공된다. 

![SelectTheBuildTaskToRun](/assets/images/20200224003.png)

제공된 옵션 중에 tsc: build -tsconfig.json을 선택하면 .vscode 디렉터리가 만들어지고 해당 디렉터리 밑에 task.json 파일을 생성하고 파일을 열어준다.

![task.json](/assets/images/20200224004.png)

현재 디렉터리 내용은 다음과 같다.

```shell
❯ ls -alR           
.:
total 24
drwxrwxr-x 3 geeksaga geeksaga 4096 Feb 24 16:42 .
drwxr-xr-x 3 geeksaga geeksaga 4096 Feb 24 16:25 ..
-rw-rw-r-- 1 geeksaga geeksaga   27 Feb 24 16:27 hello.ts
-rw-rw-r-- 1 geeksaga geeksaga 5903 Feb 24 16:10 tsconfig.json
drwxrwxr-x 2 geeksaga geeksaga 4096 Feb 24 16:42 .vscode

./.vscode:
total 12
drwxrwxr-x 2 geeksaga geeksaga 4096 Feb 24 16:42 .
drwxrwxr-x 3 geeksaga geeksaga 4096 Feb 24 16:42 ..
-rw-rw-r-- 1 geeksaga geeksaga  358 Feb 24 16:42 tasks.json
```

이제 다시 빌드하면 hello.js 파일이 생성된다.

```shell
❯ ll
total 16K
-rw-rw-r-- 1 geeksaga geeksaga   43 Feb 24 17:05 hello.js
-rw-rw-r-- 1 geeksaga geeksaga   27 Feb 24 16:27 hello.ts
-rw-rw-r-- 1 geeksaga geeksaga 5.8K Feb 24 16:10 tsconfig.json
```

빌드가 성공적으로 끝났으니 이제 해당 파일을 실행해 보자.

Debug -> Start Without Debugging(Ctrl _+ F5)를 통해 실행 해보자.

![Start](/assets/images/20200224005.png)

Start Without Debugging 메뉴를 실행하면 hello.js를 실행 할 수 있는 목록이 보이는데 Node.js 옵션을 선택하면 경고창이 뜬다.

![launch.json](/assets/images/20200224006.png)

메시지를 보면 hello.ts를 실행할 프로그램이 없다는 경고 메시지가 보인다.

Open Launch.json 버튼을 클릭하면 .vscod 디렉터리에 launch.json 파일을 생성하고 파일을 열어준다.

![Run](/assets/images/20200224008.png)

launch.json 파일의 program 옵션을 "${workspaceFolder}/hello.js"로 변경하고 Ctrl + F5를 누르면 hello.js가 노드로 실행되고 DEBUG CONSOLE 부분에 실행 결과가 보인다.

![Run](/assets/images/20200224008.png)


## 디버깅

비주얼 스튜디어에는 타입스크립트 프로젝트 디버깅 툴이 내장되어 있다.

Debug -> Start Debugging(F5)를 통해 디버깅을 실행 해보자.

![debug](/assets/images/20200224007.png)

(작성중)



## 참고 링크

* [Learn More][1]

[1]: https://code.visualstudio.com/docs/editor/tasks "Learn More"
{:target="blank"}
