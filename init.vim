filetype plugin indent on
" Vim-Plug {{{
call plug#begin()
Plug 'NLKNguyen/papercolor-theme' " color scheme
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty' " jsx highlights
Plug 'leafgarland/typescript-vim' " ts syntax
call plug#end()
" }}}
" Theme settings {{{
syntax enable
set t_Co=256 " sets color count for terminal
set background=dark
let g:PaperColor_Theme_Options = {
  \ 'theme': {
  \   'default.dark': {
  \     'override': {
  \       'color00': ['#000a1c', ''],
  \       'linenumber_bg': ['#000a1c', ''],
  \     }
  \   }
  \ },
  \ }
silent! colorscheme PaperColor
" }}}
" JavaScript plugin config {{{
" vim-javascript
let g:javascript_plugin_flow = 1
let g:used_javascript_libs = 'jquery,requirejs,react'
" vim-jsx-prettier
let g:vim_jsx_pretty_colorful_config = 1
" }}}
" Theme settings {{{
augroup tsx_recognition
  autocmd!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
augroup END
augroup js_recognition
  autocmd!
  autocmd BufNewFile,BufFilePre,BufRead *.js.flow set filetype=javascript
augroup END
" }}}
" tab settings {{{
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" }}}
