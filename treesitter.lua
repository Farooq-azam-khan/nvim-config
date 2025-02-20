return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      -- "html",
      -- "javascript",
      -- "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      -- "query",
      -- "regex",
      -- "tsx",
      -- "typescript",
      "vim",
      "yaml",
      "diff",
      "tmux",
      "git_config",
      "gitignore",
      "dockerfile",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<leader>gnn",
        node_incremental = "<leader>grn",
        scope_incremental = "<leader>grc",
        node_decremental = "<leader>grm",
      },
    },
  },

  
}
