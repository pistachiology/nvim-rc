
" git gutter
set signcolumn=yes

" default vim mapping
nnoremap tn :tabnew<CR>

nnoremap <leader>0 10gt
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 8gt
nnoremap <leader>0 10gt
" set omnifunc=syntaxcomplete#Complete

" fzf plugin
nnoremap <C-p> :Files<CR>
nnoremap <leader>s :Tags<space><C-R><C-W><space><CR>
nnoremap <leader>f :Ag<space><C-R><C-W><space><CR>
command! -bang -nargs=* Find call fzf#vim#grep('rg --files --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --color "always" '.shellescape(<q-args>), 1, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" NerdTree
map <C-\> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>  

let NERDTreeIgnore = ['node_modules', '\.pyc$', '_build']
let g:NERDTreeMouseMode = 3     " Single Click

" Ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Elixir
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions (public)',
        \ 'g:functions (private)',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:types',
        \ 'z:foo'
    \ ]
    \ }

" Testing
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g

" Autoformat
noremap <F3> :Autoformat<CR>

" Custom Commands
map <leader>e :call custom_command#run()<cr>
map <leader>d :call custom_command#set()<cr>

" Gutentags
" let g:gutentags_cache_dir = util#localpath('tags')
let g:gutentags_ctags_exclude = ['venv', 'build', 'static', 'node_modules']
let g:gutentags_ctags_extra_args = ['--options='.util#localpath('ctagsrc')]
let g:gutentags_ctags_exclude_wildignore = 0
" Temporary fix due to https://github.com/ludovicchabant/vim-gutentags/issues/167
au FileType gitcommit,gitrebase let g:gutentags_enabled=0

set termguicolors

" ALE
let g:ale_sign_column_always = 1
let g:ale_linters = {'ruby': ['rubocop']}
let g:ale_linter_aliases = {'jsx': 'css'}
let g:ale_lint_on_text_changed = 'never'

" Language Server
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'ruby': ['solargraph', 'stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'css': ['vscode-css-languageserver-bin'],
    \ }

autocmd filetype php LanguageClientStart


" Ternjs
" Whether to include the types of the completions in the result data. Default: 0
let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance (in scopes for variables, in prototypes for 
" properties) between the completions and the origin position in the result 
" data. Default: 0
let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#case_insensitive = 1

let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue'
		\ ]

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1




" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_ruby_checkers = ['rubocop']
" let g:syntastic_ruby_rubocop_exec = '/Users/pistachio/.rbenv/shims/rubocop'


