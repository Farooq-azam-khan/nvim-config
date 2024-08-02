# Installation

- make sure you have nvim0.9 or later (https://github.com/neovim/neovim/releases/tag/stable)
- you can install the appimage file and alias it in you `~/.bashrc` file with the `alias` command

0. install packer from https://github.com/wbthomason/packer.nvim
1. `mkdir -p ~/.config/nvim/fak`
2. `wget -O ~/.config/nvim/fak/packer.lua https://raw.githubusercontent.com/Farooq-azam-khan/nvim-config/main/lua/fak/packer.lua`
3. `vim ~/.config/nvim/lua/fak/packer.lua` and type `:so` in the vim file to source packer deps
4. `rm -r ~/.config/nvim` delete file
5. `git clone https://github.com/Farooq-azam-khan/nvim-config.git ~/.config/nvim`2.
6. `:PackerSync` in the same file
