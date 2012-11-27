set nu
set gfn=Menlo:h14
set ts=2
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

if has ('gui_running')
    set transparency=15
endif

call pathogen#infect()
syntax on
filetype plugin indent on

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <s-tab> <C-w><S-w>
map <tab> <C-w><C-w>

noremap <C-t> :CommandT<CR>

:colorscheme vividchalk 

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 0
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 1
let g:neocomplcache_disable_auto_complete = 1
inoremap <expr><C-h> neocomplcache#cancel_popup()"\<C-h>"
