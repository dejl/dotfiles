set t_Co=256
set number
set numberwidth=4

set smartindent
set autoindent
set tabstop=4
set shiftwidth=4

"set highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
colorscheme jellybeans

function Upload()
	!p %
endfunction

:command Upload call Upload()

:au FocusLost * silent! :wa

"set modeline
filetype plugin on


autocmd FileType python set omnifunc=pythoncomplete#Complete

set backspace=2

syntax on
