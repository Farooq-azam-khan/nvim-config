-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 24-bit colour
vim.opt.termguicolors = true

local tree = require('nvim-tree')
local api = require('nvim-tree.api')

local function on_attach(bufnr)
    local function opts(desc)
        return {desc = 'nvim-tree: ' .. desc, buffer=bufnr, noremap=true,silent=true,nowait=true}
    end
    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.set('n', '<C-t>',api.tree.change_root_to_parent, opts('Up'))

    vim.keymap.set('n', '?', api.tree.toggle_help,opts('Help'))
end

tree.setup({
    sort={sorter='case_sensitive',},
    view={width=50,side='right'},
    --renderer={group_empty=true},
    --filters={dotfiles=true},
    on_attach=on_attach,
})

vim.keymap.set('n', '<leader>b', function () api.tree.toggle() end)
