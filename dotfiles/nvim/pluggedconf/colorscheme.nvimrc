if has("gui_running")
    "gruvbox themes
    set background=dark
    let g:gruvbox_italic=1
    let g:gruvbox_contrast_dark="medium"
    colorscheme gruvbox
else
    "onedark themes
    set background=dark
    colorscheme onedark
endif