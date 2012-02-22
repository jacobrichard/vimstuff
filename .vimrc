filetype on
filetype plugin on
filetype indent on

set smartindent
set tabstop=4                  
set shiftwidth=4               
set expandtab
set history=1000

syntax on

" Change FuzzyFinder highlight color
highlight Pmenu ctermbg=238 gui=bold

" Map FuzzyFinderFile to ctrl-f
nmap <silent> <c-f> :FuzzyFinderFile<CR>

" Map NERDTree Toggle to ctrl-n
nmap <silent> <c-n> :NERDTreeToggle<CR>


" Close if only nerdtree is left
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" " buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
        if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                q
            endif   
        endif
    endif
endfunction

" Open NERDTree automatically
" autocmd VimEnter * NERDTree
