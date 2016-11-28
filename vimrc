execute pathogen#infect()
syntax on
filetype plugin indent on

:let mapleader=" "

" display
colorscheme molokai
set number
set splitright
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" write on :make
"set autowrite

" DiffOrig, from vim-example
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
endif

" disable Q
noremap Q <Nop>

" buffer navigation
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>

" tab navigation
set switchbuf=usetab
"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>

" toggle highlighting
set nohlsearch
noremap <Leader>h :set hlsearch!<CR>

" lookup
map <leader>k :lprevious<CR>
map <leader>j :lnext<CR>

" quickfix
" ⏪
map <F7> :cprevious<CR>
" ⏩
map <F9> :cnext<CR>
nnoremap <F8> :cclose<CR>

" ack
let g:ackprg = 'ag --vimgrep'
noremap <Leader>a :Ack <cword><cr>
xnoremap <Leader>A y:Ack <C-r>=fnameescape(@")<CR><CR>

" ctrl-p
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_working_path_mode = 'ra'

" vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_trailing_whitespace_error = 1

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

"command! %!python -m json.tool

" gui
set guifont=Source\ Code\ Pro:h14
