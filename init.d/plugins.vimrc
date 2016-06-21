" ===============================================
" Syntastic 
" ===============================================
" status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ===============================================
" tern-for-vim
" ===============================================
" enable default key mappings
let g:tern_map_keys = 1

" set <leader> for prefix keys
let g:tern_map_prefix = '<leader>'

" ===============================================
" FZF 
" ===============================================
" config <c-p> as default FZF for working dir
nnoremap <c-p> :FZF<cr>

" fzf window height
let g:fzf_height=8

" ===============================================
" Tagbar 
" ===============================================
nnoremap <F2> :TagbarToggle<cr>

" ===============================================
" NERDTree
" ===============================================
" Toggle NERDTree when <F3> is pressed
nnoremap <leader>d :NERDTreeToggle<cr>

" Find current buffer in NERDTree when <F4>
nnoremap <leader>f :NERDTreeFind<cr>

" ===============================================
" vim-airline
" ===============================================
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'hybrid' 

" ===============================================
" Neomake
" ===============================================
" run neomake on the current file on every write
autocmd! BufWritePost * Neomake

" hinting javascipt with eslint, but exec with eslint_d
let g:neomake_javascript_enabled_makers = ['eslint_d']

" neomake list height to 3
let g:neomake_list_height = 3

" open loclist or quickfix list when adding entries
let g:neomake_open_list = 2

" neomake error signs
let g:neomake_error_sign = {'text': '✖', 'texthl': 'NeomakeErrorSignDefault'}
let g:neomake_warning_sign = {'text': '⚠', 'texthl': 'NeomakeWarningSignDefault'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSignDefault'}
let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'NeomakeInfoSignDefault'}
