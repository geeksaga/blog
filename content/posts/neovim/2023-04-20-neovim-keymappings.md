---
comments: true
date: "2023-04-20"
description: Neovim Key Mappings 
header: null
published: false
tags:
- ide
- editor
- neovim
- keymapping
- whichkey
title: Neovim key Mappings과 WhichKey 플러그인
toc: true
toc_label: 목록
toc_sticky: true
---

[lazy.nvim][5] 플러그인 관리자 설정하기

## 개요
Neovim의 plugin 관리자는 vim-plug, packer와 같이 여러가지가 있는데 모던 형태의
사용하기 쉬운 [lazy.vim][5]을 사용해 보려고 합니다.


## 설치
기본적으로 [lazy.vim][5]을 사용하기 위해서는 Neovim >= 0.8.0 이상 버전과
Git >= 2.19.0 이상 버전이 설치되어 있어야 합니다.

설치된 Neovim과 Git 버전을 확인 합니다.
```shell
$> nvim -version
NVIM v0.8.3
Build type: Release
LuaJIT 2.1.0-beta3
Compiled by builduser

Features: +acl +iconv +tui
See ":help feature-compile"

   system vimrc file: "$VIM/sysinit.vim"
  fall-back for $VIM: "/usr/share/nvim"

Run :checkhealth for more info

$> git -v
git version 2.39.2
```

[lazy.vim][5]을 사용하기 위해서 쉬운 사용을 위해 [LazyVim Starter][6]를 
제공하기 때문에 쉽게 기본설정을 할 수 있습니다.

[LazyVim Starter][6]를 이용해 몇 가지 설정만 변경한 기본 설정으로 Neovim을
실행하면 아래 화면처럼 초기화가 됩니다.

![neovim_with_lazy_init](/assets/posts/neovim/nvim_with_lazy_init.png 
"layz 플러그인 관리자를 사용한 초기화 화면")

### Configuration
starter(nvim-with-lazy)의 기본 구조는 다음과 같습니다.

```shell
$> tree nvim-with-lazy
nvim-with-lazy
├── init.lua
└── lua
    ├── config
    │   ├── autocmds.lua
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins
        └── init.lua
```

#### init.lua
```lua
-- bootstrap lazy.nvim, LazyVim and your plugins
require "config.lazy"
```

`require`에서 사용된 Lua 파일은 `lua/config/lazy.lua` 파일을 의미합니다.

#### lua/config/lazy.lua
```lua
-- Install lazy.nvim
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Configure lazy.nvim
require("lazy").setup("plugins", {
 defaults = { lazy = true, version = nil },
 install = { missing = true, colorscheme = { "tokyonight", "gruvbox" } },
 checker = { enabled = true },
 performance = {
   rtp = {
     disabled_plugins = {
       "gzip",
       "matchit",
       "matchparen",
       "netrwPlugin",
       "tarPlugin",
       "tohtml",
       "tutor",
       "zipPlugin",
     },
   },
 },
})
vim.keymap.set("n", "<leader>z", "<cmd>:Lazy<cr>", { desc = "Manage Plugins" })
```

#### lua/plugins/init.lua
Lua를 이용해 설정하면 기본적으로 plugins 폴더의 init.lua 파일을 초기화하는데
내용은 다음과 같습니다.

[LazyVim Starter][6]에는 기본으로 포함되어 있지 않지만, 평소에 사용하던 기본적인
플러그인 몇 개([plenary.nvim](https://github.com/nvim-lua/plenary.nvim), [numb.nvim](https://github.com/nacro90/numb.nvim), [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim))를 추가하였습니다.

```lua
return {
  "nvim-lua/plenary.nvim",
  { "nacro90/numb.nvim", event = "BufReadPre", config = true },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    config = true,
  },
}
```

추가로 autocmds.lua, keymaps.lua, options.lua 템플릿을 설정 할 수 있습니다.

#### lua/config/autocmds.lua
```lua
-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
```

#### lua/config/keymaps.lua
```lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
```

#### lua/config/options.lua
```lua
-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
```

### Shell Script 만들기
이미 사용하고 있던 Neovim이 있다면 새로 적용하는 환경이 충돌이 발생하기 때문에
별로도 분리하는 Shell Script를 만들어 확인 후 적용하는 환경을 만듭니다.

`install.sh`는 기존에 동일한 설정이 있으면 삭제하고 [stow]({{< relref "../linux/command/2023-01-26-stow.md" >}})를
통해 링크를 만들어 주는 스크립트 입니다.


#### install.sh
```shell
#!/usr/bin/env sh

export NVIM_LAZY=~/.config/nvim-lazy

rm -rf $NVIM_LAZY

mkdir -p $NVIM_LAZY/share
mkdir -p $NVIM_LAZY/nvim

stow --restow --target=$NVIM_LAZY/nvim .
```

`nv.sh`는 설정된 환경으로 Neovim을 실행할 수 있는 스크립트 입니다.

#### nv.sh
```shell
#!/usr/bin/env sh

export NVIM_LAZY=~/.config/nvim-lazy

alias nv='XDG_DATA_HOME=$NVIM_LAZY/share XDG_CONFIG_HOME=$NVIM_LAZY/nvim'
export nv

nv $1
```

다음 처럼 사용 할 수 있습니다.
`PATH`에 추가하거나 nv 설정을 환경변수에 추가하여 사용 할 수도 있습니다.
```shell
$> ./nv.sh init.lua
```


#### ColorScheme
`lua/plugins/colorscheme/` 폴더에 설정을 추가해서 ColorScheme을 적용할 수 있습니다.

Neovim에서는 ColorScheme를 적용하기 전에 [Styler](https://github.com/folke/styler.nvim) 플러그인을 통해 파일 타입별로 다른 ColorScheme을 적용할 수 있습니다.

ColorScheme은 여러가지가 있지만 평소 사용했던 ColorScheme은 [gruvbox](https://github.com/ellisonleao/gruvbox.nvim),
[tokyonight](https://github.com/folke/tokyonight.nvim), [catppuccin](https://github.com/catppuccin/nvim)
정도가 있습니다.

다른 ColorScheme도 많이 있으니 원하는 걸 선택해 적용하시면 됩니다.

`lua/plugins/colorscheme/init.lua` 예제 파일 입니다.

```lua
return {
  {
    "folke/styler.nvim",
    event = "VeryLazy",
    config = function()
      require("styler").setup {
        themes = {
          markdown = { colorscheme = "gruvbox" },
          help = { colorscheme = "catppuccin-mocha", background = "dark" },
        },
      }
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local tokyonight = require "tokyonight"
      tokyonight.setup { style = "storm" }
      tokyonight.load()
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup()
    end,
  },
}
```

`tokyonight` ColorScheme이 기본으로 적용된 화면은 아래 화면과 같습니다.

![neovim_with_lazy_colorscheme](/assets/posts/neovim/nvim_with_lazy_colorscheme.png 
"layzNvim에 colorscheme 플러그인을 적용했을 때")

현재까지 설치된 플러그인 폴더 구조는 다음과 같습니다.
```shell
$> tree nvim-with-lazy
nvim-with-lazy
├── init.lua
└── lua
    ├── config
    │   ├── autocmds.lua
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins
        ├── colorscheme
        │   └── init.lua
        └── init.lua
```
여기에 평소 사용하고 있던 플러그인이나 새로운 플러그인 추가하여 사용하시면
나만의 Neovim 설정이 완료됩니다.

## 참고링크

* [Neovim][1]
* [Getting started using Lua in Neovim][2]
* [Lua][3]
* [LAZYVIM][4]
* [lazy.nvim][5]
* [LazyVim Starter][6]
* [XDG Base Directory Spectification][7]

[1]: https://neovim.io/ "Neovim"
[2]: https://github.com/nanotee/nvim-lua-guide "Getting started using Lua in Neovim"
[3]: https://www.lua.org/ "Lua"
[4]: https://www.lazyvim.org/ "LAZYVIM"
[5]: https://github.com/folke/lazy.nvim "lazy.nvim is modern plugin manager for Neovim"
[6]: https://github.com/LazyVim/starter "LazyVim Starter"
[7]: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html#variables "XDG Base Directory Spectification"
