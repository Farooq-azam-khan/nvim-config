# Installation
- make sure you have nvim0.9 or later (https://github.com/neovim/neovim/releases/tag/stable)
- you can install the appimage file and alias it in you `~/.bashrc` file with the `alias` command
0. `git clone [this-repo] .` into `~/.config/nvim` directory
1. install packer from https://github.com/wbthomason/packer.nvim
2. source packer with `vim lua/fak/packer.lua` and type `:so` in the vim file
3. `:PackerSync` in the same file 