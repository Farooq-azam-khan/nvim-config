require('nvim-treesitter.configs').setup({
    ensure_installed = { "markdown", "lua", "vim", "vimdoc", "bash",
        "elm", "python", "javascript", "typescript", "html",
        "git_config", "gitignore", "diff", "dockerfile", "ssh_config", "tmux",
        "toml", "yaml", "json",
        -- Used but not too frequently
        -- "latex", "go", "c", "cpp", "csv", "cuda", "nginx", "rust","haskell",
        -- "prolog", "sql", "xml"
    },
    sync_install = false,
    auto_install = true,
    indent={enable=true},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
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
})
