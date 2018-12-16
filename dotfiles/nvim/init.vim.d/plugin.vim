" source every plugin configs
for file in split(glob("~/.config/nvim/init.vim.d/plugin.vim.d/*.vim"), '\n')
    exe 'source' file
endfor
