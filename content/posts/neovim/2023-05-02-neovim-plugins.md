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

## Plugin/Package Management
- [lazy.nvim][4]
- [packer.nvim][3]
- [vim-plug](https://github.com/junegunn/vim-plug) Vim 플러그인 매니저지만 Neovim에서도 사용할 수 있습니다.

## Source or Text
- [nvim-treesitter][6] : [Tree-sitter][5] 인터페이스를 간단하고 쉽게 사용할 수 있는 방법을 제공하고,
이를 기반으로 몇 가지 기본기능을 제공하는 플러그인
- [indent-blankline.nvim][10] : indent 가이드를 제공해주는 플러그인

## UI
- [hydra.nvim][7] : [Emacs Hydra](https://github.com/abo-abo/hydra) 패키지를 Neovim으로 구현한 플러그인
- [nvim-tree][8] : File 탐색기 플러그인
- [nui.nvim][9] : UI 컴포넌트 라이브러리 

### Color
- [BEST Neovim Color themes](https://www.youtube.com/watch?v=_evGrg4l3CY) Youtube에서 여러 Color Theme을 소개해 주고 있습니다.
- [Nightfox](https://github.com/EdenEast/nightfox.nvim)
- [Melange](https://github.com/savq/melange-nvim)
- [Sonokai](https://github.com/sainnhe/sonokai)
- [Everforest](https://github.com/sainnhe/everforest)
- [Tokyo Night](https://github.com/folke/tokyonight.nvim)
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)

## Developer
- [nvim-lspconfig][2] : [Nvim LSP client](https://neovim.io/doc/user/lsp.html) (:help lsp)


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
