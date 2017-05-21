set nocompatible
filetype off

set lines=35 columns=80
"set t_Co=256
set background=dark

if has ('gui_running')	
  colorscheme railscasts
else
  set termguicolors
  colorscheme synthwave
endif

set number
set ts=2
set autoindent
set expandtab
set shiftwidth=2
set cursorline
set showmatch

set hidden

"map things
let mapleader="`"
imap jj <Esc>
set pastetoggle=<F9>
map <silent> <leader>nn :bn<CR>
map <C-tab> :bn<CR>
map <silent> <leader>dt :bdelete<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <silent> <leader>ee :e ~/.vim/vimrc<cr>
map <silent> <leader>el :source ~/.vim/vimrc<cr>

if has ('gui_running')	
  nnoremap <A-1> :buffer 1<CR>
  nnoremap <A-2> :buffer 2<CR>
  nnoremap <A-3> :buffer 3<CR>
  nnoremap <A-4> :buffer 4<CR>
  nnoremap <A-5> :buffer 5<CR>
  nnoremap <A-6> :buffer 6<CR>
  nnoremap <A-7> :buffer 7<CR>
  nnoremap <A-q> :bd<CR>
  inoremap <C-v> <ESC>l"+P<CR>kA

endif

nmap <F2> :w<CR>
nmap <F5> :make<CR>

au! bufwritepost .vimrc source ~/.vim/vimrc<cr>

if has ('gui_running')	
  set guioptions-=T
endif

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Bundle 'godlygeek/tabular'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'peterhoeg/vim-qml.git'
Plugin 'vim-syntastic/syntastic'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'Raimondi/delimitMate'

Bundle 'a.vim'

"for nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd VimEnter * NERDTreeTabsToggle

map <F3> <plug>NERDTreeTabsToggle<CR>

"for aireline
set laststatus=2
let g:airline_powerline_fonts=1
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Regular\ 14

if has ('gui_running')	
  "airline-themes
  " let g:airline_theme='solarized'
  let g:airline_theme='papercolor'
else
  "let g:airline_theme='papercolor'
  let g:airline_theme='synthwave'
endif

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

set autochdir

"youcompleteme
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf='/home/jimmy/.vim/.ycm_extra_conf.py' 
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_always_populate_location_list = 1

"Ultisnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

"vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:vim_markdown_no_default_key_mappings = 1 

"Synatstic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:Synatstic_python_checkers = ['pylint']

"vim-latex-preview
let g:livepreview_previewer = 'evince'

"delimitMate
let delimitMate_expand_cr = 1

filetype plugin indent on
syntax on
