"                ,
"               / \,,_  .'|
"            ,{{| /}}}}/_.'            _____________________________________________
"           }}}}` '{{'  '.            /                                             \
"         {{{{{    _   ;, \          /            Ladies and Gentlemen,              \
"      ,}}}}}}    /o`\  ` ;)        |                                                |
"     {{{{{{   /           (        |                 this is ...                    |
"     }}}}}}   |            \       |                                                |
"    {{{{{{{{   \            \      |                                                |
"    }}}}}}}}}   '.__      _  |     |    _____             __             __  _      |
"    {{{{{{{{       /`._  (_\ /     |   / ___/__  ______  / /_____ ______/ /_(_)____ |
"     }}}}}}'      |    //___/   --=:   \__ \/ / / / __ \/ __/ __ `/ ___/ __/ / ___/ |
" jgs `{{{{`       |     '--'       |  ___/ / /_/ / / / / /_/ /_/ (__  ) /_/ / /__   |
"      }}}`                         | /____/\__, /_/ /_/\__/\__,_/____/\__/_/\___/   |
"                                   |      /____/                                    |
"                                   |                                               /
"                                    \_____________________________________________/

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=3
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['typescript/eslint']
let g:syntastic_typescriptreact_checkers = ['typescript/eslint']
let g:syntastic_typescript_tsc_fname = ''
let g:syntastic_scss_checkers = ['sasslint']
let g:syntastic_sass_checkers = ['sasslint']


" function! StrTrim(txt)
"   return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
" endfunction

" let b:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))
" let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'


function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 15])
    endif
endfunction
