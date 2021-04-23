call plug#begin('~/.local/share/nvim/site/autoload')

Plug 'scrooloose/nerdtree'

Plug 'guns/vim-clojure-static'

Plug 'guns/vim-clojure-highlight'

Plug 'ntpeters/vim-better-whitespace'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-fireplace'

Plug 'tpope/vim-salve', {'for': 'clojure'}

Plug 'tpope/vim-dispatch'

Plug 'tpope/vim-commentary'

Plug 'dense-analysis/ale'

Plug 'eraserhd/parinfer-rust', {'for': 'clojure'}

Plug 'tpope/vim-rake',    {'for': 'ruby'}

Plug 'tpope/vim-rails',   {'for': 'ruby'}

Plug 'tpope/vim-bundler', {'for': 'ruby'}

Plug 'tpope/vim-jdaddy',  {'for': 'json'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

" Plug 'SirVer/ultisnips'

Plug 'arcticicestudio/nord-vim'

Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/goyo.vim'

Plug 'vimwiki/vimwiki'

Plug 'Olical/conjure', {'tag': 'v4.14.1'}

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

