# 💤 LazyVim

# Requirements

- [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md) >= 0.9
- git >= 2.19
- nerdfont (v3+) => https://github.com/Farooq-azam-khan/tmux-config
- lazygit (optional)
- for fzf-lua => [fzf](https://github.com/junegunn/fzf), [ripgrep](https://github.com/BurntSushi/ripgrep), [fd](https://github.com/sharkdp/fd)
  - `sudo apt install fzf`
  - `sudo apt-get install ripgrep`
  - `sudo apt install fd-find`

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Remove Cache

```bash
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
rm lazy-lock.json lazyvim.json
```
