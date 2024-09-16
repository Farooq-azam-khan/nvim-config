# Installation

- make sure you have nvim0.9 or later (https://github.com/neovim/neovim/releases/tag/stable)
```bash
wget -O nvim-stable.deb https://github.com/neovim/neovim-releases/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-stable.deb
```
- or you can install the appimage file and alias it in you `~/.bashrc` file with the `alias` command

0. install packer from https://github.com/wbthomason/packer.nvim
1. setup the packages
```bash
mkdir -p ~/.config/nvim/lua/fak
wget -O ~/.config/nvim/lua/fak/packer.lua https://raw.githubusercontent.com/Farooq-azam-khan/nvim-config/main/lua/fak/packer.lua
vim ~/.config/nvim/lua/fak/packer.lua
```
2. type `:so` in the vim file to source packer deps
3. `:PackerInstall` in the file
4. `rm -r ~/.config/nvim` delete file
5. `git clone https://github.com/Farooq-azam-khan/nvim-config.git ~/.config/nvim`
6. `:so`, `:PackerSync` in the same file
