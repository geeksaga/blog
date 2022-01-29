---
comments: true
date: "2020-02-26T14:09:47Z"
description: TypeScript 설치.
published: true
tags:
- TypeScript
title: TypeScript Install
toc: true
toc_label: TypeScript Install
update: Wed Feb 26 18:09:47 KST 2020
---

TypeScript는 프로그래밍 언어이자 자바스크립트 생성 도구로, C#을 설계했던 Anders Hejlsberg가 엔터프라이즈 규모의 자바스크립트 개발자에서 도움이 되도록 오픈소스 프로젝트로 설계되었다.

## 준비사항 

  다음 프로그램들이 설치되어 있어야 한다.
  - [Node](https://nodejs.org/·"NodeJs.org"){:target="blank"}
  - [TypeScript](https://www.typescriptlang.org/ "TypeScript"){:target="blank"}

## TypeScript 설치

TypeScript 환경을 만들기 위해서는 TypeScript 컴파일러가 설치가 필요하다. 
`npm`을 이용하면 쉽게 설치가 가능하다.

`npm install -g typescirpt` 명령어를 사용해 전역 설치를 하자.

환경에 따라 `sudo` 권한이 필요할 수 있다.

```shell
❯ sudo npm install -g typescript                           
/usr/local/bin/tsc -> /usr/local/lib/node_modules/typescript/bin/tsc
/usr/local/bin/tsserver -> /usr/local/lib/node_modules/typescript/bin/tsserver
+ typescript@3.8.2
added 1 package from 1 contributor in 1.765s
```

설치후 TypeScript 컴파일러가 정상적으로 설치 되었는지 확인 해본다.

```shell
❯ tsc -v
Version 3.8.2
```

### First TypeScript

다음 내용을 *hello.ts*로 저장한다.

```typescript
console.log("hello TypeScript.")
```

### 컴파일

작성된 TypeScript 파일은 `tsc` 명령어를 통해서 컴파일 한다.

```shell
❯ tsc hello.ts

❯ ll
total 8.0K
-rw-rw-r-- 1 geeksaga geeksaga 34 Feb 26 17:18 hello.js
-rw-rw-r-- 1 geeksaga geeksaga 33 Feb 26 17:18 hello.ts
```

컴파일에 성공하면 *hello.js* 파일이 만들어진다.

만들어진 *hello.js* 파일은 `node` 명령어를 통해 실행 가능하다.

```shell
❯ node hello.js 
hello TypeScript.
```

### 컴파일 옵션

TypeScript는 *tsconfig.json* 파일을 통해 컴파일 옵션을 설정한다.

*tsconfig.json* 파일은 `tsc --init` 명령어를 통해 생성한다.

```shell
❯ tsc --init
message TS6071: Successfully created a tsconfig.json file.

❯ ll
total 16K
-rw-rw-r-- 1 geeksaga geeksaga 34 Feb 26 17:18 hello.js
-rw-rw-r-- 1 geeksaga geeksaga 33 Feb 26 17:18 hello.ts
-rw-rw-r-- 1 geeksaga geeksaga  5.8K Feb 26 17:26 tsconfig.json
```

아래는 *tsconfig.json* 파일의 요약 정보이다.

```json
{
    "compilerOptions": {
        "module": "commonjs",
        "target": "es6",
        "noImplicitAny": true,
        "removeComments": true,
        "preserveConstEnums": true,
        "sourceMap": false 
    },
    ...
}

```


## 참고 링크

* [Type Script][1]
* [tsconfig.json][2]

[1]: https://www.typescriptlang.org/ "TypeScript"
{:target="blank"}
[2]: https://www.typescriptlang.org/docs/handbook/tsconfig-json.html "tsconfig.json"
{:target="blank"}
