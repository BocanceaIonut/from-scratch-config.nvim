local keymap = vim.keymap

vim.g.mapleader = ','
vim.g.maplocalleader = ','

vim.o.number = true

-- sync clipboard with nvim
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- keymaps
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- keymaps NvimTree
keymap.set('n', '<leader>nn', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
keymap.set('n', '<leader>nf', '<cmd>NvimTreeFindFile<CR>', { desc = 'Find file NvimTree' })
--

-- terminal
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'exit terminal mode' })
--

-- buffers
keymap.set('n', '<leader>,', '<cmd>b#<CR>', { desc = 'switch buffers' })
--

-- telescope
keymap.set('n', '<leader>t', '<cmd>Telescope find_files<CR>', { desc = 'Telescope find files' })
keymap.set('n', '<leader>b', '<cmd>Telescope buffers<CR>', { desc = 'Telescope find buffers' })
--

keymap.set('n', '<leader>s', '<cmd>w<CR>', { desc = 'save current file' })
keymap.set('n', '<leader>sa', '<cmd>wa<CR>', { desc = 'save all files' })

keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = 'quit shortcut' })

keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
---------

-- lsp
-- vim.lsp.config['lua_ls'] = {
--   -- Command and arguments to start the server.
--   cmd = { 'lua-language-server' },
--   -- Filetypes to automatically attach to.
--   filetypes = { 'lua' },
--   -- Sets the "workspace" to the directory where any of these files is found.
--   -- Files that share a root directory will reuse the LSP server connection.
--   -- Nested lists indicate equal priority, see |vim.lsp.Config|.
--   root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
--   -- Specific settings to send to the server. The schema is server-defined.
--   -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
--   settings = {
--     Lua = {
--       runtime = {
--         version = 'LuaJIT',
--       }
--     }
--   }
-- }

-- vim.lsp.enable('lua_ls')
----

vim.pack.add({
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-tree.lua.git'},
    { src = 'https://github.com/nvim-tree/nvim-web-devicons.git'},
    { src = 'https://github.com/tpope/vim-fugitive.git'},
    { src = 'https://github.com/nvim-telescope/telescope.nvim.git'},
    { src = 'https://github.com/lewis6991/gitsigns.nvim.git'},
    { src = 'https://github.com/nvim-lualine/lualine.nvim.git'},
})

require('nvim-tree').setup()
require('lualine').setup({
	options = {
		icons_enabled = false,
	}
})
