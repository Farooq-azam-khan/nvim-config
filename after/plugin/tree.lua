-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 24-bit colour
vim.opt.termguicolors = true

require('nvim-tree').setup({
    sort={sorted='case_sensitive',},
    view={width=30,}
    renderer={group_empty=true},
    filter={dotfiles=true},

})
