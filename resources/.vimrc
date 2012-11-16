set nu
set gfn=Menlo:h14

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
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 1
imap <C-Space>     <Plug>(neocomplcache_snippets_expand)
smap <C-Space>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#cancel_popup()"\<C-h>"
