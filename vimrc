set nocompatible
filetype off

set t_Co=256
syntax on

set autochdir

set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch

set hidden

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Plugin 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'

filetype plugin indent on

augroup vimrc_autocmds
	au FileType py highlight Excess ctermbg=DarkGrey guibg=Black
	au Filetype py match Excess /\%120v.*/
	au FileType py set nowrap
augroup END
           
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"map things
let mapleader="`"
imap jj <Esc>
map <F3> :NERDTreeToggle<CR>
map <silent> <leader>nn :bn<CR>
map <C-tab> :bn<CR>
map <silent> <leader>dt :bdelete<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <silent> <leader>ee :e ~/.vim/vimrc<cr>

map <A-1> :buffer 1<CR>
map <A-2> :buffer 2<CR>
map <A-3> :buffer 3<CR>
map <A-4> :buffer 4<CR>
map <A-5> :buffer 5<CR>
map <A-6> :buffer 6<CR>
map <A-7> :buffer 7<CR>
nnoremap <A-q> :bd<CR>

nmap <F2> :w<CR>
nmap <F5> :make<CR>

au! bufwritepost .vimrc source ~/.vim/vimrc<cr>

"aireline
set laststatus=2
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h20
let g:airline_powerline_fonts = 1

"enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" " set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" " show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

"nerdtree
let g:NERDTreeWinSize=20
let g:NERDTreeDirArrows=1

"python-mode
let g:pymode_doc = 0 
let g:pymode_doc_key= 'K' 
let g:pymode_lint = 0
let g:pymode_lint_checker ="pyflakes,pep8"
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind= '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = 0 
let g:pymode_syntax_space_errors = 0 "g:pymode_syntax_all
let g:pymode_trim_whitespaces = 1
let g:pymode_indent =1
let g:pymode_folding = 0
let g:pymode_rope = 1 "jedi vim
let g:pymode_repo_show_doc = 0
let g:pymode_run = 1
let g:pymode_rope_show_doc_bind= 0
set completeopt=menu
let g:pymode_rope_autoimport = 0

if has ('gui_running')	
	colorscheme railscasts
	let g:airline_theme='solarized'
	set background=dark
	set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11
endif
