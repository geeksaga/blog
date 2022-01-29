---
date: "2020-08-05T00:00:00Z"
description: bash & zsh Shortcuts description
published: true
tags:
- linux
- shell
- shortcut
title: bash & zsh Shortcuts
---

## 자주 사용하는 단축키 목록

 - `CTRL + A` : 라인 시작으로 이동
 - `CTRL + E` : 라인 끝으로 이동
 - `CTRL + Left Arrow` : 한단어 왼쪽으로 이동
   * `ALT + B`
 - `CTRL + Right Arrow` : 한단어 오른쪽으로 이동
   * `ALT + F`
 - `CTRL + U (bash)` : 라인 시작 부터 현재 커서까지 삭제 
 - `CTRL + U (zsh)` : 라인 삭제
 - `CTRL + K` : 현재 커서 위치 부터 라인 끝까지 삭제
 - `CTRL + W` : 커서 앞 단어 삭제
 - `CTRL + R` : 히스토리 검색
 - `CTRL + G` : 히스토리 검색 빠져나오기
 - `CTRL + +` : 콘솔 폰트 키우기
 - `CTRL + -` : 콘솔 폰트 줄이기

`zsh` 사용시 `bindkey` 명령어를 이용하여 단축키 목록을 볼 수 있다.

## 전체 단축키 목록

```shell
"^@" set-mark-command
"^A" beginning-of-line
"^B" backward-char
"^D" delete-char-or-list
"^E" end-of-line
"^F" forward-char
"^G" send-break
"^H" backward-delete-char
"^I" fzf-completion
"^J" accept-line
"^K" kill-line
"^L" clear-screen
"^M" accept-line
"^N" down-line-or-history
"^O" accept-line-and-down-history
"^P" up-line-or-history
"^Q" push-line
"^R" fzf-history-widget
"^S" history-incremental-search-forward
"^T" fzf-file-widget
"^U" kill-whole-line
"^V" quoted-insert
"^W" backward-kill-word
"^X^B" vi-match-bracket
"^X^E" edit-command-line
"^X^F" vi-find-next-char
"^X^J" vi-join
"^X^K" kill-buffer
"^X^N" infer-next-history
"^X^O" overwrite-mode
"^X^U" undo
"^X^V" vi-cmd-mode
"^X^X" exchange-point-and-mark
"^X*" expand-word
"^X=" what-cursor-position
"^XG" list-expand
"^Xg" list-expand
"^Xr" history-incremental-search-backward
"^Xs" history-incremental-search-forward
"^Xu" undo
"^Y" yank
"^[^D" list-choices
"^[^G" send-break
"^[^H" backward-kill-word
"^[^I" self-insert-unmeta
"^[^J" self-insert-unmeta
"^[^L" clear-screen
"^[^M" self-insert-unmeta
"^[^_" copy-prev-word
"^[ " expand-history
"^[!" expand-history
"^[\"" quote-region
"^[\$" spell-word
"^['" quote-line
"^[-" neg-argument
"^[." insert-last-word
"^[0" digit-argument
"^[1" digit-argument
"^[2" digit-argument
"^[3" digit-argument
"^[4" digit-argument
"^[5" digit-argument
"^[6" digit-argument
"^[7" digit-argument
"^[8" digit-argument
"^[9" digit-argument
"^[<" beginning-of-buffer-or-history
"^[>" end-of-buffer-or-history
"^[?" which-command
"^[A" accept-and-hold
"^[B" backward-word
"^[C" capitalize-word
"^[D" kill-word
"^[F" forward-word
"^[G" get-line
"^[H" run-help
"^[L" down-case-word
"^[N" history-search-forward
"^[OA" up-line-or-beginning-search
"^[OB" down-line-or-beginning-search
"^[OC" forward-char
"^[OD" backward-char
"^[OF" end-of-line
"^[OH" beginning-of-line
"^[P" history-search-backward
"^[Q" push-line
"^[S" spell-word
"^[T" transpose-words
"^[U" up-case-word
"^[W" copy-region-as-kill
"^[[1;5C" forward-word
"^[[1;5D" backward-word
"^[[200~" bracketed-paste
"^[[2~" overwrite-mode
"^[[3~" delete-char
"^[[5~" up-line-or-history
"^[[6~" down-line-or-history
"^[[A" up-line-or-history
"^[[B" down-line-or-history
"^[[C" forward-char
"^[[D" backward-char
"^[[Z" reverse-menu-complete
"^[_" insert-last-word
"^[a" accept-and-hold
"^[b" backward-word
"^[c" fzf-cd-widget
"^[d" kill-word
"^[f" forward-word
"^[g" get-line
"^[h" run-help
"^[l" "ls^J"
"^[m" copy-prev-shell-word
"^[n" history-search-forward
"^[p" history-search-backward
"^[q" push-line
"^[s" spell-word
"^[t" transpose-words
"^[u" up-case-word
"^[w" kill-region
"^[x" execute-named-cmd
"^[y" yank-pop
"^[z" execute-last-named-cmd
"^[|" vi-goto-column
"^[^?" backward-kill-word
"^_" undo
" " magic-space
"!"-"~" self-insert
"^?" backward-delete-char
"\M-^@"-"\M-^?" self-insert
```

## 참고 링크
* [Shortcuts to improve your bash & zsh productivit][1]

[1]: http://www.geekmind.net/2011/01/shortcuts-to-improve-your-bash-zsh.html "Shortcuts to improve your bash & zsh productivity"
