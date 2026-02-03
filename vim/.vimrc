call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'mrk21/yaml-vim'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/groovy.vim'

call plug#end()

filetype off
filetype plugin indent on

" Map <leader> to comma
let mapleader=","
let g:user_emmet_install_global = 0

" ts (tabstop) a <Tab> key will count as two spaces
" sw (shiftwidth) identation and auto-identation will use two spaces (eg. when using >> or gg=G)
" sts (softtabstop) a <Tab> will count for two spaces when expanding tabs (inserting a tab, or using the Backspace key)
" expandttab use spaces instead of tabs
" foldmethod folding will be based on indentation levels
" nofoldenable the file will be opened without any folds
" nosmd (noshowmode) If in Insert, Replace or Visual mode put a message on the last line. Use the 'M' flag in 'highlight'
"   to set the type of highlighting for this message.
" set autoindent    - turns it on
" set smartindent   - does the right thing (mostly) in programs
" set cindent       - stricter rules for C programs

" set noswapfile

if has("autocmd")
  autocmd Filetype go set ts=2 sw=2 sts=2 noet nolist autowrite number nosmd backspace=indent,eol,start cursorcolumn
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:> foldmethod=indent nofoldenable cursorcolumn
  autocmd FileType javascript setlocal foldmethod=syntax cursorcolumn
  autocmd FileType html,css EmmetInstall 
endif

set mouse-=a
set clipboard=unnamed
set clipboard=unnamedplus
set cursorcolumn
syntax on
set modeline

nnoremap tt :execute 'botright ' . float2nr(&lines * 0.3) . 'new' <bar> terminal ++curwin ++close<CR>
