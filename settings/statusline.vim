source ~/.vim/func/StatuslineGit.vim

hi User1 guibg=#FFAF00 guifg=#222222
hi User2 guibg=#504945 guifg=#191919
hi User3 guibg=#A8A8A8 guifg=#222222

set statusline=
set statusline+=\ %#warningmsg#
set statusline+=\ %2*%y
set statusline+=\ %p%%
set statusline+=\[%L]
set statusline+=\ %l:%c
set statusline+=\ %=
set statusline+=\ %1*\ %.35{getcwd()}\ %*
set statusline+=\ %3*\ %{StatuslineGit()}\ %*
set statusline+=\ %1*\ %f%m\ %*
