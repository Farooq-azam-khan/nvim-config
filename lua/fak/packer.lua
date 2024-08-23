-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- use 'neovim/nvim-lspconfig' -- common lsp config
    use 'folke/tokyonight.nvim'
    use 'christoomey/vim-tmux-navigator'
    use { 'neoclide/coc.nvim', branch='release' }
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.x',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    -- themes 
    use { "catppuccin/nvim", as = "catppuccin" }
    use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
    use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    }
    use({'hrsh7th/nvim-cmp'})
    use({'hrsh7th/cmp-nvim-lsp'})
--    use {
--      'VonHeikemen/lsp-zero.nvim',
--      branch = 'v4.x',
--      requires = {
--        -- LSP Support
--        {'neovim/nvim-lspconfig'},             -- Required
--        {'williamboman/mason.nvim'},           -- Optional
--        {'williamboman/mason-lspconfig.nvim'}, -- Optional
--
--        -- Autocompletion
--        {'hrsh7th/nvim-cmp'},         -- Required
--        {'hrsh7th/cmp-nvim-lsp'},     -- Required
--        {'hrsh7th/cmp-buffer'},       -- Optional
--        {'hrsh7th/cmp-path'},         -- Optional
--        {'saadparwaiz1/cmp_luasnip'}, -- Optional
--        {'hrsh7th/cmp-nvim-lua'},     -- Optional
--
--        -- Snippets
--        {'L3MON4D3/LuaSnip'},             -- Required
--        {'rafamadriz/friendly-snippets'}, -- Optional
--      }
--    }    
end)
 

