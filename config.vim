
" git gutter
set signcolumn=yes


" default vim mapping
nnoremap <C-[> gT
nnoremap <C-]> gt
nnoremap tn :tabnew<CR>
unmap <esc>
" set omnifunc=syntaxcomplete#Complete
" deoplete
let g:deoplete#enable_at_startup = 1

" fzf plugin
nnoremap <C-p> :Files<CR>
nnoremap <leader>s :Tags<space><C-R><C-W><space><CR>
nnoremap <leader>f :Ag <CR>
command! -bang -nargs=* Find call fzf#vim#grep('rg --files --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --color "always" '.shellescape(<q-args>), 1, <bang>0)


" NerdTree
map <C-\> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>  

let NERDTreeIgnore = ['node_modules', '\.pyc$']
let g:NERDTreeMouseMode = 3     " Single Click

" Ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

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

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_exec = "/Users/pistachio/.rbenv/shims/rubocop"


" Gutentags
" let g:gutentags_cache_dir = util#localpath('tags')
let g:gutentags_ctags_exclude = ['venv', 'build', 'static', 'node_modules']
let g:gutentags_ctags_extra_args = ['--options='.util#localpath('ctagsrc')]
let g:gutentags_ctags_exclude_wildignore = 0
" Temporary fix due to https://github.com/ludovicchabant/vim-gutentags/issues/167
au FileType gitcommit,gitrebase let g:gutentags_enabled=0

set termguicolors

" Neomake
" call neomake#configure#automake('w')
" let g:neomake_open_list = 2
" ALE
let g:ale_sign_column_always = 1
let g:ale_linters = {'ruby': ['rubocop']}
let g:ale_linter_aliases = {'jsx': 'css'}
