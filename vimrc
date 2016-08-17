set nocompatible
filetype off

set t_Co=256
colorscheme railscasts
syntax on

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
map <silent> <leader>nn :bn<CR>
map <C-tab> :bn<CR>
map <silent> <leader>dt :bdelete<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <silent> <leader>ee :e ~/.vim/vimrc<cr>
map <silent> <leader>el :source ~/.vim/vimrc<cr>


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

filetype plugin indent on

if has ('gui_running')	

  set guioptions-=T

  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  Bundle 'gmarik/vundle'
  Bundle 'scrooloose/nerdtree'
  Bundle 'klen/python-mode'
  Bundle 'Valloric/YouCompleteMe'
  Bundle 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Bundle 'godlygeek/tabular'
  Bundle 'plasticboy/vim-markdown'
  Bundle 'iamcco/markdown-preview.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  Bundle 'a.vim'
  "Bundle 'DfrankUtil'
  "Bundle 'vimprj'
  Bundle 'easycolour'

  augroup vimrc_autocmds
    au FileType py highlight Excess ctermbg=DarkGrey guibg=Black
    au Filetype py match Excess /\%120v.*/
    au FileType py set nowrap 
    au FileType c  map <silent> <leader>u :UpdateTypesFile<CR>
    au FileType cpp  map <silent> <leader>u :UpdateTypesFile<CR>
    au FileType cpp colorscheme desert_thl
    au FileType markdown map <Leader>p :! google-chrome "%:p" &<CR><CR>
    au FileType markdown nmap <F5> :MarkdownPreview<CR>
    au FileType tex :setlocal spell spelllang=en_us
    "last line for opening a chrome and display that md file
  augroup END
             
  "for nerdtree
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  map <F3> :NERDTreeToggle<CR>

  "for aireline
  set laststatus=2
  let g:airline_powerline_fonts = 1

  "airline-themes
	let g:airline_theme='solarized'
	set background=dark
	set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11

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
  let g:pymode_indent =0
  let g:pymode_folding = 0
  let g:pymode_rope = 1 "jedi vim
  let g:pymode_repo_show_doc = 0
  let g:pymode_run = 1
  let g:pymode_rope_show_doc_bind= 0
  set completeopt=menu
  let g:pymode_rope_autoimport = 0

  set autochdir

  "Taghighlight
   if ! exists('g:TagHighlightSettings')
          let g:TagHighlightSettings = {}
   endif 
   let g:TagHighlightSettings['IncludeLocals'] = 'True'

   "youcompleteme
   let g:ycm_confirm_extra_conf = 0
   let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
   let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
   let g:SuperTabDefaultCompletionType = '<C-n>'

   "Ultisnips
   let g:UltiSnipsExpandTrigger="<Tab>"
   let g:UltiSnipsJumpForwardTrigger="<Tab>"
   let g:UltiSnipsJumpBackwardTrigger="<c-k>"
   let g:UltiSnipsEditSplit="vertical"

   "vim-markdown
    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_mat = 1
    let g:vim_markdown_no_default_key_mappings = 1 
    
    
   "vim-instant-markdown

endif


