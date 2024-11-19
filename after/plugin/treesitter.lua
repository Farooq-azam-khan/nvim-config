require'nvim-treesitter.configs'.setup {
  ensure_installed = { "haskell", "nginx", "markdown", "c", "lua", "vim", "javascript", "rust", "typescript", "python", "bash" },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
