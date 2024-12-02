# My neovim setup

## Requirements

1. [Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
   1. install clang, g++, gcc
   2. install [clangd](https://clangd.llvm.org/installation)
2. [Nerd font](https://www.nerdfonts.com)
3. [Luarocs](https://luarocks.org)
4. [lazygit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#installation)
5. [git](https://git-scm.com/downloads/linux)
6. [Emmet](https://github.com/olrtg/emmet-language-server)
7. [Ollama with Llama3.2](https://ollama.com)
8. [Mongodb](https://www.mongodb.com/docs/mongodb-shell/install)
9. [Btop](https://github.com/aristocratos/btop)
10. [Node Version Manager](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
11. [CPPtools](https://github.com/microsoft/vscode-cpptools/releases)
    1. Download the .vsix file and extract it.
    2. replace dap.adapters.cppdbg.command = "/Path to CPPtools folder/extension/debugAdapters/bin/OpenDebugAD7" in debugger.lua file

## Installation

Move to the ~/.config directory and copy the following commands

```
$ cd ~/.config
$ git clone https://github.com/noob-programmer9012/nvim.git
```

Your file structure should look like this

```
~/.config/nvim
├── lua
│   ├── config
│   │   └── lazy.lua
│   └── plugins
│       ├── spec1.lua
│       ├── **
│       └── spec2.lua
└── init.lua
```

## Shortcuts

** space ** key is a leader key

1. Buffer navigation

   - \<leader\>bj - Buffer Jump with named files
   - \<leader\>ba - Close all other buffer except the one that is in view
   - \<leader\>be - Choose which buffer to close
   - \<leader\>bl - Close all buffer on right
   - \<leader\>bh - close all buffer on left
   - \<leader\>[1-9] - Jump to buffer from left to right

2. Colorpicker

   - \<C-p\> - Open color picker
     - h - decrease value
     - l - increade valueA
     - a - open opacity value

3. Comment block

   - \<leader\>[/] - toggle comment line
   - \<leader\>[shift + /] - toggle comment block
   - \<leader\>[O] - add comment on the line above
   - \<leader\>[o] - add comment on the line below
   - \<keader\>[A] - add comment at the end of line

4. Code related and completion

   - \<C-p\> - complete code
   - \<CR\> - Accept currently selected item.
   - \<K\> - Open function definition.
     - \<K\> - navigate into function definition.
   - \<leader\>ca - open code action.
   - \<leader\>gd - go to definition.
   - \<leader\>li - lsp info

5. Nvim Tree

   - \<leader\>e - toggle file tree
   - \<C-h\> - move from buffer to tree
   - \<C-l\> - move from tree to buffer
   - \<g?\> - nvim tree help
   - c - copy file
   - p - paste file
   - r - rename file
   - d - delete file
   - a - create file or directory(for directory use directoryname/)
   - m - toggle bookmark
   - bmv - move bookmarked
   - bd - delete bookmarked
   - [BS] - close directory

6. Telescope

   - \<leader\>ff - find fuzzy files
   - \<leader\>fg - fuzzy search text

7. General

   - \<C-/\> - Toggle Terminal
   - \<leader\>gg - open lazygit
   - \<leader\>gm - open mongosh
   - \<leader\>gb - open btop
   - \<leader\>go - open ollama
   - \<A\> - move to the lase terminal line

8. Debbuger - for c and cpp only
   - \<leader\>bd - toggle breakpoint
   - \<leader\>B - set Breakpoint
   - \<leader\>bdd - continue
   - \<leader\>bdj - step over
   - \<leader\>bdi - step into
   - \<leader\>bdo - step out
