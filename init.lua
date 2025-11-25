vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.number = true


vim.pack.add({
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-tree.lua.git'},
    { src = 'https://github.com/nvim-tree/nvim-web-devicons.git'},
})

require('nvim-tree').setup()
require('nvim-web-devicons').setup()
