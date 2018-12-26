if has('nvim')
    " miniyank config
    map p <Plug>(miniyank-autoput)
    map P <Plug>(miniyank-autoPut)
    " Go through the registers easily
    map <C-p> <Plug>(miniyank-cycle)
endif
