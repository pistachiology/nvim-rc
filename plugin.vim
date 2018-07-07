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


" CSS & Preprocessors
"

Plug 'hail2u/vim-css3-syntax'                                     " CSS3 syntax (and syntax defined in some foreign specifications) support for Vim's built-in syntax/css.vim
Plug 'ap/vim-css-color'                                           " Highlight background of CSS colors
Plug 'cakebaker/scss-syntax.vim'                                  " Vim syntax file for scss (Sassy CSS)
Plug 'groenewege/vim-less'                                        " syntax for LESS (dynamic CSS)
Plug 'othree/csscomplete.vim'                                     " Update the bult-in CSS complete function to latest CSS standard
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"
" JavaScript
"

Plug 'neoclide/vim-jsx-improve', { 'for': [ 'javascript', 'js', 'jsx' ]}
" Plug 'autozimu/LanguageClient-neovim', {
"             \ 'branch': 'next',
"             \ 'do': 'bash install.sh',
"             \}
" Plug 'sourcegraph/javascript-typescript-langserver'               " JavaScript/TypeScript Language Server
" Plug 'felixfbecker/php-language-server'                           " PHP Language Server
" Plug 'vscode-langservers/vscode-css-languageserver-bin'           " CSS/LESS/SCSS Language Server
Plug 'editorconfig/editorconfig-vim'                              " EditorConfig support


"Typescript Plugins
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Quramy/tsuquyomi', { 'do': 'npm install -g typescript' }
Plug 'mhartington/deoplete-typescript'

" Php
Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }

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
