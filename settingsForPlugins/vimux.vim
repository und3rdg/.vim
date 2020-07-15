" Run...
map <Leader>vv :call VimuxRunCommand("./" . bufname("%"))<CR>
map <Leader>vn :call VimuxRunCommand("node " . bufname("%"))<CR>

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vc :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

" RESTART LAST TASK
map <Leader>vr :call VimuxInterruptRunner() <bar> :call VimuxInterruptRunner() <bar> :call VimuxRunLastCommand() <cr>


function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <LocalLeader>vs "vy :call VimuxSlime()<CR>

" Select current paragraph and send it to tmux
nmap <LocalLeader>vs vip<LocalLeader>vs<CR>
