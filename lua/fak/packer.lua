-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'christoomey/vim-tmux-navigator'
    -- use { 'neoclide/coc.nvim', branch='release' }
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Recommended fzf for telescope
    use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
    -- dev icons 
    use('nvim-tree/nvim-web-devicons')
    use('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})
    use('nvim-tree/nvim-tree.lua')
    -- use('nvim-treesitter/playground') -- Depricated
    use('theprimeagen/harpoon')

    -- themes 
    use({ "catppuccin/nvim", as = "catppuccin" })
    use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
    use ({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        'hrsh7th/nvim-cmp', 
        'hrsh7th/cmp-nvim-lsp', 
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lua',
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets',
    })
end)
 

