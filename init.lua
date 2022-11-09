require('fak.init') 

vim.cmd([[
call plug#begin()
    Plug 'elmcast/elm-vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
]])
