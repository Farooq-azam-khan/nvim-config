require('config.lazy')
require("plugins.tree")
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.harpoon")
require("plugins.lsp")

-- devicons: https://github.com/nvim-tree/nvim-web-devicons
require("nvim-web-devicons").refresh()

-- Fat cursor
vim.opt.guicursor = ""

-- Line Numbers
vim.opt.nu = true
-- Relative Line Numbers
vim.opt.relativenumber = true

-- 4 space indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- 2 space indenting for tsx files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "typescriptreact",
    callback = function()
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.expandtab = true
    end
})

-- no line wrap
vim.opt.wrap = false

-- no swap files
vim.opt.swapfile = false
vim.opt.backup = false


vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.colorcolumn = "90"

-- leader key
vim.g.mapleader = " "

-- space before and after curser
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
