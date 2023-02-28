-- General and builtins configs

require("armincerf.options")

-- Plugin related configs
require("armincerf.plugins")

-- Commands
require("armincerf.commands")

-- Keymaps
require("armincerf.keymaps")

require("armincerf.lsp")


if vim.g.neovide then
  vim.g.neovide_cursor_trail_size = 0
  vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('', '<D-s>', ':update<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('!', '<D-s>', ':update<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('t', '<D-s>', ':update<CR>', { noremap = true, silent = true })
end
