call plug#begin()
" Thai keyboard
Plug 'chakrit/vim-thai-keys'

" Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'

Plug 'junegunn/vim-easy-align'

" Navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'terryma/vim-multiple-cursors'

" Autocomplete
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'ludovicchabant/vim-gutentags'

" Git
Plug 'airblade/vim-gitgutter'


" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/gem-ctags'
Plug 'tpope/vim-bundler'

" Test
Plug 'janko-m/vim-test'

" Utilities
Plug 'tomtom/tcomment_vim'
Plug 'Chiel92/vim-autoformat'

" Syntax Checker
" Plug 'vim-syntastic/syntastic'
" Plug 'neomake/neomake'
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()
