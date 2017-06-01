execute pathogen#infect()
" plugins: lightline, vim-colors-solarized

" enable filetype detection
filetype on
filetype plugin on
filetype indent on " filetype-based indentation

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
if !has('gui_running')
    set t_Co=256
endif

set ruler laststatus=2 number title hlsearch
set encoding=utf-8 " Displayed encoding
set fileencoding=utf-8 " Encoding written to file
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set background=dark
colorscheme solarized
syntax on

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

nnoremap <C-Tab> :bn " Switch to next file
nnoremap <C-S-Tab> :bp " Switch to previous file
nnoremap <C-J> <C-W><C-J> " Switch to lower pane in split
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F7> :tabp<Enter> " Switch to previous tab
nnoremap <F8> :tabn<Enter>
nnoremap [<Space> o<Esc> " Insert empty line below cursor line (almost) without entering insert mode (dirty hack)
nnoremap ]<Space> O<Esc>
nnoremap <CR> :noh<CR><CR> " Unset the "last search pattern" register (and thus clears search highlighting) by hitting return
nnoremap <F2> :echo expand('%:p')<Enter> " Show current file's full path
