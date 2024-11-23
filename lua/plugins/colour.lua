-- Tokyo night colorscheme
--vim.g.tokyonight_transparent_sidebar = true 
--vim.g.tokyonight_transparent = true 
--vim.opt.background = "dark"
--vim.cmd[[colorscheme tokyonight]]

-- Catppuccin
require("catppuccin").setup({
    flavour = "latte", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
})
vim.cmd.colorscheme "catppuccin"
