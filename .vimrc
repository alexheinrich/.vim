execute pathogen#infect()

set number
syntax on

" disable beeping
set noeb vb t_vb=

" set colorscheme (options: light/dark)
set termguicolors
let ayucolor="light"
colorscheme ayu

" let backspace traverse lines
set backspace=indent,eol,start

" enable ftplugin
filetype plugin on

" use spaces not tabs
set expandtab

" set netrw style (hit i to cycle)
let g:netrw_liststyle = 3
" remove netrw banner
let g:netrw_banner = 0

" indent by 4 spaces 
set shiftwidth=4
set tabstop=4
set softtabstop=4

set foldmethod=syntax
" set foldnestmax=99
set nofoldenable

set autoindent
set smartindent
set cindent

" set default clipboard to system
set clipboard=unnamedplus

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath('clangd')
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_auto_trigger = 0
let g:ycm_auto_hover = ''
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

nnoremap <Leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <Leader>gi :YcmCompleter GoToInclude<CR> 
nnoremap <Leader>rs :YcmCompleter RefactorRename 
nnoremap <Leader>i <plug>YCMHover

" Prevent clearing of clipboard on quit and suspend
if executable("xsel")

  function! PreserveClipboard()
    call system("xsel -ib", getreg('+'))
  endfunction

  function! PreserveClipboadAndSuspend()
    call PreserveClipboard()
    suspend
  endfunction

  autocmd VimLeave * call PreserveClipboard()
  nnoremap <silent> <c-z> :call PreserveClipboadAndSuspend()<cr>
  vnoremap <silent> <c-z> :<c-u>call PreserveClipboadAndSuspend()<cr>

endif
