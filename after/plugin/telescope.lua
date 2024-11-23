require('telescope').setup({
    extensions = {
        fzf = {
            fuzzy = true, -- set to 'false' for exact matching
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case", -- "ignore_case" or "respect_case", default "smart_case"
        }
    }
})

-- extensions can be loaded after setup function
require('telescope').load_extension('fzf')

local builtin = require('telescope.builtin')

-- File builtins
vim.keymap.set('n', '<leader>ff', builtin.find_files,
    { desc = 'Telescope find files. Respects .gitignore.' })
vim.keymap.set('n', '<C-p>', builtin.git_files,
    { desc = 'Telescope git_files. Lists output of git ls-files. Respects .gitignore.' })
vim.keymap.set('n', '<leader>fb', builtin.buffers,
    { desc = 'Telescope lists vim buffers.' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags,
    { desc = 'Telescope help' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep,
    {
        desc =
        'Telescope live grep. Uses ripgrep instead of grep. Use grep_string function if ripgrep cannot be installed.'
    })

-- Vim builtins
vim.keymap.set('n', '<leader>fch', builtin.command_history, { desc = 'Vim Command History.' })
vim.keymap.set('n', '<leader>fsh', builtin.search_history, { desc = 'Vim Search History.' })
vim.keymap.set('n', '<leader>tc', builtin.colorscheme, { desc = 'color scheme view.' })
vim.keymap.set('n', '<leader>k', builtin.keymaps, { desc = 'List Vim keymaps.' })
vim.keymap.set('n', '<leader>ft', builtin.filetypes, { desc = 'List Vim filetypes.' })

-- LSP Picker
vim.keymap.set('n', '<leader>lr', builtin.lsp_references, { desc = 'List lsp references for wor under the cursor.' })

-- Git Picker
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope git status' })

-- Tresitter Picker
vim.keymap.set('n', '<leader>ts', builtin.treesitter,
    { desc = 'Telescope treesitter. List function names, variables from treesitter.' })

-- Helpful Commands:
-- :chechealth telescope
-- :help telescope
