---
comments: true
date: "2023-05-02"
description: Neovim Plugins
header: null
published: true
tags:
- ide
- editor
- neovim
- plugins
title: 한 번쯤 사용해 볼 만한 Neovim Plugins 목록
toc: true
toc_label: 목록
toc_sticky: true
---

한 번쯤 사용해 봤거나 사용해 볼 만한 플러그인들

## IDE
- [LunarVim](https://www.lunarvim.org/) : Neovim 위에 IDE 레이어를 입혀 별도의 플러그인 설정이 필요없는 훌륭한 Neovim 기반의 IDE 입니다.
- [SpaceVim](https://spacevim.org/) : SpaceVim 역시 vim/neovim 호환이 가능한 완성형 패키지로 제공되고 있는 프로그램 입니다.
- [lazy.nvim][4] : LazyVim 역시 플러그인 관리자로 사용할 수 있지만 기본 설정 만으로 IDE 처럼 사용할 수 있는 프로그램 입니다.
- 

## Plugin/Package Management
- [lazy.nvim][4]
- [packer.nvim][3]
- [vim-plug](https://github.com/junegunn/vim-plug) : Vim 플러그인 매니저지만 Neovim에서도 사용할 수 있습니다.
- [mason.nvim][17] : 많은 기등들이 있지만 주로 cmd 도구와 LSP 서버 관리를 위해 사용하고 있습니다.

## Source or Text
- [nvim-treesitter][6] : [Tree-sitter][5] 인터페이스를 간단하고 쉽게 사용할 수 있는 방법을 제공하고,
이를 기반으로 몇 가지 기본기능을 제공하는 플러그인
- [indent-blankline.nvim][10] : indent 가이드를 제공해주는 플러그인

## UI
- [hydra.nvim][7] : [Emacs Hydra](https://github.com/abo-abo/hydra) 패키지를 Neovim으로 구현한 플러그인
- [nvim-tree][8] : File 탐색기 플러그인
- [neo-tree.nvim][16] : 또 다른 File 탐색기 플러그인
- [nui.nvim][9] : UI 컴포넌트 라이브러리
- [dressing.nvim][15] : 기본 vim.ui 인터페이스를 개선하는 Neovim 플러그인
- [which-key.nvim][11] : [emacs-which-key](https://github.com/justbur/emacs-which-key) 패키지를 Neovim으로 구현한 프러그인으로 바인딩된 키를 팝업 형태로 보여주는 플러그인 입니다.

### Style & Color
- [BEST Neovim Color themes](https://www.youtube.com/watch?v=_evGrg4l3CY) Youtube에서 여러 Color Theme을 소개해 주고 있습니다.
- [Nightfox](https://github.com/EdenEast/nightfox.nvim)
- [Melange](https://github.com/savq/melange-nvim)
- [Sonokai](https://github.com/sainnhe/sonokai)
- [Everforest](https://github.com/sainnhe/everforest)
- [Tokyo Night](https://github.com/folke/tokyonight.nvim)
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) : Snazzy :) 버퍼라인 플러그인

## Developer
- [nvim-lspconfig][2] : [Nvim LSP client](https://neovim.io/doc/user/lsp.html) (:help lsp)
- [telescope.nvim][12] : Fuzzy finder
- [plenary.nvim][13] : Lua 함수를 쉽게(?) 사용할 수 있도록 도와주는 플러그인.
- [lualine.nvim][14] : 상태바를 보여주는 플러그인.


## 참고링크

* [Neovim][1]
* [lazy.nvim][4]
* [Tree-sitter][5]
* [nvim-treesitter][6]

[1]: https://neovim.io/ "Neovim"
[2]: https://github.com/neovim/nvim-lspconfig "nvim-lspconfig"
[3]: https://github.com/wbthomason/packer.nvim "packer.nvim"
[4]: https://github.com/folke/lazy.nvim "lazy.nvim is modern plugin manager for Neovim"
[5]: https://tree-sitter.github.io/tree-sitter/ "Tree-sitter"
[6]: https://github.com/nvim-treesitter/nvim-treesitter "nvim-treesitter"
[7]: https://github.com/anuvyklack/hydra.nvim "Hydra.nvim"
[8]: https://github.com/nvim-tree/nvim-tree.lua "nvim-tree"
[9]: https://github.com/MunifTanjim/nui.nvim "nui.nvim"
[10]: https://github.com/lukas-reineke/indent-blankline.nvim "indent-blankine.nvim"
[11]: https://github.com/folke/which-key.nvim "Whick Key"
[12]: https://github.com/nvim-telescope/telescope.nvim "telescope.nvim"
[13]: https://github.com/nvim-lua/plenary.nvim "plenary.nvim"
[14]: https://github.com/nvim-lualine/lualine.nvim "lualine.nvim"
[15]: https://github.com/stevearc/dressing.nvim "Dressing.nvim"
[16]: https://github.com/nvim-neo-tree/neo-tree.nvim "Neo-tree.nvim"
[17]: https://github.com/williamboman/mason.nvim "mason.nvim"
