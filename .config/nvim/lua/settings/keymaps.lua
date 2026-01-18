local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- [[ Basic Keymaps ]]
vim.g.mapleader = " "
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Move up (including wrapped lines)" })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Move down (including wrapped lines)" })

keymap('n', '<leader>/', ':noh<CR>', { desc = "Clear search highlight" })
keymap('n', '<leader>w', ':w<CR>', { desc = "Save file" })
keymap('n', '<leader>q', ':bd<CR>', { desc = "Close buffer (Quit)" })
keymap('i', 'jk', '<ESC>', { desc = "Exit insert mode" })
keymap({'v', 'c'}, '<leader>[', '<ESC>', { desc = "Exit mode" })

keymap('n', '<leader><CR>', ':so %<CR>', { desc = "Source current file" })
keymap('n', '<leader>ev', ':vsplit ~/.config/nvim/lua/settings/keymaps.lua<CR>', { desc = "Edit keymaps" })
keymap('n', '<leader>tt', function() require("trouble").toggle("workspace_diagnostics") end, { desc = "Toggle Trouble diagnostics" })

keymap('n', '<leader>y', '"+y', { desc = "Yank to system clipboard" })
keymap('n', '<C-h>', '<C-w>h', { desc = "Go to left window" })
keymap('n', '<C-j>', '<C-w>j', { desc = "Go to bottom window" })
keymap('n', '<C-k>', '<C-w>k', { desc = "Go to top window" })
keymap('n', '<C-l>', '<C-w>l', { desc = "Go to right window" })
keymap('n', '<C-r>', '<C-w>R', { desc = "Rotate windows" })

keymap('n', '<leader>v', ':vsplit | lua vim.lsp.buf.definition()<CR>', { desc = 'Go to definition in [v]ertical split' })

keymap('n', '<leader>j', 'ddp', { desc = "Move line down" })
keymap('n', '<leader>k', 'ddkP', { desc = "Move line up" })

keymap('n', '<leader>n', ':bnext<CR>', { desc = "Next buffer" })
keymap('n', '<leader>h', ':bprevious<CR>', { desc = "Previous buffer" })
keymap('n', '<leader>o', ':copen<CR>', { desc = "Open Quickfix list" })
keymap('n', '<leader>cc', ':ccl<CR>', { desc = "Close Quickfix list" })

keymap('v', '<', '<gv', { desc = "Indent left and re-select" })
keymap('v', '>', '>gv', { desc = "Indent right and re-select" })

keymap('n', '<F5>', ':Compile make<CR>', { desc = "Compile using Makefile" })
keymap('n', '<F2>', ':lua vim.lsp.buf.rename()<CR>', { desc = "LSP Rename" })
keymap('n', '<leader>l', ':set list!<CR>', { desc = 'Toggle invisible characters (listchars)' })
