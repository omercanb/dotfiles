-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <C-c> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<C-c>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>d', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>ya', '<cmd>%y<CR>', { desc = 'Yank entire buffer' })

vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Go to explorer' })
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = 'Quit vim' })

-- vim.keymap.set('i', '<C-N>', '<C-x><C-o>', { desc = 'Omnicomplete to Control N', noremap = true, silent = true })
