call plug#begin('~/.vim/plugged')

Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fireplace'
Plug 'jiangmiao/auto-pairs'
Plug 'rking/ag.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-surround'
Plug 'guns/vim-clojure-static'
Plug 'Yggdroot/indentLine'
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify'
Plug 'eraserhd/parinfer-rust'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails', {'for': 'ruby'}
Plug 'tpope/vim-rake', {'for': 'ruby'}
Plug 'tpope/vim-bundler', {'for': 'ruby'}
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise', {'for': 'ruby'}
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-jdaddy'
Plug 'terryma/vim-multiple-cursors'
Plug 'udalov/kotlin-vim'
Plug 'sheerun/vim-polyglot'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'dense-analysis/ale'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
"Plug 'arcticicestudio/nord-vim'
"Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tomasr/molokai'
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
set syntax=on
set autoindent
set ignorecase
set smartcase
set hlsearch
set incsearch
set smarttab
set cindent
set termguicolors
set listchars=tab:\|\
set list
set showcmd
"set virtualedit=all
"============TAB==========
"
set expandtab "expand tabs to spaces
set smarttab
set shiftround
"set cursor
"
set cursorline
set cursorcolumn
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

"===================== Theme =========================
colorscheme molokai
"=====================================================
filetype off
filetype plugin indent on
"================Linters-ALE=========================
let g:ale_linters = {'clojure': ['clj-kondo']}
"================Vim-Better-WhiteSpace===============
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

"================Multiple Cursors====================
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-w>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_next_key            = '<C-w>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"====================================================
let g:javascript_plugin_jsdoc = 1
map <c-f> :call CSSBeautify()<cr>
map <c-i> :call JsBeautify()<cr>

"====================Deoplet Setting =================
let g:deoplete#enable_at_startup = 1

"===================== Lens ==========================
let g:lens#disabled_filetypes = ['nerdtree', 'fzf']

"==================== Cursor =========================
set guicursor=a:block-blinkon0
"==================== Animation ======================
"

nnoremap ]k :call animate#window_delta_height(10)<CR>
nnoremap ]j :call animate#window_delta_height(-10)<CR>
nnoremap ]h :call animate#window_delta_width(10)<CR>
nnoremap ]l :call animate#window_delta_width(-10)<CR>

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

"===================== MAPPINGS ======================
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
map <Leader><Space> :noh<CR>

imap <c-d> <esc>ddi
nnoremap <leader>m :wq <Enter>
imap <C-Space> <C-X><C-U>

" Split map
:nnoremap <leader>cv :vsplit $MYVIMRC<cr>
:nnoremap <leader>ch :split $MYVIMRC<cr>
:tnoremap <Esc> <C-\><C-n>

" For toggling
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden = 1

let g:NERDTreeWinPos = "right"

let g:NERDSpaceDelims = 1

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
