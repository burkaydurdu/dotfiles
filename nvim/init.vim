" Source Files
source $HOME/.config/nvim/my_plugins.vim

let mapleader=","

" Snippet
" let g:UltiSnipsSnippetDirectories=["my_snippets"]
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"

" Linters-ALE
let g:ale_linters = {'clojure': ['clj-kondo']}

" Vim-Better-WhiteSpace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Deoplete
let g:deoplete#enable_at_startup = 1

" ColorScheme
colorscheme nord

" Tap Map
nnoremap <leader>cl :%Eval <Enter>
nnoremap <leader>ce :Eval <Enter>
nnoremap <leader>ct :tabnew<CR>
nnoremap <leader>cf :tabn <CR>
nnoremap <leader>c\ :tabe %<CR>"
" Split Map
nnoremap <leader>cv :vsplit <cr>
nnoremap <leader>ch :split <cr>
nnoremap <Leader>a :Ack!<Space>
nnoremap <leader>cl :%Eval <Enter>
nnoremap <leader>ce :Eval <Enter>
nnoremap <leader>cr :ConjureEval <Enter>
" Move left, right, top, bottom in current page
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

tnoremap <Esc> <C-\><C-n>

map <Leader><Space> :noh<CR>
map ; :Files<CR>
map \ :Ag<CR>
map <Leader>g :Goyo<CR>

" NerdTree
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:NERDTreeWinPos = "right"
let g:NERDSpaceDelims = 1
let g:NERDTreeWinSize = 30
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_focus_on_files = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

let g:python_host_prog="/usr/bin/python"
let g:python3_host_prog="/usr/bin/python3"

syntax on
filetype plugin indent on

set mouse=a
set splitright
set splitbelow
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set ignorecase
set smartcase
set hlsearch
set incsearch
set smarttab
set cindent
set clipboard=unnamed
set clipboard+=unnamedplus
set termguicolors
set expandtab
set shiftround
set nocompatible

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" DONT USE
nnoremap <Left> :echo "No Click!"<CR>
vnoremap <Left> :<C-u>echo "No Click!"<CR>
inoremap <Left> <C-o>:echo "No Click!"<CR>

nnoremap <Right> :echo "No Click!"<CR>
vnoremap <Right> :<C-u>echo "No Click!"<CR>
inoremap <Right> <C-o>:echo "No Click!"<CR>

nnoremap <Up> :echo "No Click!"<CR>
vnoremap <Up> :<C-u>echo "No Click!"<CR>
inoremap <Up> <C-o>:echo "No Click!"<CR>

nnoremap <Down> :echo "No Click!"<CR>
vnoremap <Down> :<C-u>echo "No Click!"<CR>
inoremap <Down> <C-o>:echo "No Click!"<CR>
