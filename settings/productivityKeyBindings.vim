imap jk <esc>

" Type ',,' to save file (a lot faster than ':w<Enter>'):
nnoremap <Leader><Leader> :w<CR>

" save ',s' and open session with 'vim -S'
nnoremap <leader>s :mksession!<CR>

" Type ',q' to quit file
nnoremap <Leader>q :q<CR>

" Copy & paste to system clipboard with ',p' and ',y':
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <C-c> "+p
nmap <C-C> "+P

" Open vimrc with ',ev'
nnoremap <leader>ev :tabnew $vimrc<CR>
nnoremap <leader>ec :source %<CR>:echom 'SOURCE current file'<CR>
nnoremap <leader>es :source $vimrc <CR>:echom 'SOURCE vimrc'<CR>
" auto reload vimrc
" bug: it reloadnig only in vimrc, not in source's
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $vimrc       source $vimrc | echom "SOURCE ".$vimrc
    autocmd BufWritePost ~/.vim/*.vim source $vimrc | echom "SOURCE ".$vimrc
augroup END

" cd to current file dir, only current window
nnoremap <silent> <leader>cd :lcd %:p:h<CR>

" Toggle list (display unprintable characters).
nnoremap <F8> :set list!<CR>
imap <F8> <c-o>:set list!<CR>

" Toggle spell check
nnoremap <F7> :setlocal spell! spell?<CR>
imap <F7> <c-o>:setlocal spell! spell?<CR>

" remove html tag, keep content
map <leader>dt "aditcat<C-x><C-r>a<ESC>

" remove white spaces on end line
map <leader>sp :%s/\s\+$//ge<CR>:echomsg "white space cleaing"<cr>

" get git branch go into insert mode.
map <leader>gb :0r!git rev-parse --abbrev-ref HEAD<CR>A:<SPACE>

" popup selection (autocompleate)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Stop that stupid window from popping up:
map q: :q

