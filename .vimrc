set ruler laststatus=2 number title hlsearch
syntax on
set clipboard=unnamed
set tabstop=8 " size of a hard tabstop
set softtabstop=0 " combination of tabs and spaces in case width other than hard tabstop
set expandtab " always use spaces instead of tabs 
set shiftwidth=4 " size of an 'indent' 
set smarttab " makes 'tab' insert indents instead of tabs at the beginning of a line
"Unset the "last search pattern" register (and thus clears search highlighting) by hitting return
nnoremap <CR> :noh<CR><CR>
