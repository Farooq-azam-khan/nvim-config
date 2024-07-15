# Installation
- make sure you have nvim0.9 or later (https://github.com/neovim/neovim/releases/tag/stable)
- you can install the appimage file and alias it in you `~/.bashrc` file with the `alias` command
0. install packer from https://github.com/wbthomason/packer.nvim
1. `wget -O ~/.config/nvim/fak/packer.lua [this-repo-link]/lua/fak/packer.lua`
2. `vim ~/.config/nvim/lua/fak/packer.lua` and type `:so` in the vim file to source packer deps
3. `rm -r ~/.config/nvim` delete file
1. `git clone [this-repo-link] ~/.config/nvim`2. 
3. `:PackerSync` in the same file 
