---
comments: true
date: "2023-04-20"
description: Neovim Key Mappings 
header: null
published: true
tags:
- ide
- editor
- neovim
- keymapping
- whichkey
title: Neovim key Mappings을 legendary.nvim, which-key.nvim을 통해 사용하기
toc: true
toc_label: 목록
toc_sticky: true
---

## 개요
이전 [Neovim][1] 설정에서 일부 이벤트(:h events)에 대한 응답으로 함수 및 명령을 
실행하기 위해서 Vimscript autocmd(:h autocmd)를 사용했지만 Neovim(+0.7) 부터는 
Lua를 이용해 autocmd를 구성할 수 있는 API가 제공 됩니다.

여기에서 Lua autocmd(:h api-autocmd) 및 keymap(:h lua-keymap) 함수에 대해 살펴보겠습니다.

## Lua Autocmd 설정
[api-autocmd](https://neovim.io/doc/user/api.html#api-autocmd) 함수에 대한 도움말(:h api-autocmd)를 통해서 자세한 설명을 확인 할 수 있습니다.

- nvim_create_augroup - autocmd-group를 생성하거하고 id를 리턴 해주는 함수.
- nvim_create_autocmd - autocmd를 생성하는 함수.

## 예제
### Yank Highlight
이전 Vimscript를 통해 autocmd를 정의하면 다음과 같이 스크립트를 만들 수 있습니다.
```lua
local cmd = vim.cmd

-- Highlight on yank
cmd [[
  augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
```
Yank Highlight Vimscript 사용하기

Lua 함수를 통해 동일한 설정을 하려면 다음과 같이 할 수 있습니다.
```lua
-- See `:help vim.highlight.on_yank()`
local api = vim.api

-- Highlight on yank
local highlight_group = api.nvim_create_augroup("YankHighlight", { clear = true })
api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = highlight_group,
})
```
Yank Highlight Lua 함수 사용하기

- 기본적인 패턴은 `*`로 설정되어 있습니다.
- 이미 설정되어 있는 명령을 지우려면 `clear` 옵션을 true로 설정 합니다.

Lua 함수를 사용할 때 장점 중에 하나가 autocmd 사용시 `Callback 함수`를 사용할 수 있다는 것입니다.
```lua
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})
```
Yank Highlight Callback 함수 사용하기

Callback 기능을 [which-key.nvim](https://github.com/folke/which-key.nvim) 플러그인과 연동하여 
파일 타입에 따른 키 바인딩을 팝업 형태로 보여 줄 수 있습니다.
```lua

```


## 참고링크

* [Neovim][1]
* [Learn Vimscript the Hard Way - Autocommand][5]
* [Learn Vimscript the Hard Way - Basic Mapping][6]
* [legendary.nvim][2]
* [dressing.nvim][3]
* [which-key.nvim][4]

[1]: https://neovim.io/ "Neovim"
[2]: https://github.com/mrjones2014/legendary.nvim "legendary.nvim"
[3]: https://github.com/stevearc/dressing.nvim "dressing.nvim"
[4]: https://github.com/folke/which-key.nvim "which-key.nvim"
[5]: https://learnvimscriptthehardway.stevelosh.com/chapters/12.html "Learn Vimscript the Hard Way"
[6]: https://learnvimscriptthehardway.stevelosh.com/chapters/03.html "Learn Vimscript the Hard Way"
