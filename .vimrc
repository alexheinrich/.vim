execute pathogen#infect()

set number
syntax on

" disable beeping
set noeb vb t_vb=

" let backspace traverse lines
set backspace=indent,eol,start

" use spaces not tabs
set expandtab
" indent by 2 spaces 
set shiftwidth=4
set tabstop=4
set softtabstop=4

set autoindent
set smartindent
set cindent

set termguicolors
let ayucolor="light"  " for light version of theme
colorscheme ayu

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_auto_trigger = 0
let g:ycm_autoclose_preview_window_after_completion = 1


