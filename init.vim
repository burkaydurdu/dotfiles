call plug#begin('~/.vim/plugged')

Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fireplace'
Plug 'sainnhe/gruvbox-material'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'rking/ag.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'guns/vim-clojure-static'
Plug 'Yggdroot/indentLine'
call plug#end()

"=====================================================
"===================== SETTINGS ======================
set mouse=a         " Enable mouse mode
set splitright      " Split vertical windows right to the current windows
set splitbelow      " Split horizontal windows below to the current windows
set clipboard^=unnamed
set clipboard^=unnamedplus
set number
set tabstop=2       " The width of a TAB is set to 4
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB

set autoindent
set ignorecase
set smartcase
set hlsearch
set incsearch

:set listchars=tab:\|\ 
:set list

filetype off
filetype plugin indent on

"====================Deoplet Setting =================
let g:deoplete#enable_at_startup = 1 

"====================Intent Guide ====================

"let g:indentLine_setColors = 0

"==================== Cursor =========================
set guicursor=a:block-blinkon0

"====================Searching========================
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

nnoremap \ :Ag<SPACE>

"===================== Theme =========================
" set background=light
" colorscheme snow
" colorscheme dracula
set termguicolors

"colorscheme gruvbox-material

" for soft background
" colorscheme gruvbox-material-soft

" for hard background
"colorscheme gruvbox-material-hard


"=====================================================
"===================== MAPPINGS ======================

" This comes first, because we have mappings that depend on leader
" With a map leader it's possible to do extra key combinations
" i.e: <leader>w saves the current file
let mapleader = ","
" Some useful quickfix shortcuts for quickfix
map <C-n> :cn<CR>
map <C-m> :cp<CR>

nnoremap <leader>a :cclose<CR>

" Move left, right, top, bottom in current page
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>cl :%Eval <Enter>
nnoremap <leader>ce :Eval <Enter>
nnoremap <leader>ct :tabnew<CR> " New tab open
nnoremap <leader>cf :tabn <CR>
nnoremap <leader>c\ :tabe %<CR>
map ; :Files<CR>

imap <c-d> <esc>ddi 
nnoremap <leader>m :wq <Enter> 

" Split map
:nnoremap <leader>cv :vsplit $MYVIMRC<cr>
:nnoremap <leader>ch :split $MYVIMRC<cr>

"===================Gitgutter=========================
let g:gitgutter_max_signs = 500
nmap <leader>gp :GitGutterPreviewHunk<cr>

"===================Static-Clojure====================
let g:clojure_syntax_keywords = {
    \ 'clojureMacro': ["defproject", "defcustom"],
    \ 'clojureFunc': ["string/join", "string/replace"]
		\}

imap <C-Space> <C-X><C-U>
"==================== NerdTree =======================
" For toggling
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"

let g:NERDSpaceDelims=1

" Auto open nerd tree on startup
let g:nerdtree_tabs_open_on_gui_startup = 0
" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" faster bookmarking in NERDTree
autocmd Filetype nerdtree nnoremap <buffer> <leader>B :Bookmark<space>
autocmd Filetype nerdtree nnoremap <buffer> <leader>b :Bookmark<space><CR>

" NERDTree {{{
let NERDTreeIgnore = ['\.DS_Store$', '\.pyc$', '\.javac']
let g:NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks = 1

" nerdtree mappings
let NERDTreeMapChangeRoot = 'u'
let NERDTreeMapUpdir = 'U'
let NERDTreeMapUpdirKeepOpen = 'c'

" rainbow config

let g:rainbow_conf = {
\    'guifgs': ['Chartreuse2', 'Violet', 'Yellow1', 'HotPink', 'Aquamarine1'],
\    'ctermfgs': ['brown', 'blue', 'red', 'green'],
\    'operators': '_,_',
\    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\    'separately': {
\        '*': {},
\        'tex': {
\            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\        },
\        'lisp': {
\            'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\        },
\        'vim': {
\            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\        },
\        'html': {
\            'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z-2-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\        },
\        'css': 0,
\    }
\}
let g:rainbow_active = 1


" fzf

" Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
