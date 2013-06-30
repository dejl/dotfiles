:set t_Co=256 " 256 colors
:set background=dark
:color grb4

set number
set numberwidth=4


set foldmethod=indent
set foldlevel=99

"set smartindent
filetype plugin indent on
set autoindent
set tabstop=4
set shiftwidth=4
set backupskip=/tmp/*,/private/tmp/*
"set highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
":map vp :exec "w !vpaste ft=".&ft<CR>
":vmap vp <ESC>:exec "'<,'>w !vpaste ft=".&ft<CR>

function Paste()
	!vpaste %
endfunction

:command Paste call Paste()


:au FocusLost * silent! :wa

"set modeline
filetype plugin on


autocmd FileType python set omnifunc=pythoncomplete#Complete

set backspace=2

syntax on

execute pathogen#infect()
"vundle:
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'https://github.com/Valloric/YouCompleteMe.git'
"Bundle 'YouCompleteMe'

