set nu
set cindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set fenc=utf-8
set enc=utf-8
set expandtab
set cursorline

syntax on

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

au BufNewFile,BufRead *.cu set ft=cuda
au BufNewFile,BufRead *.cuh set ft=cuda
