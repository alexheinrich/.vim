let g:flake8_show_quickfix=0  " don't show
let g:flake8_show_in_gutter=1  " show
let g:flake8_show_in_file=1  " show
" autocmd BufWritePost *.py call flake8#Flake8()
nnoremap <C-K> :call flake8#Flake8ShowError()<cr>
