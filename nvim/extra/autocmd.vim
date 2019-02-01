" Delete trailing white space on save
:aug trailing_whitespace
    func! DeleteTrailingWS()
        exe "normal mz"
        %s/\s\+$//ge
        exe "normal `z"
    endfunc

    let langs=['java', 'c', 'html', 'css', 'py', 'rb', 'ml', 'tex']
    for l in langs
        let c='*.' . l
        execute "autocmd BufWrite " . c . " :call DeleteTrailingWS()"
    endfor
:aug END

" Closes NERDTree if I close a window and NERDTree is the last window open
au  BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
