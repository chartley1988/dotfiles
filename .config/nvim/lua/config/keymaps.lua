-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center cursor after moving down half-page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center cursor after moving up half-page" })
vim.api.nvim_set_keymap("n", "<space>d", ":Telescope file_browser<CR>", { noremap = true })

-- Set window switch keys for tmux
vim.keymap.set("n", "<C-h>", vim.cmd.TmuxNavigateLeft, { noremap = true, desc = "Window to the left" })
vim.keymap.set("n", "<C-l>", vim.cmd.TmuxNavigateRight, { noremap = true, desc = "Window to the right" })
vim.keymap.set("n", "<C-k>", vim.cmd.TmuxNavigateUp, { noremap = true, desc = "Window to the up" })
vim.keymap.set("n", "<C-j>", vim.cmd.TmuxNavigateDown, { noremap = true, desc = "Window to the down" })
