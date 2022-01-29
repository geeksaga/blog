---
categories:
- index
date: "2016-12-16T00:00:00Z"
description: git 환경 설정 방법과 예제.
published: true
tags:
- git
- 개발환경
title: git 설정
---

{{< highlight ruby >}}
git config
git config --global user.name "name"
git config --global user.email "email address"
{{< / highlight >}}

사용중인 gitconfig 기본 설정(~/.gitconfig)

{{< highlight ruby >}}
[user]
	name = name
	email = email address
[core]
	autocrlf = input
	eol = native
[color]
	ui = auto
[alias]
	tree = log --oneline --decorate --all --graph
{{< / highlight >}}
