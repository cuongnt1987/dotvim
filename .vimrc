" Pathogen
set nocp
execute pathogen#infect() 
filetype plugin indent on
syntax on
set autoindent
set tabstop=2
set shiftwidth=2
set nu
set background=dark
set laststatus=2
set t_Co=256
"=================================================
" vim airline configurations
" ================================================
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='base16_solarized'

function! AccentDemo()
let keys = ['a','b','c','d','e','f','g','h']
for k in keys
	call airline#parts#define_text(k, k)
endfor
call airline#parts#define_accent('a', 'red')
call airline#parts#define_accent('b', 'green')
call airline#parts#define_accent('c', 'blue')
call airline#parts#define_accent('d', 'yellow')
call airline#parts#define_accent('e', 'orange')
call airline#parts#define_accent('f', 'purple')
call airline#parts#define_accent('g', 'bold')
call airline#parts#define_accent('h', 'italic')
let g:airline_section_a = airline#section#create(keys)
endfunction
"autocmd VimEnter * call AccentDemo()

"====================================================
" Syntastic plugin settings
" ===================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
" ====================================================
" CtrlP configure
" ====================================================
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = ''
" ====================================================
" Javascript Libraries Syntax
" Supported Languages
" jquery, underscore, backbone, prelude, angularjs,
" angularui, angularuirouter, react, flux, requirejs,
" sugar, jasmine, chai, handlebars, ramda
" ====================================================
let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter'

" Color schema
colorscheme solarized

" ====================================================
" Keymap configuration
" ====================================================

" Toggling Tagbar with F2
nmap <F2> :TagbarToggle<CR>

" Tab navigation
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab> :tabnext<CR>
inoremap <C-S-tab> :tabprevious<CR>
inoremap <C-tab> :tabnext<CR>
