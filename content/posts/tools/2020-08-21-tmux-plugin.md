---
comments: true
date: "2020-08-21T00:00:00Z"
description: tmux plugins
last_modified_at: Thu Aug 21 16:48:15 KST 2020
published: true
tags:
- tools
- tmux
- command
- tmux plugin
title: tmux plugins
toc: true
toc_label: 목록
toc_sticky: true
---

{% include figure image_path="/assets/images/tmux-plugins.png" caption="tmux plugins." class="third" %}

tmux에서 사용할 수 있는 플러그인은 별도 설치를 통해 동작하는 플러그인들과 TPM(Tmux Plugin Manager)를 통해 관리되는 플러그인 시스템이 있습니다.

이 중에 유용한 플러그인들을 기록합니다.


## TPM에서 관리되는 플러그인들
TPM 기반 플러그인을 사용하기 전에 TPM 플러그인 매니저가 설치되어 있어야 합니다.
[TPM(Tmux Plugin Manager)](https://github.com/tmux-plugins/tpm) 링크를 통해서 설치 할 수 있습니다.

참고링크를 통해 설치를 완료하자.

  - [tmux-yank](https://github.com/tmux-plugins/tmux-yank)
    : tmux 시스템 클립보드로 복사 해주는 플러그인 입니다.
  - [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
    : tmux에서 유요하다고 생각하는 설정들을 자동으로 설정해주는 플러그인 입니다.
  - [tmux-urlview](https://github.com/tmux-plugins/tmux-urlview)
    : 터미널(콘솔)에서 표시되는 URL을 오픈해주는 플러그인 입니다.
  - [tmux-open](https://github.com/tmux-plugins/tmux-open)
    : `tmux-urlview`는 대상이 URL이지만 `tmux-open` 플러그인은 tmux Copy 모드에서 highlight 된 파일이나 URL 등을 오픈 할 수 있는 플러그인 입니다. 


## 독립적인 툴과 플러그인들

 - [Tmuxifier](https://github.com/jimeh/tmuxifier)
   : 자주 사용하는 레이아웃을 저장하여 사용할 수 있는 도구 입니다.
 - [Tmuxinator](https://github.com/tmuxinator/tmuxinator)
   : Tmux 세션을 관리해주는 도구 입니다.
 - [rainbarf](https://github.com/creaktive/rainbarf)
   : CPU,RAM,Battery 상태를 차트 형태로 보여주는 플러그인 입니다.


## 참고링크

* [tmux-plugins][1]

[1]: https://github.com/tmux-plugin "tmux-plugins"
