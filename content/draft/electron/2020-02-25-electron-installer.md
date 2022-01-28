---
comments: true
date: "2020-02-25T00:00:00Z"
description: Electron Installer를 통한 프로젝트 배포.
draft: true
published: true
tags:
- Electron
- Installer
title: Electron Installer
toc: true
toc_labe: Electron Installer
---

Electron 프로그램 배포를 위한 작업 방법을 알아본다.

## Installer 종류

Electron Installer를 만들기 위해서는 사용되는 종류.

electron-builder
https://github.com/electron-userland/electron-builder

electron-packager
https://github.com/electron/electron-packager


http://electron.ebookchain.org/ko-KR/tutorial/application-distribution.html

### 개발용 패키지

### 배포

이제 앞서 만든 프로젝트 배포를 위해 Installer를 만들어 보자.
```shell
npm install electron-builder --save-dev
```
or
```shell
yarn add electron-builder --dev
yarn install
```

참고링크

* [Electron Builder][1]

[1]: https://github.com/electron-userland/electron-builder "Electron Builder"
{:target="blank"}
