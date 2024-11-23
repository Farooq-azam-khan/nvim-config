-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        { "windwp/nvim-autopairs", event="InsertEnter", config=true },
        { "lukas-reineke/indent-blankline.nvim", main = "ibl",  opts = {} },
        { "christoomey/vim-tmux-navigator" },
        { "nvim-telescope/telescope.nvim",       tag = "0.1.8", dependencies = { "nvim-lua/plenary.nvim" } },
        { "nvim-tree/nvim-web-devicons" },
        {
            "nvim-treesitter/nvim-treesitter",

            opts = {
                ensure_installed = { "markdown", "lua", "vim", "vimdoc", "bash",
                    "elm", "python", "javascript", "typescript", "html",
                    "git_config", "gitignore", "diff", "dockerfile", "ssh_config", "tmux",
                    "toml", "yaml", "json",
                    -- Used but not too frequently
                    -- "latex", "go", "c", "cpp", "csv", "cuda", "nginx", "rust","haskell",
                    -- "prolog", "sql", "xml"
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },

            }
        },
        { "theprimeagen/harpoon" },
        { "nvim-tree/nvim-tree.lua" },
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        {
            "catppuccin/nvim",
            name = "catppuccin",
            priority = 1000,
            lazy = false,
            config = function()
                vim.cmd([[colorscheme catppuccin]])
            end
        },
        {
            "VonHeikemen/lsp-zero.nvim",
            branch = "v4.x",
            dependencies = {
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/nvim-cmp",
                "williamboman/mason.nvim",
                "williamboman/mason-lspconfig.nvim", 
                "neovim/nvim-lspconfig",
                "hrsh7th/cmp-buffer",
            }
        },
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    -- install = { colorscheme = { "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = false },
})

-- set colours for indentation
local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

require("ibl").setup { indent = { highlight = highlight } }
