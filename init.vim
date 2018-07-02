" Project Specific .vimrc Files
set exrc

" Basic Configuration
filetype on
syntax on
set number

colorscheme Tomorrow-Night-Eighties

" set vim encoding
set encoding=utf-8
set fileencoding=utf-8

filetype plugin on
filetype plugin indent on


" auto indent
set autoindent

" scroll speed
set scroll=8

" allow backspacing over autoindent, linebreaks and starting point
set backspace=indent,eol,start

" set tab stops
set shiftwidth=4 tabstop=8 softtabstop=4 expandtab

  
" other stuff

" searching: incremental, highlight, smart case
set incsearch hlsearch smartcase

" gui font
set guifont=Dank\ Mono:h14 


" show line number and command being entered
set showcmd number

" COMMAND to use old-style tab
command Tab setl shiftwidth=4 tabstop=4 softtabstop=0 noexpandtab indentexpr=

" COMMAND to setup autocommands
command -nargs=* Auto au BufNewFile,BufRead <args>
command -nargs=* AutoType au FileType <args>

" COMMAND to fix typing mistakes
command Q q
command Wq wq
command WQ wq

"enable mouse
set mouse=a

source ~/.config/nvim/plugin.vim
source ~/.config/nvim/plugin_config.vim
