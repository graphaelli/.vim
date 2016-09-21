execute pathogen#infect()
syntax on
filetype plugin indent on

:let mapleader=","

" display
colorscheme molokai
set splitright
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" write on :make
set autowrite

" DiffOrig, from vim-example
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
endif

" disable Q
noremap Q <Nop>

" quick-lookup
" ⏪
map <F7> :cprevious<CR>
" ⏩
map <F9> :cnext<CR>
nnoremap <F8> :cclose<CR>

" ack
let g:ackprg = 'ag --vimgrep'

" ctrl-p
let g:ctrlp_open_new_file = 't'

" vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

"command! %!python -m json.tool
